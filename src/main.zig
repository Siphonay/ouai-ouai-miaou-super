const std = @import("std");
const allocator = std.heap.page_allocator;

const memory_size = 30_000;
const max_file_size = 1024 * 1024 * 1024;

const interpret = @import("brainfuck-zig/src/main.zig").interpret;

const OomsTokens = enum {
    MemCellIncr,
    MemCellDecr,
    Jump,
    JumpBack,
    PointerMoveRight,
    PointerMoveLeft,
    OutputCell,
    InputCell,
    InvalidToken,
};

pub fn main() !void {
    const args = try std.process.argsAlloc(allocator);
    defer std.process.argsFree(allocator, args);

    const stdin = std.io.getStdIn().reader();
    const stdout = std.io.getStdOut().writer();
    const stderr = std.io.getStdErr().writer();

    if (args.len != 2 and !(args.len == 3 and std.mem.eql(u8, args[1], "-e"))) {
        try stderr.print("usage: ouai-ouai-miaou-super [-e expression] [file path]\n", .{});
        std.os.exit(1);
    }

    var program_brainfuck = std.ArrayList(u8).init(std.heap.page_allocator);
    defer program_brainfuck.deinit();

    if (args.len == 3) {
        const program = args[2];
        try oomsToBf(program, &program_brainfuck);
        try interpret(program_brainfuck.items, stdin, stdout, stderr);
    } else if (args.len == 2) {
        const file_path = args[1];
        const program = std.fs.cwd().readFileAlloc(allocator, file_path, max_file_size) catch {
            try stderr.print("File not found: {s}\n", .{file_path});
            std.os.exit(1);
        };
        defer allocator.free(program);
        try oomsToBf(program, &program_brainfuck);
        try interpret(program_brainfuck.items, stdin, stdout, stderr);
    }
}

fn oomsToBf(program_string: []u8, program_brainfuck: *std.ArrayList(u8)) !void {
    var program_splits = std.mem.splitSequence(u8, program_string, " ");
    var ooms_tokens_map = std.StringHashMap(OomsTokens).init(std.heap.page_allocator);
    defer ooms_tokens_map.deinit();

    ooms_tokens_map.put("ouai", OomsTokens.MemCellIncr) catch unreachable;
    ooms_tokens_map.put("ouai,", OomsTokens.MemCellDecr) catch unreachable;
    ooms_tokens_map.put("miaou", OomsTokens.Jump) catch unreachable;
    ooms_tokens_map.put("miaou,", OomsTokens.JumpBack) catch unreachable;
    ooms_tokens_map.put("super", OomsTokens.PointerMoveRight) catch unreachable;
    ooms_tokens_map.put("super!", OomsTokens.PointerMoveLeft) catch unreachable;
    ooms_tokens_map.put("ouai!", OomsTokens.OutputCell) catch unreachable;
    ooms_tokens_map.put("miaou!", OomsTokens.InputCell) catch unreachable;

    while (program_splits.next()) |token| {
        const token_lookup = ooms_tokens_map.get(token) orelse OomsTokens.InvalidToken;

        try program_brainfuck.append(switch (token_lookup) {
            .MemCellIncr => '+',
            .MemCellDecr => '-',
            .Jump => '[',
            .JumpBack => ']',
            .PointerMoveRight => '>',
            .PointerMoveLeft => '<',
            .OutputCell => '.',
            .InputCell => ',',
            .InvalidToken => ' ',
        });
    }
}
