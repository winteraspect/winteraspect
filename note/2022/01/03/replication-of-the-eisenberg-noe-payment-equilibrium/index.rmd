---
title: Replication of the Eisenberg-Noe Payment Equilibrium
author: 'Winter'
date: '2022-01-03'
slug: replication-of-the-eisenberg-noe-payment-equilibrium
categories: ['working paper', 'proof']
tags: ['contagion', 'financial network']
---
The following proofs are referenced from Eisenberg, Larry, and Thomas H. Noe. 2001. “Systemic Risk in Financial Systems.” Management Sci- ence 47 (2): 236–49.

# Proofs from the original paper
## Existence of Payment Equilibrium (Theorem 1)
Theorem 1. Corresponding to every financial system $$(\Pi, \bar{p}, e)$$
a. There exists a greatest and least clearing payment vector. 

b. under all clearing vectors, the value of the equity at each node of the financial system is the same, that is, if p' and p'' are any two clearing vectors, $$(\Pi^T(p')+e - \bar{p})^+=(\Pi^T(p'')+e - \bar{p})^+$$

Proof. To prove theorem 1, we need to fist characterize some basic basic properties of the $\Phi$ map. We note that $\Phi$ is postive, increasing, concave and nonexpansive. The assertions of positivity, monotonicity and concavity follow because $\Phi$ is the composition of the positive, incraesing, affine map $q \rightarrow   \Pi^Tq + e$, and the positive , increasing, concave map $q \rightarrow   q\wedge\bar{p}$. Then by contraction thereom, we could find the fixed point and possibly a unique one. 

Previously, the author has characterize the clearing payment vector as $$p_i^* = min[e_i+\Sigma^N_{i=1}\Pi_{ij}^Tp_j^*,\bar{p_i}]$$
This is where we might find the contraction we need. Using a more concise notation, the author defined $\Phi$ as $$\Phi(p; \Pi, \bar{p}, e) \equiv (\Pi^Tp+e)\wedge\bar{p}$$

The proof is then finished by Tarski fixed-point theorem. (a) is proved. 

To prove (b), the author showed that the value of equity is the same under different payment equilibrium. Remeber $e_i$ is defined as the exogenous operating cash flow received by node i. The $\bar{p}$ represents the upper limit of the payment, which are the debt matrix. 

## Uniqueness of Payment Equilibrium (Theorem 2)

To give a condition for the uniqueness of the equilibrium, the authors realize that the value of equity does not leave the closed *risk orbit*。The authors define the regular financial system to be a network where every risk orbit is a surplus set.

The condition to test if an orbit is a surplus set is that 
1. The nodes in the set have not obligations to nodes outsiede the set.
2. The set has positive aggregated operating cash flows. 

In the meantime, the risk orbit is just a same **closed** set without the **surplus** feature. 


