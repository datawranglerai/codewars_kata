#' The rgb function is incomplete. Complete it so that passing in RGB decimal 
#'   values will result in a hexadecimal representation being returned. Valid 
#'   decimal values for RGB are 0 - 255. Any values that fall out of that range 
#'   must be rounded to the closest valid value.
#'   
#'   Note: Your answer should always be 6 characters long, the shorthand with 3 
#'   will not work here.


dec2hex <- function(decimal) {
        hexadecimals <- c(1:9, LETTERS[1:6])
        if ( decimal <= 15 & decimal >= 0 & decimal %% 1 == 0) {
                hexadecimals[decimal]
        } else {
                stop('dec must be a whole number between 0 and 15!')
        }
}


decimal_to_hexadecimal <- function(x) {
        
        quotient <- x %/% 16
        remainder <- x %% 16  # last digit of hexadecimal number
         
        quotient <- x
        
        remainders <- c()
        while ( quotient > 16 ) {
                remainder <- quotient %% 16
                quotient <- quotient %/% 16
                remainders <- c(remainder, remainders)
        }
        
        final_code <- c(quotient, remainders)
        hex_code <- lapply(final_code, dec2hex)
        
        paste0(dec2hex(first_digit), dec2hex(remainder))
        
        
}

rgb <- function(r, g, b) {
        
               
}
