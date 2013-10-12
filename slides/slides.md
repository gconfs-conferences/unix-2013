% Introduction à UNIX
% Dettorer, wxcafé, Bruce
% 18 Octobre 2013

# Un peu d'histoire

## Années 70

- 1969 : Ken Thompson, Dennis Ritchie et Rob Pike commencent à travailler sur UNICS.
- 1973 : UNIX est réécrit en C.
- 1975 : Les Laboratoires Bell se décident à distribuer UNIX à
  l'exterieur.
- 1977 : Bill Joy travaille sur la première version de BSD : 1BSD

## Années 80 - 90

- 1983 : 
    - Richard Stallman annonce son intention de développer un système d'exploitation libre
      appelé GNU (GNU's not UNIX)
    - AT&T annonce la sortie de System V, première version propriétaire
      d'UNIX
- 1988 :
    - Apparition du standard POSIX (Portable Operating System Interface
      for uniX)
        - Standardisation des différents systèmes basés sur UNIX.
        - POSIX garantit la présence de signaux permettant la
          gestion de processus (ex : SIGSEGV, SIGINT, SIGTERM, SIGKILL etc..)
        - ... mais aussi la présence de certains logiciels
          quelques soient les OS sur les quels ils sont utilisés
          (ex : vi, ls, sh etc)

- 1991 :
    - Naissance du Noyau Linux

##

![](/home/bruce/slides_unix/ressources/torvalds.PNG)

## Précisions

- Il existe deux types de systèmes UNIX :
    - UNIX compliant
    - UNIX-like

- Linux != OS

# Bien choisir sa distribution

## Systèmes d'Exploitation

- Wtf is a distribution ?
    - Une distribution est un Système d'Exploitation
    - Le terme désigne l'OS et ce qui l'entoure

- Choisir sa distribution est primordial
    - Un utilisateur n'aura pas les mêmes réflexes suivant la
      distribution :
        les outils, concepts et l'organisation du système
        peuvent différer entre deux distributions (ex : le package
        manager de Gentoo et Arch Linux)

- On peut distinguer trois types de distributions :
    - User friendly
    - Stable
    - Pour utilisateurs avancés

# Quelques exemples de distributions

## Ubuntu

- Basée sur Debian
- Possède un écosystème riche développé par Canonical
- Très populaire pour sa simplicité de prise en main

## Linux Mint

- Basée sur Ubuntu
    - Il existe aussi une version basée sur Debian Testing (LMDE)
- Possède ses propres dépôts mais les utilisateurs ont aussi accès
      aux dépôts Ubuntu (Debian dans le cas de LMDE)
- Intègre de base des logiciels propriétaires (ex : flash player)

## elementary OS

- Basée sur Ubuntu
- Possède ses propres dépôts
- Interface simpliste (avec quelques ressemblances à OS X)
- Intègre de base des logiciels et drivers propriétaires (comme Mint)

## Manjaro Linux

- Basée sur Arch Linux
- Est en rolling release
- Beaucoup plus user friendly qu'Arch (de l'installation à
  l'utilisation)
- Dépôts :
    - Propres à Manjaro
    - Arch Linux (avec un peu de retard)
    - AUR

## PC-BSD

- Basée sur freeBSD
- Procédure d'installation très simplifiée avec beaucoup de logiciels
  préinstallés

## Debian

- Très stable
- Developpée par des bénévoles issus de la communauté Debian
- Paquets plutôt vieux par rapport aux autres distributions

## Slackware

- Très stable
- Paquets vieux par rapport aux autres distributions
- Le gestionnaire de paquets ne gère pas les dépendances


## RHEL

- Maintenue par Red hat
- Paquêts un peu moins vieux que Debian
- Utilise systemd
- Assez proche de Fedora

## SUSE entreprise

- Orientée business (comme RHEL)
- Il existe une version gratuite et communautaire : OpenSUSE

## Arch Linux

- Est en rolling release
- Les outils sont intégrés peu de temps après leur release
    - Les users peuvent alors subir plus de bugs, cela n'empêche pas la
          mise à jour régulière de la distro
          - Utilise systemd
          - La documentation est régulièrement mise à jour et la
            communauté
              particulièrement réactive
                  - Phrase sur le Beginner's Guide (TODO)

## BSD etc

**TODO** (ping wxcafe)

# La console

## La console

TODO

## Le shell

- C'est un interpréteur
- ...de commandes entrées par l'utilisateur
- Il lie l'utilisateur à sa machine

## Sh

- TODO

## Bash

- TODO

## Csh

- TODO

## Zsh

- TODO

# Les commandes

## Amusons nous avec les fichiers

- Nous avons vu plus haut qu'il était possible d'interagir avec notre
  sytème via des commandes.
- Commençons par créer un dossier :\newline
    42sh$ mkdir "test"
