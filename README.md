# perso-pathfinder-wiki-helper
Status : working

Some shell scripts to help formatting a Wiki using raw text : https://www.pathfinder-fr.org/Wiki/Pathfinder-RPG.MainPage.ashx

The script need adaptation depending of the input format.

Basically this is a auto-text formating script for wikis :

By copying raw text from a PDF of rules of tabletop roleplaying game we can change :

### Changing :
```
FORTIFICATION (EXTENSION)
Avantage : augmente la solidité d’une salle
Création : 8 Marchandises, 7 Travail (300 po) ; Durée 30 jours
Taille : comme la salle d’origine
Cette extension peut s’appliquer à n’importe quelle salle. Elle permet de renforcer les murs, d’améliorer la solidité des portes et de traiter ou de remplacer les matériaux inflammables. Lors de l’achat de cette extension, la solidité des murs de la salle est augmentée de +2, le bois des portes est plus solide (solidité 5, points de résistance 20) et les parois et le sol bénéficient d’une résistance au feu 5. Cette extension ne s’applique pas aux objets
contenus dans la pièce (par exemple, la fortification d’une bibliothèque affecte sa structure et non les livres qu’elle contient).
```
### Into :
```
<table class="page espace-col deuxcol"><tr><td>
{s:Reference|NONBAT}
<div class=BD>
{s:BDTitre|FORTIFICATION (EXTENSION)
|{s:gc}}
'''Avantage''' : augmente la solidité d’une salle
{br}
'''Création''' : 8 Marchandises, 7 Travail (300 po) ; Durée 30 jours
{br}
'''Taille''' : comme la salle d’origine
{br}
(((Description)))
Cette extension peut s’appliquer à n’importe quelle salle. Elle permet de renforcer les murs, d’améliorer la solidité des portes et de traiter ou de remplacer les matériaux inflammables. Lors de l’achat de cette extension, la solidité des murs de la salle est augmentée de +2, le bois des portes est plus solide (solidité 5, points de résistance 20) et les parois et le sol bénéficient d’une résistance au feu 5. Cette extension ne s’applique pas aux objets
contenus dans la pièce (par exemple, la fortification d’une bibliothèque affecte sa structure et non les livres qu’elle contient).
</div>
```
  

