setwd("C:\\Users\\user\\Desktop\\IT24103582_Lab_07")

# ----- Problem 1: Uniform distribution -----
cat("1. Train arrival time (Uniform)\n")
cat("X ~ Uniform(0, 40) minutes\n")
# P(10 <= X <= 25) = F(25) - F(10)
prob_uniform <- punif(25, min = 0, max = 40) - punif(10, min = 0, max = 40)
cat("P(10 <= X <= 25) =", round(prob_uniform, 4), "\n\n")

# ----- Problem 2: Exponential distribution -----
cat("2. Software update time (Exponential)\n")
cat("X ~ Exponential(rate = 1/3)\n")
# P(X <= 2) = F(2)
prob_exp <- pexp(2, rate = 1/3)
cat("P(X <= 2) =", round(prob_exp, 4), "\n\n")

# ----- Problem 3: Normal distribution -----
cat("3. IQ scores (Normal)\n")
cat("X ~ Normal(mean = 100, sd = 15)\n")

# (i) P(X > 130) = 1 - F(130)
prob_normal <- 1 - pnorm(130, mean = 100, sd = 15)
cat("i. P(IQ > 130) =", round(prob_normal, 6), "\n")

# (ii) 95th percentile = qnorm(0.95)
iq_95th <- qnorm(0.95, mean = 100, sd = 15)
cat("ii. 95th percentile IQ =", round(iq_95th, 4), "\n")
