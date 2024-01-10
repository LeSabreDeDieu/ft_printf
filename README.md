# Bibliothèque ft_printf-42

## Description
La bibliothèque ft_printf est une implémentation personnalisée de la fonction printf en langage C. Elle offre une variété de spécificateurs de format pour formater et afficher les données de manière flexible.

## Structure du Projet
Le projet est organisé comme suit:

```
.
├── includes
│   ├── ft_printf.h
│   └── libft.h
├── libft
│   ├── ft_is
│   ├── ft_lst
│   ├── ft_mem
│   ├── ft_put
│   ├── ft_str
│   ├── ft_to
│   └── Makefile
├── Makefile
└── srcs
    ├── ft_printf.c
    ├── ft_printf_utils.c
    ├── ft_print_hex.c
    ├── ft_print_ptr.c
    └── ft_print_unsigned.c
```

Le projet contient un dossier `includes` pour les fichiers d'en-tête, un dossier `libft` avec les modules de la bibliothèque, un fichier `Makefile` pour la compilation du projet, et un dossier `srcs` avec les fichiers source de la bibliothèque.

## Compilation
Pour compiler la bibliothèque ft_printf, utilisez le fichier `Makefile` à la racine du projet. Exécutez la commande suivante dans le terminal:

```bash
make all
```

Cela générera la bibliothèque `libftprintf.a` dans le répertoire racine.

## Utilisation
Pour utiliser la bibliothèque ft_printf dans votre projet, incluez le fichier d'en-tête `ft_printf.h` dans vos fichiers source, et compilez votre projet en liant avec la bibliothèque `libftprintf.a`.

Exemple de compilation:
```bash
gcc -o mon_programme mes_sources.c -L. -lftprintf
```

## Auteur
[sgabsi]
