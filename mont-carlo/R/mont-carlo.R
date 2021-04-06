mont_carlo <- function(n,ch) {
    numbers <- c()
    probs <- c()
    for(i in 1:n){
        valid_bicycles <- 0
        for(i in 1:ch){
            a <- runif(10, 0, 1)
            if(a[1] <= 0.8){
                valid_bicycles <- valid_bicycles + 1
            }
        }
        numbers <- c(numbers, valid_bicycles)
        prob <- valid_bicycles/ch
        probs <- c(probs , prob)
    }
    std = sd(numbers)
    valid_bicycles = mean(numbers)

    return(list(std,valid_bicycles))
}
a <- mont_carlo(10000,10)
a