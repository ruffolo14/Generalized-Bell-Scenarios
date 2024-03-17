# Generalized-Bell-Scenarios

This repository was created with the aim of save the data from our research on the field of Generalized (or Extended) Bell Scenarios. It's basically a collection of polytope informations, like list of vertices or list of facets as inequalities. All the results are obtained using the PANDA software for polyhedral transformations [1].
Just to know, here we have a list of possible names and meanings:
* *NSND* - Nonsignaling Nondisturbing polytope. It's the polytope of all behaviors **p** that are nonsignaling between the parts and nondisturbing in each part
* *LND* - Local Nondisturing polytope. It's the polytope of all behaviors **p** that have a LHV model with nondisturbing response funcions for each part. It's facets are *Extended Bell Inequalities* (for precise meaning and definitions, see [2]).
* *2-ncicle scenario* - It's the measurement scenario where Alice realizes two dichotomic measurements and Bob realizes n dichotomic measurements ciclic compatible. Examples of such scenarios are 2-triangle, 2-square and 2-pentagon.
* *LNC* Local Noncontextual polytope. It's the polytope of all behaviors **p** that have a LHV model with noncontextual response fuctions for each part. It's usually called the *Classical Polytope* also, because it recovers our reasoning for something that behaves classically.

**Important:** The files are in the PANDA format. All "_input" files means that it's the input used to get the output, so it includes all symmetry maps and so on. 

## 2-Triangle Scenario
This is the simplest scenario where one can study both Extended Nonlocality and Kochen-Specker Contextuality together. Standard Nonlocality does not appear here because Bob's measurements are all pairwise compatible, so it has a standard local model. However, as we see by the results presented here, the Local Nondisturbing poytope has more facets than the trivial ones, so we have Extended Bell Inequalities to study Extended Nonlocality. It means that pairwise compatibility of one of the parties is not enough to achieve Extended Locality. The Kochen-Specker Contextuality is manifested by the Specker's triangle realized by Bob. It cannot be violated by Quantum Theory, because in QT pairwise compatibility implies that all measurements are actually compatible. However, it can achieved by General Nondisturbing Behaviors.

## 2-Square Scenario
This is the first Extended Bell Scenario studied using this new definition of Nonlocality [3]. It has 24 different Bell inequalities. Some of them can be indentified like Sliwa inequalities [5], but some others are completely new. Just one inequality was explored since now, and we know it's better to witness nonlocality for some specific mixed states.

## 2-Pentagon Senario
This scenario was used to witness Extended Bell Nonlocality and KS Contextuality jointly, in the same experiment [4]. It as 63 different classes of Extended Bell Inequalities, which we can identify two of them as "Extended CHSH inequalities", like
$$\expval{A_0}$$






***
[1] *Lörwald, S., Reinelt, G. PANDA: a software for polyhedral transformations. EURO J Comput Optim 3, 297–308 (2015). https://doi.org/10.1007/s13675-015-0040-0*

[2] *Mazzari, A., Ruffolo, G., Vieira, C., Temistocles, T., Rabelo, R., & Terra Cunha, M. (2023). Generalized Bell scenarios: disturbing consequences on local-hidden-variable models. Entropy, 25(9), 1276.*

[3] *Temistocles, T., Rabelo, R., & Cunha, M. T. (2019). Measurement compatibility in Bell nonlocality tests. Physical Review A, 99(4), 042120.*

[4] *Xue, P., Xiao, L., Ruffolo, G., Mazzari, A., Temistocles, T., Cunha, M. T., & Rabelo, R. (2023). Synchronous observation of Bell nonlocality and state-dependent contextuality. Physical review letters, 130(4), 040201.*

[5] *Śliwa, C. (2003). Symmetries of the Bell correlation inequalities. Physics Letters A, 317(3-4), 165-168.*
