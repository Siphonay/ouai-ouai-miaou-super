# ouai-ouai-miaou-super

Une variante du brainfuck basée sur une private joke dans un serveur discord

## référence

C’est comme brainfuck mais les tokens sont remplacés de cette manière :

| ouai-ouai-miaou-super | brainfuck | Description                                         |
|-----------------------|-----------|-----------------------------------------------------|
| super                 | >         | Move the pointer to the right                       |
| super!                | <         | Move the pointer to the left                        |
| ouai                  | +         | Increment the memory cell at the pointer            |
| ouai,                 | -         | Decrement the memory cell at the pointer            |
| ouai!                 | .         | Output the character signified by the cell at the pointer |
| miaou!                | ,         | Input a character and store it in the cell at the pointer |
| miaou                 | [         | Jump past the matching ] if the cell at the pointer is 0 |
| miaou,                | ]         | Jump back to the matching [ if the cell at the pointer is nonzero |

Les tokens autres que ceux listés au dessus sont ignorés donc tu peux les utiliser comme commentaires si tu veux mais évite juste d’utiliser les mots "ouai", "miaou" et "super" ou alors mets les en majuscule si t’en as vraiment besoin jsp
Référence pour les tokens : [esolangs.org](https://esolangs.org/wiki/Brainfuck)

## utilisation

`usage: ouai-ouai-miaou-super [-e expression] [file path]`
Si tu utilises des fichiers je recommande de leur donner l’extension `.ouai` c’est pas obligé du tout c’est juste marrant je trouve

## compilation

Te prends pas la tête faut juste installer [Zig](https://ziglang.org/) (version 0.11.0 minimum), tu clones ce dépot avec `git clone https://github.com/Siphonay/ouai-ouai-miaou-super --recursive` et tu fais `zig build` c’est pas compliqué

## exemples

### hello world
Adapté de l’un des exemples sur [esolangs.org](https://esolangs.org/wiki/Brainfuck)
```
ouai ouai ouai ouai ouai ouai ouai ouai miaou super ouai ouai ouai ouai ouai ouai ouai ouai super! ouai, miaou, super ouai ouai ouai ouai ouai ouai ouai ouai ouai! super ouai ouai ouai ouai ouai ouai ouai ouai miaou super ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai super! ouai, miaou, super ouai ouai ouai ouai ouai ouai! ouai ouai ouai ouai ouai ouai ouai ouai! ouai! ouai ouai ouai ouai! super ouai ouai ouai ouai ouai ouai ouai ouai miaou super ouai ouai ouai ouai ouai super! ouai, miaou, super ouai ouai ouai ouai ouai! ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai! super! super! super! super! ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai! super super ouai! ouai ouai ouai ouai! ouai, ouai, ouai, ouai, ouai, ouai, ouai! ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai! super super ouai ouai! 
```
```
$ ouai-ouai-miaou-super helloworld.ouai
Hello World!
```

### taille des cellules de l’interpréteur
Adapté de l’un des exemples sur [esolangs.org](https://esolangs.org/wiki/Brainfuck)
```
ouai ouai ouai ouai ouai ouai ouai ouai miaou super ouai ouai ouai ouai ouai ouai ouai ouai super! ouai, miaou, super miaou super! ouai ouai ouai ouai super ouai, miaou, ouai super! miaou super ouai, super! miaou super ouai ouai ouai ouai super! ouai, miaou, super miaou super! ouai ouai ouai ouai ouai ouai ouai ouai super ouai, miaou, super! miaou super ouai ouai ouai ouai ouai ouai ouai ouai super! ouai, miaou, ouai super miaou super ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai miaou super ouai ouai ouai ouai ouai super! ouai, miaou, super ouai ouai! ouai, ouai! miaou ouai, miaou, super! super! miaou ouai, miaou, super! ouai, super miaou,  super! miaou super super ouai ouai ouai ouai ouai ouai ouai miaou super ouai ouai ouai ouai ouai ouai ouai super! ouai, miaou, super ouai! ouai ouai ouai ouai ouai ouai! miaou ouai, miaou, super! super! super! ouai, miaou, miaou,  super miaou super ouai ouai ouai ouai ouai ouai ouai ouai miaou super ouai ouai ouai ouai ouai ouai ouai super! ouai, miaou, super ouai! miaou ouai, miaou, super! super! ouai, miaou, super! ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai miaou super ouai ouai ouai super ouai ouai ouai ouai ouai ouai ouai ouai ouai super ouai ouai ouai ouai ouai ouai ouai ouai ouai super ouai super! super! super! super! ouai, miaou, super ouai, ouai! super ouai, ouai! ouai ouai ouai ouai ouai ouai ouai ouai! ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai! super! ouai! super super ouai! ouai ouai ouai! ouai ouai ouai ouai ouai ouai ouai ouai! ouai! super! ouai, ouai! super super ouai, miaou miaou ouai, miaou, super! miaou, 
```
```
$ ouai-ouai-miaou-super cellsize.ouai
32 bit cells
```

### ascii art de chat
Généré avec [dcode.fr](https://www.dcode.fr/brainfuck-language) (dsl flemme d’essayer d’écrire du brainfuck tout seul), art ASCII trouvé sur [ce site](https://www.asciiart.eu/animals/cats)
```
ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai miaou super ouai super ouai ouai ouai super ouai ouai ouai ouai ouai ouai ouai super ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai super! super! super! super! ouai, miaou, super super ouai ouai ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! super super ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai! super! super! ouai! super ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai! super! super! ouai! super ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! super super ouai! super! super! ouai! super super ouai! super! super! super! ouai! super ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! super super ouai! super! super! ouai! super super ouai! super! super! super! ouai! super ouai! ouai! super super ouai! super! ouai! super! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! super super ouai! super! super! ouai! super super ouai! super! super! super! ouai! super ouai! ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai! ouai, ouai, ouai, ouai! ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai! super super ouai ouai ouai! super! ouai! super! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai! ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai! ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai! super! ouai! super super ouai, ouai, ouai, ouai, ouai! super! ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai! ouai! ouai! ouai! ouai! super ouai ouai ouai ouai ouai ouai ouai ouai ouai! super! ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai! ouai ouai! ouai! ouai! ouai! ouai! ouai, ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai ouai! ouai ouai! ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai! ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai! super! ouai! super ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai! super super ouai! super! super! ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai! ouai ouai! ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai! super super ouai! super! super! ouai! ouai! super super ouai! super! super! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! super super ouai, ouai, ouai! super! super! super! ouai! super ouai! ouai! ouai! ouai! super ouai, ouai, ouai, ouai, ouai! super! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai! ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai! ouai! ouai! ouai! super super ouai! super! super! super! ouai! super ouai! ouai! ouai! ouai! ouai! super ouai! super! ouai! ouai! ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai! super ouai ouai ouai ouai! super! ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai! ouai! ouai! ouai! ouai! super ouai! ouai! ouai! ouai, ouai, ouai, ouai! super! ouai! ouai! ouai! ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai! super! ouai! super ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai! ouai! ouai! ouai! ouai! super super ouai! super! super! ouai! ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai! super ouai! super! ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai! super super ouai ouai ouai! ouai! ouai! ouai! ouai! super! super! ouai! ouai! ouai! super ouai! super! ouai! super super ouai, ouai, ouai! super! super! super! ouai! super ouai! ouai! ouai! ouai! ouai! super super ouai! super! super! ouai! super super ouai! super! super! ouai! super ouai! super! ouai! ouai! ouai! ouai! ouai! ouai! ouai! ouai! super super ouai! ouai! super! super! ouai! super super ouai! super! super! super! ouai! super ouai! ouai! ouai! ouai! ouai! super super ouai! super! super! ouai! super super ouai! super! ouai! super! ouai! super ouai! super! ouai! ouai! ouai! ouai! ouai! ouai! ouai! super super ouai! ouai! super! super! ouai! ouai ouai ouai ouai ouai ouai ouai ouai ouai ouai! super! ouai! super ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai! ouai! ouai! ouai! ouai ouai ouai ouai ouai ouai ouai ouai ouai! super ouai ouai ouai ouai! super! ouai ouai ouai ouai ouai ouai ouai ouai! ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai! ouai ouai ouai ouai ouai ouai ouai ouai ouai! super ouai! super! ouai ouai ouai ouai ouai ouai ouai ouai! ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai! ouai! ouai! ouai! ouai! ouai! ouai ouai ouai ouai ouai ouai ouai ouai ouai! ouai! super ouai! super! ouai ouai ouai ouai ouai ouai ouai ouai! super! ouai! super super super ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai! ouai ouai ouai ouai ouai ouai ouai! super! ouai ouai ouai! ouai ouai ouai ouai ouai ouai ouai ouai ouai! super! ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai! super ouai ouai ouai ouai ouai ouai ouai! super ouai! super! ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai! ouai ouai ouai ouai ouai ouai ouai ouai ouai! super! ouai! super ouai ouai ouai ouai ouai! ouai, ouai, ouai, ouai, ouai! ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai, ouai! super ouai, ouai, ouai, ouai, ouai, ouai, ouai! ouai ouai ouai ouai ouai ouai ouai! super! super! ouai! super super ouai, ouai, ouai! ouai ouai ouai! ouai, ouai, ouai, ouai, ouai, ouai! super! ouai ouai ouai ouai ouai! super ouai ouai ouai! 
```
```
$ ouai-ouai-miaou-super miaou.ouai
                       | \
                       | |
                       | |
  |\                   | |
 /, ~\                / /
X     `-.....-------./ /
 ~-. ~  ~              |
    \             /    |
     \  /_     ___\   /
     | /\ ~~~~~   \ |
     | | \        || |
     | |\ \       || )
    (_/ (_/      ((_/
ouai ouai miaou super
```

## attribution

Je me suis pas embêté à refaire un interpréteur brainfuck moi-même lol j’ai juste réutilisé le premier que j’ai trouvé par [Dante Catalfamo](https://github.com/dantecatalfamo/brainfuck-zig) parce qu’il est facilement intégrable. Je l’ai [forké](https://github.com/Siphonay/brainfuck-zig) pour le rendre compatible avec Zig 0.11.0

Le concept est identique à [Ook!](https://esolangs.org/wiki/Ook!)

## traducteur brainfuck -> ouai ouai miaou super

J’en ferai peut-être un plus tard si j’ai pas la flemme

## licence

J’ai mis la Unlicense par habitude. Voir le fichier LICENSE