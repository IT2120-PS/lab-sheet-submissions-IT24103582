
setwd("")

cat("1. Binomial example\n")
cat("i. X follows a Binomial distribution with n = 50, p = 0.85\n")


prob_geq_47 <- pbinom(46, size = 50, prob = 0.85, lower.tail = FALSE)
cat("ii. P(X >= 47) =", round(prob_geq_47, 4), "\n\n")


cat("2. Poisson example\n")
cat("i. X = Number of customer calls received per hour\n")
cat("ii. X follows a Poisson distribution with lambda = 12\n")


p_leq_15 <- ppois(15, lambda = 12)   # P(X <= 15)
p_leq_14 <- ppois(14, lambda = 12)   # P(X <= 14)
prob_eq_15 <- p_leq_15 - p_leq_14    # P(X = 15)

cat("iii. P(X = 15) =", round(prob_eq_15, 4), "\n")
