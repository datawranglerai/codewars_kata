library(testthat)

# I always thought that my old friend John was rather richer than he looked,
# but I never knew exactly how much money he actually had. One day (as I was 
# plying him with questions) he said:
#     * "Imagine I have between m and n Zloty..." (or did he say Quetzal? I
#       can't remember!)
#     * "If I were to buy 9 cars costing c each, I'd only have 1 Zloty (or was
#       it Meticals?) left."
#     * "And if I were to buy 7 boats at b each, I'd only have 2 Ringglets (or
#       was it Zloty?) left."
# 
# Could you tell me in each possible case:
#     1. how much money f he could possibly have ?
#     2. the cost c of a car?
#     3. the cost b of a boat?
# 
# Each answer should be given as ["M: f", "B: b", "C: c"] and all the answers as
# [ ["M: f", "B: b", "C: c"], ... ]. "M" stands for money, "B" for boats, "C"
# for cars.
# 
# Note: m, n, f, b, c are positive integers, where 0 <= m <= n or m >= n >= 0.
# m and n are inclusive.

howmuch <- function(m, n) {
        
        valid_cost <- function(x) x %% 1 == 0 & x > 0
        
        possibilities <- list()
        
        for (f in m:n) {
                
                b <- (f - 2) / 7
                c <- (f - 1) / 9
                
                if ( valid_cost(b) & valid_cost(c) ) {
                        costs <- sprintf("[M: %s B: %s C: %s]", f, b, c)
                        possibilities <- append(possibilities, costs)
                }
        }
        
        paste0("[", paste(possibilities, collapse = ""), "]")
        
}

#test_file("./R/tests/testhat/test_howmuch.R")
