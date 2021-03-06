---
title: "Week 1 Quiz"
author: "Paul G. Smith"
date: "January 4, 2016"
output: md_document
---

## Week 1 Quiz
------------

Week 1 Quiz
===========  

|Attempts|Score|  
|:------:|:---:|  
|   0/3  | 0/10|  

10 questions

Question 1 
----------
Consider influenza epidemics for two parent heterosexual families. Suppose that the probability is 17% that at least one of the parents has contracted the disease. The probability that the father has contracted influenza is 12% while the probability that both the mother and father have contracted the disease is 6%. What is the probability that the mother has contracted influenza? 

(Hints look at lecture 2 around 5:30 and chapter 4 problem 4).

- 11%
- 6%
- 5%
- 17%

A = Mother, B = Father
P(A∪B) = 17%, P(B) = 12%, P(A∩B) = 6%
P(A∪B) = P(A)+P(B)−P(A∩B) 
17% = P(A) = 12% - 6%
P(A) = 17% - 12% + 6% = 11%

### Answer
- 11%

Question 2 
----------
A random variable, X is uniform, a box from 0 to 1 of height 1. (So that its density is f(x)=1 for 0≤x≤1.) What is its 75th percentile? 

(Hints, look at lecture 2 around 21:30 and Chapter 5 Problem 5. Also, look up the help function for the qunif command in R.)

- 0.75
- 0.50
- 0.25
- 0.10

### Answer
- .75

Question 3 
----------
You are playing a game with a friend where you flip a coin and if it comes up heads you give her X dollars and if it comes up tails she gives you Y dollars. The probability that the coin is heads is p (some number between 0 and 1.) What has to be true about X and Y to make so that both of your expected total earnings is 0. The game would then be called “fair”. 

(Hints, look at Lecture 4 from 0 to 6:50 and Chapter 5 Problem 6. Also, for further reading on fair games and gambling, start with the Dutch Book problem ).

- $p = {X}{Y}$
- $X = Y$
- ${p}{1−p} = {X}{Y}$
- ${p}{1−p} = {Y}{X}$

You lose X with probability p and your friend gains Y with a probability of (1-p). 

Therefore, to be fair, Xp = Y(1-p)

an p/(1-p) = Y/X

### Answer
- ${p}{1−p} = {Y}{X}$

Question 4 
----------
A density that looks like a normal density (but may or may not be exactly normal) is exactly symmetric about zero. (Symmetric means if you flip it around zero it looks the same.) What is its median? 

(Hints, look at quantiles from Lecture 2 around 21:30 and Chapter 2 Problem 7.

- The median must be different from the mean.
- The median must be 0.
- We can't conclude anything about the median.
- The median must be 1.

The median must be 0 since 50 percent of the mass is below 0 and 50% is above

### Answer
- The median must be 0

Question 5 
----------
Consider the following PMF shown below in R
```r
x <- 1:4
p <- x/sum(x)
temp <- rbind(x, p)
rownames(temp) <- c("X", "Prob")
temp
```
```r
## [,1] [,2] [,3] [,4]
## X 1.0 2.0 3.0 4.0
## Prob 0.1 0.2 0.3 0.4
```

What is the mean? (Hint, watch Lecture 4 on expectations of PMFs.)

- 4
- 2
- 3
- 1

sum(x*p)

### Answer
- 3

Question 6 
----------
A web site (http://www.medicine.ox.ac.uk/bandolier/band64/b64-7.html) for home pregnancy tests cites the following: “When the subjects using the test were women who collected and tested their own samples, the overall sensitivity was 75%. Specificity was also low, in the range 52% to 75%.” Assume the lower value for the specificity. Suppose a subject has a positive test and that 30% of women taking pregnancy tests are actually pregnant. What number is closest to the probability of pregnancy given the positive test?

(Hints, watch Lecture 3 at around 7 minutes for a similar example. Also, there's a lot of Bayes' rule problems and descriptions out there, for example here's one for HIV testing. Note, discussions of Bayes' rule can get pretty heady. So if it's new to you, stick to basic treatments of the problem. Also see Chapter 3 Question 5.)

- 20%
- 40%
- 10%
- 30%

(Sens * P(D))/(sens * P(D) + (1 - spec) * (1 - P(D)))
(.75*.30)/(.75*.30) + (.48 *.7)
.225/(.225 + .336)=.4
The probability of Preg given a + test is P(Preg|+).

P(Preg|+) = [P(+|Preg)P(Preg)]/[P(+|Preg)P(Preg)+P(1 - P(-|Pregc)(1-P(Preg)))
P(Preg|+) = [Sens*P(Preg)]/{[Sens*P(Preg)] + Spec*(1 - P(Preg))}

Sensitivity = P(+|Preg) = .75, Specificity = P(-|Pregc) = .52
P(Preg) = .30, 

          = [(.75 * .30)/[(.75 * .30) + .52 * (1 - .30)] ≈ 0.40
          = .225/(.225 + .52 - .364)
          = .225/.381 = .59

### Answer
- 40%
