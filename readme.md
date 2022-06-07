# README

## Notice d'utilisation :

Le fichier .exe / le script .ps1 doivent être exécutés en tant qu'Administrateur, les manipulations de la base de registre ne fonctionnant pas le cas échéant.

Pour compiler le fichier ps1 en exécutable, je me suis servi de l'utilitaire Iexpress.exe présent dans Windows.

Etapes pour compiler : 

- Lancer Iexpress.exe en Administrateur
- Sélectionner l'option "Create new Self Extraction Directive file" puis suivant
- Laisser l'option cochée "Extract files and run an installation command"
- Donner un "Package Title"
- Laisser sur l'option "No prompt"
- Laisser l'option "Do not display a License"
- Ajouter le fichier agfol.ps1
- Dans la rubrique "Install Program" insérer :
`powershell.exe -executionpolicy bypass -noprofile -file agfol.ps1`
- Laisser l'option cochée "Show Window" 
- Laisser l'option cochée "No Message"
- Entrer le repertoire où sera créé l'exécutable
- Vous pouvez cocher la case "Hide File Extracting Progress Animation form User"
- L'exécutable est prêt à être distribué

N'hésitez pas à améliorer ce script, je suis un débutant.
