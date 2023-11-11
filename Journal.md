# Journal de Zhongjie
## le 20/09/2023 Séance 1

Aujourd'hui nous avons fait le premier cours. En tant que quelqu'un qui n'a jamais fait l'informatique, j'ai pu avoir l'occasion de découvrir la plateforme GitHub et j'ai également réussi à créer mon propre compte au dessus. En général, GitHub est un service web dédié au stockage des dépôts Git sur lequel les programmeurs peuvent traviller et collaborer sur le Git. Concernant le Git, il s'agit d'un programme créé par Linus Torvald qui permet les dévéloppeurs de créer, éditer, modifier, enregistrer et suivre les codes de source afin de revenir éventuellement dans des versions d'ancien.

Dans la première séance, nous avons abordé la notion du corpus, une notion clé qui revient très souvent dans d'autres matières. Cependant, nous nous sommes pour l'instant concentré plutôt sur la philosophie de l'"Unix". Premièrement, tout est fichier au point de vue de l'unix, que ce soit les programmes, les périphériques, le réseau, etc. Ensuite, il est possible de manipuler l'ordinateur à travers des lignes de commande entré dans l'unix. Pour ceci, nous avons vu et essayé d'entraîner avec plusieurs commandes courantes. En outre, j'ai réussi à maîtriser les chemins des données, qui partent tous de la même racine (normalement, c'est "home" de l'ordinateur) et se dispersent comme les branches d'arbre. 

Il me semble que ce cours est bel et bien intéressant mais qui me pose aussi du challenge comme j'ai toujours beaucoup de notions informatiques à rattraper.

## le 27/09/2023 Séance 2

Dans la deuxième séance, nous avons d'abord revu des commandes courantes telles que "pwd", "ls", "cd", etc. De plus, on nous a intruoduit des commandes qui visent le traitement des fichiers textes comme "cat" qui affiche les textes, "head" qui lit le début d'un texte, "tail" la fin et "less" qui permet non seulement de visualiser le texte mais également de le modifier dans le shell.

Ensuite, nous avons repris le Git et le GitHub. Cette fois-ci, le sujet est la clé sécurité, un outil que l'on utilise pour chiffrer nos données mis sur la plateforme GitHub. En général, la clé sécurité est composée de deux clés, l'une privée et l'autre publique. La création de la clé est simple, ce qui est un peu compliqué est d'actvier l'agent SSH et d'y enregistrer la clé. Une fois que l'on réussit l'enregistrement, nous pouvons faire afficher la clé publique. De cette manière, le contenu de notre plateforme GitHub est désormais possible d'être vu par autrui.

Sachant que GitHub est une platforme en ligne dédiée au stockage des données Git créées depuis le PC de chaque dévéloppeur, il existe des moyens pour faciliter l'échange entre la plateforme et les fichiers locaux. Nous pouvons utiliser des commandes dans le shell qui commencent par "git" telles que "git add", "git status", "git commit", "git pull", "git push", etc.


## le 04/10/2023 Séance 3

Il existe des moyens pour corriger des erreurs faites dans les fichiers "git", que ce soit des fichiers mis en transit, "commit" ou encore déjà poussés sur GitHub. Pour les commits non poussés, il est possible de défaire les modifications grâce à la commande "git reset". En fonction des besoins, "git reset" propose trois options différentes. La première est "git reset" tout seul, qui vise à revenir à la dernière version du dépôt et annule la mise-en-place, autrement dit, tous les "adds". La deuxième est une version plus souple, "git reset -soft". Tout comme "git reset", "git reset -soft" revient également à la version d'avant mais elle n'annule pas les "adds". Cette commande peut éviter de rajouter tous les adds. Ces deux "reset" partagent un autre point commun : elles gardent toutes les modifications réalisées dans les fichiers cibles. La troisième option est la plus radicale, "git reset -hard". Cela revient à la version du dernier commit, annule toute la mise en place et efface toutes les modifications faites aux fichiers. 

Pour l'instant, nous traitons uniquement le commit sur lequel nous sommes en train de travailler. Pour cela, il nous suffit juste de coller l'argument "HEAD" dans les commandes "reset". Si l'on souhaite cibler des commits un peu plus anciens, il faut alors solliciter à "git reset HEAD^[N]" (N représente le N-ième parent du commit).

Ci-dessus évoque les cas où l'on n'a pas encore effectué le "push". Une fois que l'on pousse les commits, il est toujours possible de les annuler et les modifier. La commande correspondante est "git revert <commit>".

À part les annulations de modifications, il faut bien faire attention de ne pas commiter à la fois en ligne et au local sinon il y aura des conflits et des erreurs. Dans ce cas, il faut utiliser la commande "git diff" pour voir les différences entre deux commits.

## le 11/10/2023 Séance 4
Pendant cette séance, on a revu "git reset HEAD" et "git revert <"code SHA">". Maintenant, j'ai très bien maîtrisé ces deux commandes. En général, "git revert <"code SHA">" sert à créer un nouveau commit qui ne contient pas le commit du <"code SHA"> que l'on fournit. Par la suite, on peut décider si on fait le "push" ou pas pour synchroniser les fichiers locaux avec le dépôt sur GitHub. De l'autre côté, "git reset HEAD" sert à revenir dans N commits d'avant du HEAD.

Ensuite, on a introduit la « Pipeline".
"<" signifie la redirection du contenu d’un fichier 
">" signifie la redirection d’une sortie standard dans un fichier >>, 
2>> et &>> signifie la sortie sans supprimer le contenu du fichier cible
2> signifie la sortie d’erreur dans un fichier
&> signifie la sortie standard et d’erreur dans un fichier

Le script est également très important dans le domaine de "Pipeline". Un script permet de conserver des codes dans un fichier ".sh" et pour réutiliser éventuellement sur plusieurs PC.
Pour rendre un script valable, il faut d'abord taper "chmod +x /chemin/fichier.sh" dans le terminal, puis taper "./fichier.sh" afin de l’exécuter.

Quant à la variable dans un script du type ".sh", on fait l'affectation ainsi : "nom_variable=valeur_à_définir". Une fois que l'on affecte une variable, on peut la réutiliser en préfixant un "$" : $nom_variable. 

Enfin, concernant la valeur, elle est présentée entre double guillemets si c’est une chaîne de caractères, sinon sans guillemets.

## le 18/10/2023 Séance 5
Instructions conditionnelles
if
Syntaxe : 
if [ condition ]
then
	echo “la condition est valide”
else	
	echo “la condition n’est pas valdie”
fi 
⚠️fi 对完整性很重要，意思是条件结束，

Conditions sur les chemins
-f 
Vrai si le fichier existe
-d 
Vrai si le dossier existe
-s
Vrai si le fichier existe n’est pas vide


Conditions sur les chaînes de caractères
= ou !=
Tester si deux chaînes sont identiques ou pas
< ou >
Comparer les valeurs de deux chaînes en ASCII
-n chaîne
Vrai si la chaîne n’est pas vide
-z chaîne
Vrai si la chaîne est vide


Conditions sur les entiers
a -eq b
Vrai si a == b
a -ne b
Vrai si a != b
a -lt b
Vrai si a < b
a -gt b
Vrai si a > b
a -le b
Vrai si a <= b
a -ge b
Vrai si a >= b

Conditions avec l’expression régulière
Syntaxe : 
	if [[ $1 =~ bon(jour|soir) ]]
	then 
		echo “Salut”
	fi

Boucle
Les boucles for
Syntaxe : 
N = 0
for ELEMENT in a b c d e
do
	N = $(expr $N + 1) # 这里expr的作用是计算（加减乘除）
	echo “le $N ieme élément est $ELEMENT”
done
on utilise souvent une commande FOR pour générer la liste d’éléments
for item in element1 element2 element3
do
    echo "Élément : $item"
done

Les boucles WHILE
Syntaxe : 
while [ condition ];
do
	echo “Je continue à boucler”;
done
Les conditions sont similaires à celles des IF
La commande read est souvent utilisée avec WHILE (tant qu’il y a qq chose à lire, on le traite ainsi…)
⚠️ Éviter les boucles infinies (en cas de besoin, use CTRL-C pour arrêter le programme)

Commande read
read -r LINE
	read -r LINE est utilisé pour lire une ligne à la fois et stocker chaque ligne comme valeur dans la variable “LINE”
	-r est utilisée pour que read traite les lignes telles quelles, sans interpréter les caractères d'échappement.
echo “ Enter your name : ”
read name
Dans cet exemple, la commande echo affiche un message demandant à l'utilisateur d'entrer son nom. Ensuite, la commande read attend que l'utilisateur entre une ligne de texte, appuyez sur la touche "Entrée" pour valider. La ligne de texte entrée est ensuite stockée dans la variable nom.

Codes HTTP
1xx
informations
200
réussite
3xx
redirections
4xx
Erreur du client (404 : erreur de la machine locale)
5xx
Erreur du serveur (503 : service momentanément indisponible)
Pour navigateurs : Ces codes sont utilisés pour savoir quoi faire
Pour nous : On utilisera ces codes pour (in)valider les requêtes dans les fichiers d’URL.

Lynx
Navigateur web en terminal 
Affichage dépouillé不加修饰的
Il y a que le texte, sans rien de plus
Naviguer avec flèche montante et baissant
Entrer dans des liens avec la flèche droite
Options
-dump
Récupérer le contenu textuel d’une page pour l’afficher (sans navigation)
Déverser le contenu textuel de la page sur une sortie standard
-nolist -dump
消掉contenu textuel déversé里的链接 (disable the link list feature in dumps)

Commandes
1. wget
But : télécharger le contenu textuel ou un fichier d’Internet sans passer par navigateur dans votre PC sous forme d’un nouveau fichier
Syntaxe : 
wget <URL>
Autres utilités
Rename un fichier téléchargé with “ -O ” option: 
wget -O myfilename.txt <URL>

2. curl
But : same as wget, but contents downloaded and printed in Terminal
Syntaxe : 
curl <URL>
Options
-O : garder le même nom du fichier que celui sur Internet
-o : rename (curl -o name.txt <URL>) ⚠️curl里是小写o，wget里是大写O
-L : suivre les redirections
-i : it not only retrieves the content from the URL but also includes the HTTP response headers (y compirs les codes HTTP…) in the output. This is useful for inspecting the response headers sent by the server

## Séance 6
Dans cette séance, on a appris comment écrire un script destiné à extraire les informations des URLs comme le type d'encodage et le code HTTP. Nous avons également appris à les afficher dans l'ordre par tabulation.

À part ce qu'on a vu déjà dans la semaine dernière, j'ai appris quelques nouvelles options de "curl" :
	option "-s" signifie le mode silencieux, ce qui n'envoie pas de message d'erreur lorsqu'il y en a ;
	option "-I" n'affiche que les en-tête de l'URL au lieu de son contenu textuel.
Puis, j'ai appris à utiliser des pipelines, en combinant "curl", "egrep" et "sed" à extraire précisément des informations que je veux afficher.

## Séance 7
Revenat au miniprojet, je n'avais pas adopté une manière simple à afficher les codes HTTP et les codes charset. En réalité, pour les codes HTTP, à part l'option -s et -I, il est possible d'utiliser deux autres options supplémentaires qui sont -w et -o. Voci la ligne de commande : curl -s -I -w "%{http_code}" -o /dev/null https://fr.wikipedia.org/wiki/Robot. -w "%{http_code}" permet de n'extraire que le {http_code} de l'en-tête (-I) comme une sortie de non stdout. Pourtant, tout l'en-tête est toujours sortie dans stdout, donc il faut se servir de -o pour les "output" dans un fichier poubelle "/dev/null" où l'on peut mettre n'importe quoi dedans sans aucune répercussion. Une petite chose à noter est qu'en pratique, nous rencontrons souvent des codes de redirection 300. Afin de poursuivre la redirection, il est fortement conseillé d'ajouter l'option -L dans la commande curl en tenant compte que -L ne fait rien aux URLS non-redirigés. 

En suivant la logique pour obtenir les codes HTTP, il semble que nous pouvons refaire la même chose en vue d'avoir les codes charset. En réalité, nous allons partir du même principe mais il y a quand même quelques d'autres problèmes à traiter. Comme les codes charset dans l'en-tête sont affichés sous forme de : charset=UTF-8 (pour l'exemple de UTF-8), nous devons supprimer "charset=" et retenir que le code après "=". Afin de réaliser cette étape, nous pouvons employer la commande "grep" : 
grep -E -o "charset=\S+" (un non caractère d'espace) | cut -d"=" -f2 (la deuxième colonne) | tail -n 1 (la dernière ligne).

En faisant le miniprojet supplémentaire, j'ai également appris les commandes "tr", "paste" et "awk".
"tr" est un peu comme "sed", sert à remplacer ou supprimer des caractères dans un texte.
Quant à "paste", comme indiqué par le nom, elle fusionne des textes.
Enfin, "awk" est une commande complexe mais puissante. Elle peut repérer des phrases avec l'expression régulière et les traiter par la suite. 