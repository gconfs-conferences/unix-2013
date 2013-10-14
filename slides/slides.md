# Un peu d'histoire

## Années 70

- 1969 : Ken Thompson, Dennis Ritchie et Rob Pike commencent à travailler sur UNICS
- 1973 : UNIX est réécrit en C
- 1975 : Les Laboratoires Bell se décident à distribuer UNIX à
  l'extérieur.
- 1977 : Bill Joy travaille sur la première version de BSD : 1BSD

## 1983

- Richard Stallman annonce son intention de développer un système d'exploitation libre
      appelé GNU (GNU's not UNIX)
- AT&T annonce la sortie de System V, première version véritablement propriétaire
      d'UNIX


## 1988

- Apparition du standard POSIX (Portable Operating System Interface
      for uniX)
    - Standardisation des différents systèmes basés sur UNIX.
	- POSIX garantit la présence de signaux permettant la
          gestion de processus (ex : SIGSEGV, SIGINT, SIGTERM, SIGKILL, etc...)
	- ... mais aussi la présence de certains logiciels
			quelque soit l'OS sur lequel ils sont utilisés
          (ex : vi, ls, sh etc)

## 1991

- Naissance du Noyau Linux
	- Annonce sur comp.os.minix (Usenet) par Linus Torvalds
	- Première release quelques mois plus tard
	- Engouement pour le projet dès la première release

## Précisions

- Il existe deux types de systèmes UNIX :
    - UNIX compliant
    - UNIX-like

- Linux != OS

# Un peu beaucoup de technique...

## Le théorème de la mangue

- Un noyau + un userspace = un OS
- GNU/Linux ou Linux?

## Un noyau, des pépins

- Le lien entre le hardware et le software
- Différents types de noyau :
	- kernel monolithique (Linux, Unix...)
	- microkernel (Minix, GNU Hurd)
	- kernel hybride (Apple XNU)

## l'userSPAAAAAAAAACE

- Base d'un système
- Standardisé (Posix, SUS)
- La partie du système avec laquelle on interagit le plus

## J'ai le droit, j'ai pas le droit...

- Unix et les permissions, une histoire.. complexe
	- Le root
- Système de permissions intégré au système
- ACL, SELinux, ..?

## got root ?

- Qui est root ?
    - Le premier utilisateur sur un système d'exploitation
    - Il a **tous** les droits :
        - Il est donc préférable de ne se connecter en root que pour
          effectuer des opérations de maintenance (ou pas)
        - "With great power comes great responsibility"
        - `chmod -R 777 /`

## sudo

- `sudo` (superuser do) est un projet originaire d'OpenBSD
- Améliore la sécurité du système : pas besoin d'utiliser le root
- Simplifie l'administration du système

##
\begin{center}\includegraphics[scale=0.5]{ressources/sandwich}\end{center}

## chmod et chgrp sont dans un :bateau...

- Du calcul mental!?
- user, group, others, all
- read(4), write(2), execute(1)
- maintenant, un peu de calcul...

## De l'aspirix?

700 -> u+rwx,g-rwx,o-rwx  
755 -> u+rwx,g+rx,o+rx  
644 -> u+rw,g+r,o+r  
...

## Les Access Control List

- Controle des permissions en fonctions de rôles
- Spécification UNIX
- Très peu utilisées même sur des systèmes sécurisés


## SELinux

- Permissions bien plus fines (liées a des rôles et a des attributs de fichiers)
- Peu utilisée dans une utilisation "normale"
- Prévue pour les systèmes sécurisés

## C:\\NOPE

- Le système de fichier d'UNIX est complet : pas de
	`C:\Documents%20and%20Settings\` ici
- Des points de montage pour tout
- *Tout* est fichier

## ls -l /

- La racine `/` contient tous les systèmes de fichiers
- `mount` est la commande magique
- `/dev` contient les fichiers spéciaux

## Config de canard <!-- Oui, j'ai faim en faisant ces slides... -->

- La configuration système se fait dans `/etc`
- Un type de fichier "standard" : `conf` (basé sur du shell)
- "Un standard respecté n'est pas un standard, c'est une facilité" 

##
\begin{center}\includegraphics[scale=0.5]{ressources/standards}\end{center}

## Apprendre a lacer ses boots

- Le boot se passe en plusieurs étapes :
	- Le BIOS (hors d'UNIX)
	- Le bootloader (hors d'Unix)
	- Le kernel (au coeur d'Unix)
	- L'initramfs (optionnel, dans Unix)
	- `init` (dans Unix)
	- système booté (donc oui, c'est dans Unix...)

## Les chaussures a scratch, ça existe aussi

- `init` est le système de boot standard sous UNIX
- Cependant, d'autres système existent :
	- `rc` (principalement BSD)
	- `upstart` (principalement ubuntu)
	- `systemd` (uniquement linux, mais pas tous)
- De grosses différences existent entre ces systèmes de boot...
- ... Mais on ne va pas les expliquer ici

## Les modes de fonctionnement

- Unix a plusieurs `runlevels`
	- Controlent l'activation ou non des différentes fonctionnalités
	- De fonctionalités **kernel**
- On ne peut changer de runlevel qu'en tant que root
- Certains runlevels peuvent être dangereux pour le système

## Le root sur le rack

- Le runlevel 1 est dit "Single User", parce que seul root peut se logguer
- En fait, il est loggué d'office
- Pour passer en runlevel 1 sur les racks:
	- Au prompt grub [FreeBSD, Windows, FreeBSD exam]
		- taper `e` pour **e**diter la ligne de boot
		- trouver la ligne commençant par `kernel`
		- ajouter `-s` a la fin de celle-ci
		- C-x
	- Laisser le boot continuer, puis taper return quand on demande un shell
	- `passwd`, `[votre mot de passe]`, `[votre mot de passe]`
- Profit!

## T'aurais pas une clope?

- La gestion des logiciels sous Unix ne se fait pas comme sous Windows
- La compilation directement depuis le code? Pas vraiment...
	- Trop long (nécessite de récupérer le code, de l'installer a la main...)
	- Trop complexe
	- Trop couteux en ressources
- La plupart des systèmes Unix modernes ont un package manager

## Le tabagiste

- Un package manager permet d'installer facilement des logiciels
- Ils sont conçus pour la ligne de commande, mais ont souvent une GUI
- Dépendent de la distribution

## Ça y est, c'est fini la technique?

- La technique, c'est fini... et non
- Unix se découvre en étant utilisé, bien plus qu'en étant décrit
- Bon courage!

# Une philosophie...

## Une philosophie, pour un Système d'exploitation!?

- On parle pas de platon, mais de concepts de design
- Tous les systèmes sont conçus comme ça, en écrivant avant de coder
- Unix a une philosophie... assez spéciale

## 9 Tenets Majeurs

- Small is beautiful
- Make each program do one thing well
- Build a prototype as soon as possible
- Choose portability over efficiency
- Store data in flat text files

## 9 Tenets Majeurs

- Use software leverage to your advantage
- Use shell scripts to increase leverage and portability
- Avoid captive user interfaces
- Make every program a filter

## Et quelques tenets mineurs

- Unix est orienté utilisateurs avancés
	- Il prend comme acquis que ses utilisateurs savent ce qu'ils font
	- Les utilisateurs novices ne sont pas aidés, en aucun cas

- Unix est orienté texte


# Bien choisir sa distribution

## "Distributions"?...

- Wtf is a distribution ?
    - Une distribution est un système d'exploitation basé sur GNU/Linux
    - Le terme désigne l'écosystème qui entoure l'OS :
		- le gestionnaire de paquet
		- les outils spécifiques a la distribution
		- les différences avec les standards
		- etc....

## Choisir sa distribution

- Choisir sa distribution est primordial
    - Un utilisateur n'aura pas la même experience suivant la
      distribution :
		- les procédés d'installation, de mise a jour, de gestion,... diffèrent
		- l'état du système après une installation basique diffère
		- la "cible" des distributions est différente

- On peut distinguer trois types de distributions :
    - User friendly
    - Stable
    - Avancée

# Quelques exemples de distributions

## Ubuntu (User Friendly)

- Basée sur Debian
- Possède un écosystème riche développé par Canonical
- Très populaire pour sa simplicité de prise en main

## Linux Mint (User Friendly)

- Basée sur Ubuntu
    - Il existe aussi une version basée sur Debian Testing (LMDE)
- Possède ses propres dépôts mais les utilisateurs ont aussi accès
      aux dépôts Ubuntu (Debian dans le cas de LMDE)
- Intègre de base des logiciels propriétaires (ex : flash player)

## elementary OS (User Friendly)

- Basée sur Ubuntu
- Possède ses propres dépôts
- Interface simpliste (avec quelques ressemblances à OS X)
- Intègre de base des logiciels et drivers propriétaires (comme Mint)

## Manjaro Linux (User Friendly)

- Basée sur Arch Linux
- Est en rolling release
- Beaucoup plus user friendly qu'Arch (de l'installation à
  l'utilisation)
- Dépôts :
    - Propres à Manjaro
    - Arch Linux (avec un peu de retard)
    - AUR

## Fedora (User Friendly)

- Maintenue par une communauté très active
- Distribution assez ancienne, basée sur Red Hat
- Globalement simple d'utilisation
- Souvent assez en avance sur Ubuntu en terme de mises a jour

## OpenSUSE (User Friendly)

- Maintenue par la communauté
- Principale "concurrente" de Fedora
- Interface d'administration graphique YaST

## Debian (stable)

- **Très** stable
- Utilise `apt`/`dpkg` comme package manager
- Developpée par des bénévoles issus de la communauté Debian
- Contrat Social Debian, très important pour le projet
- Paquets plutôt vieux par rapport aux autres distributions

## Slackware (stable)

- Très stable, utilisée en entreprises et en production
- Paquets vieux par rapport aux autres distributions
- Le gestionnaire de paquets ne gère pas les dépendances
	- Du coup, assez complexe a gerer et a installer

## RHEL (stable)

- Maintenue par Red Hat
- Utilise `yum`/`rpm` (Red Hat Package Manager) 
- Distribution commerciale
- Paquêts un peu moins vieux que Debian
- Utilise systemd
- Base de Fedora

## SUSE entreprise (stable)

- Orientée business (comme RHEL)
- Utilise `zypper` (basé sur `rpm`) comme package manager
- Ressemble beaucoup a RHEL, mais est plus orientée workstations que serveurs
- Il existe une version gratuite et communautaire : OpenSUSE

## Arch Linux (Advanced Users)

- Est en rolling release
- Utilise `pacman` comme package manager
- Les outils sont intégrés peu de temps après leur release
        - Les utilisateurs peuvent alors subir plus de bugs, cela n'empêche pas
	  la mise à jour régulière de la distro
		- Utilise systemd
		- La documentation est régulièrement mise à jour (beginner's
          guide) et la
			communauté
			particulièrement réactive

## Gentoo (Advanced Users)

- Est en rolling release aussi
- Les outils sont integrés peu de temps après leur release
- Compilation depuis les sources (portage)
	- Plus de controle sur le système et les logiciels
        - Nécessite un materiel efficace (a ne pas installer tel quel sur un
          netbook)
        - Tout est opti pour le système utilisé -> meilleurs performances

# BSD, un autre style de distribution

## Melons et Pommes...

- Des projets completement séparés
	- Pas de partage du noyau, ni des outils
	- Peu de portabilité
	- Contributeurs différents, visions différentes
- Beaucoup de forks...

## No More Distros

- Trois BSDs majeures :
	Net, Free et Open
- D'autres sont importantes :
	DragonFlyBSD, GhostBSD, ArchBSD
- A noter : Debian GNU/kFreeBSD

## NetBSD : La base

- Première des majeures (1993)
- Détachée de Berkeley depuis le début du projet
- Utilise pkgsrc, qui fait a la fois office de gestionnaire de ports et de paquets
- Centrée sur la stabilité et les performances

## FreeBSD : La base, bis

- Seconde des majeures, a quelques mois près (1993)
- Toujours attachée a Berkeley
- Utilise un système de ports, et pkgng pour les paquets
- Centrée sur la simplicité et la portabilité

## OpenBSD : La parano

- Forkée de NetBSD (1995)
- Très connue pour sa sécurité (ou sa paranoïa?)
- Utilise un système de ports, et pkg\_add pour les paquets
- A notamment donnée naissance a OpenSSH, OpenSSL,
	pf, tmux, spamd, etc...

## Les mineures

- DragonFlyBSD
	- Forkée de FreeBSD, centrée sur la légèreté du système
- ArchBSD
	- Archlinux, avec une base FreeBSD
- Debian GNU/kFreeBSD
	- Projet debian, basé sur le système debian avec un noyau kfreebsd
	- `sudo apt-get install kfreebsd-image-amd64`
- PC-BSD (User-Friendly)
	- FreeBSD, moins l'installation

# Les autres Unix-like

## "Bon, il finit quand l'autre la haut...?"

- D'autres systèmes basés sur UNIX existent
- Développés dans différents buts
- Plus ou moins utilisables...
- Mais on va les passer en revue (vite, ne vous inquietez pas)

## Plan9 from Bell Labs

- Évolution "officielle" d'Unix (venant de Bell Labs)
- Énormément de nouveautés par rapport a Unix :
	- Système orienté graphique
	- Origine de ProcFS
	- Origine de NetFS
	- Créé avec une compatibilité unicode (au contraire de tous les systèmes
	  actuels...)
	- Origine d'UnionFS
	- etc, etc, etc...

## SunOS

- Système développé par Sun Microsystems (1982 - 1992)
- Basé sur BSD, lourdement modifié
	- Seul système a fonctionner sur SPARC a l'époque
- a posé les bases de la collaboration entre entreprises pour des interfaces
  standard (OpenWindows)

## {,Open}Solaris

- Basé sur Unix SysV, développé en collaboration par AT&T et Sun
- Reste encore la référence sur archi SPARC
- Connue pour supporter particulièrement bien les clusters de processeurs
- Clairement orientée serveurs, mais suivant les standard, supporte Xorg
- Projet enterré depuis le rachat de Sun par Oracle

## GNU Hurd

- Projet GNU depuis 1990, toujours en developpement (v0XX) <!-- A checker -->
- Remplacement du noyau Unix, en logiciel libre
	- Du coup, alternative a Linux
- Étend Unix autant que Plan9, du moins... dans les plans

## Darwin

- Système Open-Source
	- Composé d'un kernel XNU (hybride) et d'un userspace basé sur FreeBSD
- Base de Mac OS X et d'iOS, qui rajoutent l'interface graphique
- Plusieurs systèmes open-source basés dessus : OpenDarwin, PureDarwin...

## Enfin, les autres ...

- AIX (IBM)
- BlackBerry 10
- Android
- Firefox OS
- Haiku (posix compliant, clone de BeOS)

## ... Et encore...

- HP-UX
- LynxOS
- IRIX
- Minix
- NeXTStep

## ... Et Toujours

- QNX
- Ultrix
- WebOS
- and much much more...

<!-- Passer vite fait sur les trois slides précédent, en les énumérant.
Maximum une phrase sur chaque OS. Fait pour mettre l'emphase sur le nombre de
systèmes existants -->


# Terminal ?

## wtf is a terminal ?

- Un terminal est une émulation de teletype (TTY)
- Il permet d'interagir avec le système en mode texte
- Le terminal contient un `shell`, auquel on donne des commandes

## Le shell

- Le shell est un interpréteur de commandes **et** un langage de scripts
- Il permet a l'utilisateur de diriger directement sa machine
- Il en existe plusieurs, assez différents

## sh

- Le `sh` originel (Bourne Shell), écrit par Stephen Bourne (AT&T)
- Standardisé dans Posix
- Assez limité de nos jours, mais impressionnant pour 1977

## bash

- Deuxième "grand" shell Unix compatible bourne (Bourne Again Shell)
- Très souvent le shell par défaut sur les unix modernes
- Contient des features pratiques : 
	- tab completion des commandes
	- historique des commandes
	- much more

## ksh/pdksh

- Évolution assez importante de bash
- Créé par Sun (Korn Shell), réécrit par OpenBSD (Public Domain Korn Shell)
- Assez peu utilisée, car contient des extensions non-standard

## zsh

- Très grosse évolution de bash
- Contient un grand nombre de features :
	- tab completion pour tout (fichiers, dossiers, arguments...)
	- "menus" navigables
	- edition de commandes multi-lignes dans un seul buffer
	- correction de frappe automatique
	- [...]

## csh et tcsh

- Écrit pour 2BSD, par Bill Joy
- Syntaxe de script beaucoup plus proche du C
- Globalement plus de features que bourne shell, mais moins que bash

# Les commandes

## Amusons nous avec les fichiers

- Nous avons vu plus haut qu'il était possible d'interagir avec notre
  sytème via des commandes.

- On peut aussi opérer sur des fichiers et/ou dossiers :
    mkdir, cd, cp, mv, rm, ln

- Les fichiers peuvent être édités en console grâce à des éditeurs :
    - vi
        - Ecrit par Bill Joy en 1976
        - Est présent sur tous les systèmes UNIX (depuis la version 3 de
          la Single Unix Specification).
    - GNU nano
        - Ecrit par Chris Allegretta en 1999 afin de remplacer pico
        - Présent sur la plupart des systèmes UNIX-like

## man

man

## man man

man man

##

\begin{center}\includegraphics[scale=0.42]{ressources/manofsteel}\end{center}
