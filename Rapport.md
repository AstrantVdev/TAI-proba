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

$X_n = X_0.(A.D_n.A^{−1})^T$

Avec matlab nous obtenons l'exact même résultat qu'à l'exercice 5.



## 2. Ecosystèmes méditerranéens à 5 états
## 3. Modèle plus riche d’écosystème

$P= \left(\begin{array}{cc} 
0.1& 0& 0.8& 0& 0.2& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0\\
0.2& 0.4& 0.05& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0\\
0.1& 0.2& 0.05& 0.9& 0.1& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0\\
0.5& 0.2& 0.05& 0.05& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0\\
0.1& 0.2& 0.05& 0.05& 0.7& 0& 0& 0& 0.2& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0\\
0& 0& 0& 0& 0& 0& 0& 1& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0\\
0& 0& 0& 0& 0& 1& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0\\
0& 0& 0& 0& 0& 0& 1& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0\\
0& 0& 0& 0& 0& 0& 0& 0& 0.6& 0.4& 0.1& 0& 0& 0& 0& 0& 0& 0& 0& 0\\
0& 0& 0& 0& 0& 0& 0& 0& 0.1& 0.2& 0.7& 0& 0& 0& 0& 0& 0& 0& 0& 0\\
0& 0& 0& 0& 0& 0& 0& 0& 0.1& 0.2& 0.1& 0& 0& 0& 0& 0& 0& 0& 0& 0\\
0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 1& 0& 0& 0& 0& 0& 0& 0& 0\\
0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0.1& 0& 0.3& 0.3& 0.3& 0.4& 0.1& 0.3& 0& 0.15\\
0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0.3& 0.05& 0.3& 0.1& 0.1& 0.1& 0.2& 0.05\\
0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0.1& 0.1& 0& 0.1& 0.1& 0.1& 0.1& 0.1\\
0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0.1& 0.1& 0.1& 0.1& 0.1& 0.1& 0.15& 0.05\\
0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0.1& 0.1& 0.1& 0.1& 0.1& 0.1& 0.05& 0.05\\
0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0.1& 0.1& 0& 0.1& 0.2& 0.1& 0.2& 0.3\\
0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0& 0.2& 0.1& 0.05& 0.2& 0.1& 0.1& 0.2\\
0& 0& 0& 0& 0& 0& 0& 0& 0& 0.2& 0& 0& 0& 0.05& 0.1& 0.05& 0.1& 0.1& 0.2& 0.1\\
\end{array}\right)$

1\)

---
2\) Calculs de $X_{1}$, $X_{2}$, $X_{50}$ avec matlab :

$X_{0} = 1/16.\left(\begin{array}{cc} 1 &1 &1 &1 &1 &0 &0 &0 &1 &1 &1 &0 &1 &1 &1 &1 &1 &1 &1 &1 \end{array}\right)$

$X_{1} = \left(\begin{array}{cc} 0.0688 &0.0406 &0.0844 &0.0500 &0.0813 &0 &0 &0 &0.0688 &0.0625 &0.0250 &0 &0.1219 &0.0750 &0.0438 &0.0500 &0.0438 &0.0688 &0.0594 &0.0563 \end{array}\right)$

$X_{2} = \left(\begin{array}{cc} 0.09060 &0.03420 &0.07230 &0.04920 &0.09230 &0 &0 &0 &0.06880 &0.03690 &0.02190 &0 &0.1281 &0.08440 &0.04750 &0.05200 &0.04610 &0.06910 &0.05470 &0.05190 \end{array}\right)$

$X_{50} = \left(\begin{array}{cc} 0.1084 &0.04440 &0.09850 &0.07160 &0.09410 &0 &0 &0 &0 &0 &0 &0 &0.1459 &0.09710 &0.05300 &0.05920 &0.05320 &0.07270 &0.06000 &0.04190 \end{array}\right)$

Il faut en moyenne un seul pas pour que toutes les valeurs soient concentrées sur les états {1, 2, 3, 4, 5}, {13, 14, 15, 16, 17, 18, 19, 20}

---
3\) Simulation des états de $$Y_{n}$ par rapport à $n$ :

$Y_{0} = \left(\begin{array}{cc} 0 &0 &0 &0 &0 &0 &0 &0 &0 &0 &1 &0 &0 &0 &0 &0 &0 &0 &0 &0 \end{array}\right)$

![Alt text](image-6.png)

Nombre de pas moyen pour que le système peuple les états {1, 2, 3, 4, 5} : 

Nombre de pas moyen pour peupler que le système états {14, 15, 16, 17, 18, 19, 20} :

---
4\) Simulation des états de $$Z_{n}$ par rapport à $n$ :

$Z_{0} = \left(\begin{array}{cc} 0 &0 &0 &0 &0 &0 &0 &0 &0 &0 &0 &1 &0 &0 &0 &0 &0 &0 &0 &0
 \end{array}\right)$


## 4. Pour aller plus loin
