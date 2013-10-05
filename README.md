UNIX - Paul 'Dettorer' Hervot, Kaci 'Bruce' Adjou
=================================================

Plan de la conf (au 3/10/2013)
------------------------------ 

    * Introduction historique (Dettorer & Bruce)
        * Fin des années 60 : UNICS @ Bell Laboratories
        * 1973 : UNIX est réecrit en C -> gros progrès car portatif,
        insister là dessus.
        * 1975 : UNIX est distribué en dehors des laboratoires Bell.
        * 1977-78 : Naissance de BSD à Berkeley, Californie (Berkley
        Software Distribution).
        * 1983 : Naissance du projet GNU (parler rapidement de GNU /
        * Stallman), commercialisation d'UNIX
        sous le nom de System V (et aussi naissance de USL - Unix System
        Laboratories).
        * 1988 : POSIX apparait, décrire ce qu'est POSIX (standards
        garantissant la compatibilité entre différents OS, parler
        rapidement des signals tels que SIGINT, SIGKILL par exemple et
        rajouter quelques phrases sur les logiciels garantis par POSIX
        (genre vi)).
        * 1991 : Naissance du Noyau Linux (introduire rapidement
        l'histoire de Torvalds puis afficher son message sur
        comp.os.minix).
    * Explications sur des notions importantes (Dettorer & Bruce)
        * Différence entre UNIX compliant et UNIX like
        * Revenir sur POSIX
        * Insister sur le fait que Linux = Noyau et non os.
    * Partie graphes :
        * Montrer si possible http://www.levenez.com/unix/unix.pdf pour
        insister sur le fait qu'UNIX c'est pas qu'une petite partie de
        l'histoire de l'info.
    * Bien choisir sa distribution (Dettorer & Bruce) :
        * Notion de Distribution (Bruce)
            * C'est *un OS*
            * Designe un OS et ce qui l'entoure (logithèque, manuels
            etc..)
        * Pourquoi bien choisir sa distribution est important ?
        (Dettorer) :
            * Insister sur le fait que les users de différentes distribs
            n'auront pas spécialement les mêmes opérations à effectuer
            (genre Gentoo)
        * Exemples de distribution :
            * User friendly (cherche à reproduire l'expérience windows,
            mais reste du LINUX/UNIX) (Bruce)
                * Ubuntu :
                    * Basée sur Debian
                    * Ecosystème riche développé par Canonical
                    * Populaire pour sa simplicité de prise en main
                * Linux Mint :
                    * Basée sur Ubuntu (il existe une version basée sur
                    Debian)
                    * Dépôts d'Ubuntu (Debian pour LMDE)
                    * Intègre de base des logiciels propriétaires de
                    base -> expérience utilisateur ++.
                * Manjaro Linux (ou Manjaro)
                    * Basée sur Arch Linux
                    * Suit le principe de la rolling release (expliquer)
                    * Très user friendly par rapport à Arch
                    * Dépôts :
                        * Propres à Manjaro
                        * Arch (avec ~2/3 jours de retard)
                        * AUR
            * Stable : (Bruce)
                * Debian :
                    * Réputée pour sa stabilité
                    * Developpée de manière bénévole par des centaines
                    de dev
                    * dépôts outdated par rapport à certaines distribs
                    (d'où sa stabilité)
            * Advanced User : (Dettorer)
                * Arch Linux
                    * Rolling Release
                    * Intégration rapide des nouveaux outils peu de
                    temps après leur release par les devs
                        * Un peu à l'opposée de Debian, les users
                        subissent les premiers bugs mais distrib souvent
                        mise à jour.
                    * Systemd
                    * Installation guidée (mentionner le Beginner's
                    guide) jusqu'à l'obtention d'un os sans serveur x
                    * Doc très bien fournie (wiki) et Communauté
                    réactive (forum)
                * Gentoo
                     * Rolling release
                     * Packages à compiler soi même (la plupart du
                     temps)
                        * use flags
                     * Doc très fournie
                        * Il peut être intéressant pour les nouveaux
                        users de commencer par gentoo (la doc
                        commençant depuis zéro)
    * La console : qu'est ce que c'est ? (Dettorer & Bruce)
        * présenter rapidement ce qu'est la console (avec un screen /
        une vm qui tourne)
        *  Le shell c'est quoi ?
            * Définir un Shell
            * Parler de bash, sh, Zsh et présenter rapidement leurs
            features.
        * Intéragir avec la console (et par extension sa machine)
            * Les commandes c'est quoi ?
            * Présenter celles de base puis s'amuser un peu avec les
            fichiers (mkdir, cd, cp, mv, rm etc)
                * Introduire rapidement vi(m), nano pour l'édition de
                fichiers.
            * Introduire man avec les arguments qu'on peut passer à ls
            (ou autre commande, genre sl :D)
            * Expliquer qui est l'user "root", et pourquoi il faut faire
            gaffe lorsqu'on utilise certaines commandes en root.
                * parler de sudo
    * Les scripts : rapide intro (par Dettorer ?)
        TODO

    * MISC (à caser, ou pas) :
        * Parler du système de fichiers de Linux ? (Dettorer)

    * DA TP :
        * Install Party
            * faire un pdf explicatif (avertir les mecs qui n'ont jamais
            partitionné leur disque qu'ils peuvent utiliser une vm par
            exemple ?
        * Protocole pour design des scripts, pour ceux qui ont déjà pu
        toucher à du linux/unix avant.
