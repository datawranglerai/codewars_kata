#' A Rule of Divisibility by 13
#' 
#' When you divide the successive powers of 10 by 13 you get the following
#' remainders of the integer divisions:
#' 
#'     1, 10, 9, 12, 3, 4. 
#' 
#' Then the whole pattern repeats.
#' 
#' Hence the following method: Multiply the right most digit of the number with
#' the left most number in the sequence shown above, the second right most digit
#' to the second left most digit of the number in the sequence. The cycle goes
#' on and you sum all these products. Repeat this process until the sequence of
#' sums is stationary.
#' 
#' Example: What is the remainder when 1234567 is divided by 13?
#' 
#'     7×1 + 6×10 + 5×9 + 4×12 + 3×3 + 2×4 + 1×1 = 178
#' 
#' We repeat the process with 178:
#'     
#'     8x1 + 7x10 + 1x9 = 87
#'     
#' and again with 87:
#'     
#'     7x1 + 8x10 = 87
#' 
#' 
#' 


thirt <- function(n) {
        
        int_remainders <- c(1, 10, 9, 12, 3, 4)
        
        intsplit <- function(x) {
                #' Splits an integer into its digits
                #' @param x integer;
                #' @return vector of integers;
                stopifnot(x %% 1 == 0)  # validate integer input
                as.integer(unlist(strsplit(as.character(x), split = NULL)))
        }
        
        n_rev <- rev(intsplit(n))
        
        product <- sum(suppressWarnings(
                n_rev * rep_len(int_remainders, length.out = length(n_rev))
                ))
        
        # Base case
        if ( product == n ) {
                product
        } else {
                thirt(product)
        }
        
}
