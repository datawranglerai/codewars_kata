#' The rgb function is incomplete. Complete it so that passing in RGB decimal 
#'   values will result in a hexadecimal representation being returned. Valid 
#'   decimal values for RGB are 0 - 255. Any values that fall out of that range 
#'   must be rounded to the closest valid value.
#'   
#'   Note: Your answer should always be 6 characters long, the shorthand with 3 
#'   will not work here.


dec2hex <- function(decimal) {
        hexadecimals <- c(0:9, LETTERS[1:6])
        hexadecimals[decimal + 1]
}


decimal_to_hexadecimal <- function(x) {
         
        quotient <- x
        
        remainders <- c()
        while ( quotient >= 16 ) {
                remainder <- quotient %% 16
                quotient <- quotient %/% 16
                remainders <- c(remainder, remainders)
        }
        
        final_code <- c(quotient, remainders)
        
        hex_code <- paste(
                dec2hex(final_code), 
                collapse = ""
        )
        
        sprintf("%02s", hex_code)
        
}


check_limits <- function(...) {
        x <- c(...)
        ifelse(x < 0, 0, ifelse(x > 255, 255, x))
}

rgb <- function(r, g, b) {
        
        paste(
                lapply(
                        check_limits(r, g, b), 
                        decimal_to_hexadecimal
                ), 
                collapse = ""
        )
}

