# Rapport TAI (Chaînes de Markov)

CONSIGNES :

Un rapport est demandé pour chacune des équipes qui fera au maximum 16 pages, i.e. environ 4
pages par partie :
1.La forêt des Landes
2.Écosystèmes méditerranéens
3.Modèle plus riche d’écosystème
4.Pour aller plus loin
La notation tiendra compte de la qualité des courbes présentées, la concision des réponses ainsi que
des interprétations.
Le dépôt de votre rapport se fera sur Moodle jusqu’au samedi 2 décembre à 23h59. Aucun délais
supplémentaire ne pourra être accepté.

## 1. La forêt des Landes : modèle à 3 état

1\) Comment se traduisent ces informations sur la matrice P telle que nous l’avons définie, possédant
la propriété de Markov ?

$X_{n}
=\left(\begin{array}{cc} Rs\\ Ch\\ Cht\\ \end{array}\right)_{n}
= \left(\begin{array}{cc} 1\\ 0\\ 0\\ \end{array}\right)$

$X_{n+1}
=\left(\begin{array}{cc} Cht\\ Ch\\ Rs\\ \end{array}\right)_{n+1}
= \left(\begin{array}{cc} 0,5\\ 0,2\\ 0,3\\ \end{array}\right)$

<br />
<br />
<br />

$\{a, b, c, d, e, f\} \in R^6$

$P*X_{n}
=\left(\begin{array}{cc} 0,5 &a &b\\ 0,2 &c &d\\ 0,3 &e &f\\ \end{array}\right).\left(\begin{array}{cc} 1\\ 0\\ 0\\ \end{array}\right)
= \left(\begin{array}{cc} 0,5\\ 0,2\\ 0,3\\ \end{array}\right)
= X_{n+1}$

Donc $P=\left(\begin{array}{cc} 0,5 &a &b\\ 0,2 &c &d\\ 0,3 &e &f\\ \end{array}\right)$

---
2\) Dessiner un graphe qui modélise l’écosystème. On précisera notamment les valeurs sur chacun
des arcs.

$P = \left(\begin{array}{cc} 0,5 &0,1 &0,1\\ 0,2 &0,6 &0,2\\ 0,3 &0,3 &0,7\\ \end{array}\right)$

![Alt text](image-1.png)

---
3\) Calculez la proportion de chaque arbre pour l’année n = 1.

$X_1 = P.X_0 = \left(\begin{array}{cc} 0,5 &0,1 &0,1\\ 0,2 &0,6 &0,2\\ 0,3 &0,3 &0,7\\ \end{array}\right).\left(\begin{array}{cc} 0,36\\ 0,40\\ 0,24\\ \end{array}\right) = \left(\begin{array}{cc} 0,24\\ 0,36\\ 0,40\\ \end{array}\right)$

---
4 & 5\) A l’aide d’un ordinateur, calculez la proportion de chaque arbre pour n = 20.

![Alt text](image-2.png)

On peut donc en déduire que l'écosystème tend vers la stabilité. Il précisément, il tend vers cette valeur :

$X_{20} = \left(\begin{array}{cc} 0,16\\ 0,33\\ 0,50\\ \end{array}\right)$

---
6\) Diagonalisation de $P$:

$D = \left(\begin{array}{cc} 1 &0 &0\\ 0 &2/5 &0\\ 0 &0 &2/5 \end{array}\right)$ Chaque élément non nul est une valeur propre de D

$A = \left(\begin{array}{cc} 1/3 &-1 &-1\\ 2/3 &1 &0\\ 1 &0 &1\\ \end{array}\right)$ La première colonne est le vecteur propre de la première valeure de D et ainsi de suite.

$A^{-1} = \left(\begin{array}{cc} 1/2 &1/2 &1/2\\ -1/3 &2/3 &-1/3\\ -1/2 &-1/2 &1/2 \end{array}\right)$ 

$P = A.D.A^{-1}$

---
7\) Écrire le vecteur $X_n$ en fonction de $D_n$, $A$, $A^{−1}$ et la distribution initiale $X_0$

$X_n = X_0.A.D_n.A^{−1}$

Avec matlab nous obtenons l'exact même résultat qu'à l'exercice 5.



## 2. Ecosystèmes méditerranéens à 5 états
## 3. Modèle plus riche d’écosystème
## 4. Pour aller plus loin
