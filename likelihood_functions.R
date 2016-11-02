
likelyhood <- function(n, y, theta) {
    return(theta^y * (1-theta)^(n-y))
}

theta <- seq(from=0.01, to=0.99, by=0.01)

plot(theta, likelyhood(400, 72, theta))

# plot is maximized at 72/400
print(72/400)

abline(v=72/400)

loglikelyhood <- function(n, y, theta) {
    return(y*log(theta) + (n-y)*log(1-theta))
}
plot(theta, loglikelyhood(400, 72, theta))
abline(v=72/400)
