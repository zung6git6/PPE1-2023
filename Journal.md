# Journal de Zhongjie
## le 20/09/2023

Aujourd'hui nous avons fait le premier cours. En tant que quelqu'un qui n'a jamais fait l'informatique, j'ai pu avoir l'occasion de découvrir la plateforme GitHub et j'ai également réussi à créer mon propre compte au dessus. En général, GitHub est un service web dédié au stockage des dépôts Git sur lequel les programmeurs peuvent traviller et collaborer sur le Git. Concernant le Git, il s'agit d'un programme créé par Linus Torvald qui permet les dévéloppeurs de créer, éditer, modifier, enregistrer et suivre les codes de source afin de revenir éventuellement dans des versions d'ancien.

Dans la première séance, nous avons abordé la notion du corpus, une notion clé qui revient très souvent dans d'autres matières. Cependant, nous nous sommes pour l'instant concentré plutôt sur la philosophie de l'"Unix". Premièrement, tout est fichier au point de vue de l'unix, que ce soit les programmes, les périphériques, le réseau, etc. Ensuite, il est possible de manipuler l'ordinateur à travers des lignes de commande entré dans l'unix. Pour ceci, nous avons vu et essayé d'entraîner avec plusieurs commandes courantes. En outre, j'ai réussi à maîtriser les chemins des données, qui partent tous de la même racine (normalement, c'est "home" de l'ordinateur) et se dispersent comme les branches d'arbre. 

Il me semble que ce cours est bel et bien intéressant mais qui me pose aussi du challenge comme j'ai toujours beaucoup de notions informatiques à rattraper.

## le 27/09/2023

Dans la deuxième séance, nous avons d'abord revu des commandes courantes telles que "pwd", "ls", "cd", etc. De plus, on nous a intruoduit des commandes qui visent le traitement des fichiers textes comme "cat" qui affiche les textes, "head" qui lit le début d'un texte, "tail" la fin et "less" qui permet non seulement de visualiser le texte mais également de le modifier dans le shell.

Ensuite, nous avons repris le Git et le GitHub. Cette fois-ci, le sujet est la clé sécurité, un outil que l'on utilise pour chiffrer nos données mis sur la plateforme GitHub. En général, la clé sécurité est composée de deux clés, l'une privée et l'autre publique. La création de la clé est simple, ce qui est un peu compliqué est d'actvier l'agent SSH et d'y enregistrer la clé. Une fois que l'on réussit l'enregistrement, nous pouvons faire afficher la clé publique. De cette manière, le contenu de notre plateforme GitHub est désormais possible d'être vu par autrui.

Sachant que GitHub est une platforme en ligne dédiée au stockage des données Git créées depuis le PC de chaque dévéloppeur, il existe des moyens pour faciliter l'échange entre la plateforme et les fichiers locaux. Nous pouvons utiliser des commandes dans le shell qui commencent par "git" telles que "git add", "git status", "git commit", "git pull", "git push", etc.


## le 04/10/2023

Il existe des moyens pour corriger des erreurs faites dans les fichiers "git", que ce soit des fichiers mis en transit, "commit" ou encore déjà poussés sur GitHub. Pour les commits non poussés, il est possible de défaire les modifications grâce à la commande "git reset". En fonction des besoins, "git reset" propose trois options différentes. La première est "git reset" tout seul, qui vise à revenir à la dernière version du dépôt et annule la mise-en-place, autrement dit, tous les "adds". La deuxième est une version plus souple, "git reset -soft". Tout comme "git reset", "git reset -soft" revient également à la version d'avant mais elle n'annule pas les "adds". Cette commande peut éviter de rajouter tous les adds. Ces deux "reset" partagent un autre point commun : elles gardent toutes les modifications réalisées dans les fichiers cibles. La troisième option est la plus radicale, "git reset -hard". Cela revient à la version du dernier commit, annule toute la mise en place et efface toutes les modifications faites aux fichiers. 

Pour l'instant, nous traitons uniquement le commit sur lequel nous sommes en train de travailler. Pour cela, il nous suffit juste de coller l'argument "HEAD" dans les commandes "reset". Si l'on souhaite cibler des commits un peu plus anciens, il faut alors solliciter à "git reset HEAD^[N]" (N représente le N-ième parent du commit).

Ci-dessus évoque les cas où l'on n'a pas encore effectué le "push". Une fois que l'on pousse les commits, il est toujours possible de les annuler et les modifier. La commande correspondante est "git revert <commit>".

À part les annulations de modifications, il faut bien faire attention de ne pas commiter à la fois en ligne et au local sinon il y aura des conflits et des erreurs. Dans ce cas, il faut utiliser la commande "git diff" pour voir les différences entre deux commits.


## le 11/10/2023 séance 4

Pendant cette séance, on a revu "git reset HEAD~NUM" et "git revert <code SHA>". Maintenant, j'ai très bien maîtrisé ces deux commandes. En général, "git revert <code SHA>" sert à créer un nouveau commit qui ne contient pas le commit du <code SHA> que l'on fournit. Par la suite, on peut décider si on fait le "push" ou pas pour synchroniser les fichiers locaux avec le dépôt sur GitHub. De l'autre côté, "git reset HEAD~NUM" sert à revenir dans NUM commits d'avant du HEAD.

Ensuite, on a introduit la "Pipeline".
< signifie la redirection du contenu d’un fichier
> signifie la redirection d’une sortie standarde dans un fichier
>>, 2>> et &>> signifie la sortie sans supprimer le contenu du fichier cible 
2> signifie la sortie d’erreur dans un fichier
&> signifie la sortie standard et d’erreur dans un fichier

Le script est également très important dans le domaine de "Pipeline". Un script permet de conserver des codes dans un fichier ".sh" et pour réutiliser éventuellement sur plusieurs PC.
Pour rendre un script valable, il faut d'abord taper "chmod +x /chemin/fichier.sh" dans le terminal, puis taper "./fichier.sh" afin de l'exécuter.
Quant à la varibale dans un script du type ".sh", on fait l'affectation ainsi : "nom_variable=valeur_à_définir". Une fois que l'on affecte une variable, on peut la réutiliser en préfixant un "$" : $nom_variable. Enfin, concernant la valeur, elle est présentée entre double guillemets si c’est une chaîne de caractères, sinon sans guillemets.