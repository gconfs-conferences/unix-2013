# Un peu d'histoire

## Années 70

- 1969 : Ken Thompson, Dennis Ritchie et Rob Pike commencent à travailler sur UNICS.
- 1973 : UNIX est réécrit en C.
- 1975 : Les Laboratoires Bell se décident à distribuer UNIX à
  l'exterieur.
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
          gestion de processus (ex : SIGSEGV, SIGINT, SIGTERM, SIGKILL etc..)
	- ... mais aussi la présence de certains logiciels
          quelques soient les OS sur les quels ils sont utilisés
          (ex : vi, ls, sh etc)

## 1991 :

- Naissance du Noyau Linux
	- Annonce sur comp.os.minix (Usenet) par Linus Torvalds
	- Première release quelques mois plus tard
	- Engouement pour le projet dès la première release 

## Précisions

- Il existe deux types de systèmes UNIX :
    - UNIX compliant
    - UNIX-like

- Linux != OS

# Bien choisir sa distribution

## "Distributions"?...

- Wtf is a distribution ?
    - Une distribution est un système d'exploitation basé sur GNU/Linux
    - Le terme désigne l'écosystème qui entoure l'OS : 
		- le gestionnaire de paquet
		- les outils spécifiques a la distribution
		- les différences avec les standards
		- etc...

## Choisir sa distribution

- Choisir sa distribution est primordial
    - Un utilisateur n'aura pas la mème experience suivant la
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

## PC-BSD (User Friendly)

- Basée sur freeBSD
- Procédure d'installation très simplifiée avec beaucoup de logiciels
  préinstallés

## Debian (stable)

- Très stable
- Developpée par des bénévoles issus de la communauté Debian
- Paquets plutôt vieux par rapport aux autres distributions

## Slackware (stable)

- Très stable
- Paquets vieux par rapport aux autres distributions
- Le gestionnaire de paquets ne gère pas les dépendances


## RHEL (stable)

- Maintenue par Red hat
- Paquêts un peu moins vieux que Debian
- Utilise systemd
- Assez proche de Fedora

## SUSE entreprise (stable)

- Orientée business (comme RHEL)
- Il existe une version gratuite et communautaire : OpenSUSE

## Arch Linux (Advanced Users)

- Est en rolling release
- Les outils sont intégrés peu de temps après leur release
	- Les users peuvent alors subir plus de bugs, cela n'empêche pas la
		mise à jour régulière de la distro
		- Utilise systemd
		- La documentation est régulièrement mise à jour et la
			communauté
			particulièrement réactive
		- Phrase sur le Beginner's Guide (TODO)

## Gentoo (Advanced Users)

- Est en rolling release aussi
- Les outils sont integrés peu de temps après leur release
- Compilation depuis les sources (emerge)
	- Plus de controle sur le système et les logiciels
	- Nécessite un materiel efficace (a ne pas installer sur un netbook)
	- Améliore les performances (?) 

# Des distributions BSD?

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
- Centrée sur la stabilité et les performances

## FreeBSD : La base, bis

- Seconde des majeures, a quelques mois près (1993)
- Toujours attachée a Berkeley 
- Centrée sur la simplicité et la portabilité

## OpenBSD :  

# La console

## La console

TODO

## Le shell

- C'est un interpréteur
- ...de commandes entrées par l'utilisateur
- Il lie l'utilisateur à sa machine

## sh

- TODO

## bash

- TODO

## tcsh

- TODO

## zsh

- TODO

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

##

\begin{center}\includegraphics[scale=0.42]{/home/bruce/conf-unix/ressources/manofsteel}\end{center}

## man

man man


## got root ?

- Qui est root ?
    - Le premier utilisateur sur un système d'exploitation
    - Il a **tous** les droits :
        - Il est donc préférable de ne pas se connecter en root sur son
          système (sauf pour des opérations de maintenance ... et
          encore)
        - "With great power comes great responsibility"\newline
            > chmod -R 777 /

##
\begin{center}\includegraphics[scale=0.5]{/home/bruce/conf-unix/ressources/sandwich}\end{center}
