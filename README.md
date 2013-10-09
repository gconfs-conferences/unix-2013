UNIX - Paul 'Dettorer' Hervot, Kaci 'Bruce' Adjou, Clément 'Wxcafé' Hertling
============================================================================

Plan de la conf (au 7/10/2013)
------------------------------ 

* Introduction historique (Wxcafé,Bruce)
	
	* Fin des années 60 : UNICS @ Bell Laboratories
	
	* 1973 : UNIX est réecrit en C -> gros progrès car portatif,
	insister là dessus.
	
	* 1975 : UNIX est distribué en dehors des laboratoires Bell.
	
	* 1977-78 : Naissance de BSD à Berkeley, Californie (Berkley
	Software Distribution).
	
	* 1983 : Naissance du projet GNU (parler rapidement de GNU /
	Stallman), commercialisation d'UNIX sous le nom de System V 
	(et aussi naissance de USL - Unix System Laboratories).
	
	* 1988 : POSIX apparait, décrire ce qu'est POSIX (standards
	garantissant la compatibilité entre différents OS, parler
	rapidement des signaux tels que SIGINT, SIGKILL par exemple et
	rajouter quelques phrases sur les logiciels garantis par POSIX
	(genre vi)).
	
	* 1991 : Naissance du Noyau Linux (introduire rapidement
	l'histoire de Torvalds puis afficher son message sur
	comp.os.minix).
	
* Explications sur des notions importantes (Dettorer,Wxcafé,Bruce)

	* Différence entre UNIX compliant et UNIX like
	
	* Revenir sur POSIX
	
	* Insister sur le fait que Linux = Noyau et non OS.
	
* Partie graphes :

	* Montrer si possible [ca](http://www.levenez.com/unix/unix.pdf) pour
	insister sur le fait qu'UNIX c'est pas qu'une petite partie de
	l'histoire de l'info.
	
	* [ca aussi](http://upload.wikimedia.org/wikipedia/commons/1/1b/Linux_Distribution_Timeline.svg)
	
* Bien choisir sa distribution (Dettorer, Bruce, Wxcafé) :
	
	* Notion de Distribution (Bruce)
		* C'est *un OS*
		* Designe un OS et ce qui l'entoure (logithèque, manuels
		etc..)
	
	* Pourquoi bien choisir sa distribution est important ?
	(Dettorer) :
		* Insister sur le fait que les users de différentes distribs
		n'auront pas spécialement les mêmes opérations à effectuer
		(genre Gentoo)
		* Parler du fait que certaines distributions sont vraiment différentes,
		genre [Source Mage Linux](http://www.sourcemage.org/), [Gobo Linux](http://www.gobolinux.org/?page=at_a_glance) ou [crux](http://crux.nu/), 
		et sont donc completement incompatibles au niveau du système. 
			
	* Exemples de distributions :
		
		* User friendly (cherche à reproduire l'expérience windows,
		mais reste du LINUX/UNIX) (Bruce)
			
			* Ubuntu :
				* Basée sur Debian
				* Ecosystème riche développé par Canonical
				* Populaire pour sa simplicité de prise en main
			
			* Linux Mint :
				* Basée sur Ubuntu (il existe une version basée sur
				Debian)
				* Dépôts d'Ubuntu (Debian pour LMDE) mais possède ses dépots
				  propres ou sont hébergés leurs projets persos
				* Intègre de base des logiciels propriétaires -> expérience 
				  utilisateur ++.

			* elementaryOS :
				* Basée sur Ubuntu
				* Dépots propres
				* Interface très simple, ressemble beaucoup a OS X
				* Integre de base des logiciels proprios, codecs, drivers, etc.
			
			* Manjaro Linux (ou Manjaro)
				* Basée sur Arch Linux
				* Suit le principe de la rolling release (expliquer)
				* Très user friendly par rapport à Arch
				* Dépôts :
					* Propres à Manjaro
					* Arch (avec ~2/3 jours de retard)
					* AUR
			
			* PC-BSD
				* BSD, basée sur FreeBSD
				* Utilise les "dépots" de fBSD, et le même userland/kernel
				* A comme principale différence d'avoir une procédure
				  d'installation simplifiée et de nombreux logiciels
				  préinstallés en plus.
				* Du coup, bien plus facile a installer et a utiliser que
				  fBSD 
		
		* Stable : (Bruce)
			
			* Debian :
				* Réputée pour sa stabilité
				* Developpée de manière bénévole par des centaines
				de dev
				* dépôts outdated par rapport à certaines distribs
				(d'où sa stabilité)
			
			* Slackware : 
				* Connue pour sa stabilité
				* Dépôts vieux par rapport aux autres distribs
				* Gestionnaire de paquet très ancien ne gérant pas les
				  dépendances
				* Toujours très utilisée pour faire du hosting, notamment
				
			* RHEL :
				* Stable parce que soutenue par Red Hat
				* Appartient a Red Hat (parler du système de licences et du
				  business model de RH)
				* Paquets moins vieux que debian, mais stable quand même (vu
				  qu'y a des gens payés pour bosser dessus)
				* Utilise systemd, pulseaudio...
				* Connue pour avoir hébergé le developpement de projets
				  discutés (systemd et pulseaudio, donc)
				* Très proche de Fedora, qui est un "clone" communautaire
			
			* SUSE enterprise
				* Principal concurrent de RHEL
				* Parler d'OpenSUSE, version gratuite et avec support
				  communautaire  
		
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
			
			* BSD : (Wxcafe)
				
				* Résumé sur BSD vite fait :
					* Historique rapide (Berkeley, BSDi, Lawsuit, ... )
					* Différences avec GNU/Linux et SysV résumées
					* Licence BSD (?)
				
				* FreeBSD : 
					* Basée sur 386BSD/4.2BSD
					* Première BSD a ne pas être développée par Berkeley en tant
					  que tel
					* Le projet comprend quand même beaucoup de devs ayant bossé
					  sur AT&T UNIX et les premières BSDs
					* Connue pour être user-friendly, pour une BSD...
					* Support de drivers assez limité, et donc
					* Installation assez simple jusqu'a un système sans X, et
					  bien plus compliquée après
					* Système de ports, et packages binaires via pkgng
						* serveur pkgng down depuis bientôt 9 mois suite a une
						  intrusion sur le serveur, projet en semi-abandon
				
				* NetBSD :
					* Basée sur 386BSD/4.3BSD
					* Le projet comprend plutôt des devs ayant bossés sur les
					  BSDs originelles a Berkeley
					* Support de drivers encore plus limité que FreeBSD
					* Connue pour être un excellent système serveur
					* [`pkgsrc`](http://pkgsrc.org) fournit les ports et les 
					  packages binaires
				
				* OpenBSD :
					* Basée sur NetBSD
						* Théo de Raadt viré de NetBSD en 1994
						* Part créer OpenBSD
					* Connue pour son orientation sécurité, et très portée sur
					  ce point
						* La sécurité d'oBSD passe avant tout par du code
						  "propre", très audité
						* Privilégie largement la sécurité a la facilité
						  d'utilisation
					* Connue aussi pour avoir créé OpenSSH, sudo, pf,
					  OpenSMTPD...
					* Gestion des drivers remarquablement bon pour une BSD
					* Système de "ports", et packages binaires via pkg_add
			
			* Autres UNIX-likes (Wxcafé)
				
				* Plan9 :
					* Evolution directe de AT&T UNIX
					* Système orienté graphique, au contraire d'UNIX
					* A inventé procFS, qui permet de gérer les processus comme
					  des fichiers
					* a inventé netFS, qui permet de gérer les socket comme des
					  fichiers
					* est entièrement compatible Unicode, au contraire de...
					  tous les autres systèmes aujourd'hui
					* a créé unionFS, qui permet de monter plusieurs FS sur un
					  même dossier concurrentiellement **et** de gérer un
					  namespace séparé par processus
					* a surtout créé le protocole 9P, qui sert a accéder aux
					  ressources système, et a communiquer avec les programmes,
					  les dnneées, les processus, l'UI, et le réseau. Pas d'API
					  puisque tout est présenté sous forme de FS standard.
					* a donc poussé le concept d'UNIX a l'extrème.
					* malheureusement, reste très peu utilisé en dehors des
					  universités, a cause de l'inertie des habitudes.
				
				* SunOS :
					* Développée par Sun Microsystems
					* Basée sur BSD
					* Développée entre 82 et 92
					* a posé les bases de la collaboration entre entreprises sur
					  des interfaces standard (OpenWindows)
				
				* {,Open}Solaris :
					* Basé sur System V Rev 4, développé en collaboration par
					  AT&T et Sun
					* Système de référence sur archi SPARC
					* Connue pour supporter particlièrement bien les grands
					  nombres de processeurs
					* Du coup, clairement orientée serveurs, mais supporte X
					  sans problème
					* Globalement morte depuis le rachat de Sun par Oracle,
					  [forkée par un contributeur](http://wiki.illumos.org/display/illumos/illumos+Home)
				
				* Hurd :
					* Projet GNU depuis 1990, toujours pas en version stable
					* Remplacement du noyau UNIX open-source, alternative a
					  Linux
					* Microkernel (expliquer rapidement ce qu'est un Microkernel)
					* Étend sur UNIX quasiment autant que Plan9, du moins dans
					  le concept.
				
				* Darwin :
					* Système Open-Source composé d'un kernel hybride XNU (Mach 
					  plus BSD) et d'un userspace basé sur fBSD
					* Base de Mac OS X, qui ne rajoute quasiment que l'interface
					  graphique
					* Base d'iOS, qui ne rajoute que l'interface graphique
					* Base de plusieurs OS completement libres : OpenDarwin,
					  PureDarwin...
				
				* Autres :
					* AIX (IBM)
					* BlackBerry 10
					* Android
					* Firefox OS
					* Haiku (posix compliant, clone de BeOS)
					* HP-UX
					* IRIX (Silicon GraphX, MIPS)
					* LynxOS (Real-Time OS, used in aeronautics, telecom...)
					* Minix (First Microkernel, inspired Linux)
					* NeXTStep (dev par NeXT (Steve Jobs), base histo de OS X)
					* QNX (base de la BlackBerry Playbook)
					* Ultrix (Unix for DEC minicomputers (PDPs))
					* WebOS (Palm puis HP puis LG)
					* much much more... (montrer le graph ici?)
				 
	* La console : qu'est ce que c'est ? (Dettorer,Wxcafé,Bruce)
		
		* présenter rapidement ce qu'est la console (avec un screen /
		une vm qui tourne)
		
		*  Le shell c'est quoi ?
			* Définir un Shell
			* Parler de sh, csh, bash et zsh et présenter rapidement leurs
			features.
		
		* Intéragir avec la console (et par extension sa machine)
			
			* Les commandes c'est quoi ?
			
			* Présenter celles de base puis s'amuser un peu avec les
			fichiers (mkdir, cd, cp, mv, rm, ln, etc)
				* Introduire rapidement vim, nano pour l'édition de
				fichiers.
			
			* Introduire man avec les arguments qu'on peut passer à une
            commande
			
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
			exemple ?)
		
		* Protocole pour design des scripts, pour ceux qui ont déjà pu
		toucher à du linux/unix avant. (Dettorer,Wxcafé)
