#defining the valies for p
p <- seq(0, 1, by = 0.01)

# Calculate MSE for estimator p̂1
mseP1 <- (3/49) * p * (1 - p) + (-1/7 * p)^2

# Calculate MSE for estimator p̂2
msep2 <- (1/12) * p * (1 - p)

# Plot the MSE values
  plot(p, mseP1, type = "l", col = "purple", ylab = "MSE", xlab = "p", main = "Comparing the MSE")
lines(p, msep2, col = "green")
legend("topright", legend = c("MSE(phat1)", "MSE(phat2)"), col = c("purple", "green"), lty = 1)
