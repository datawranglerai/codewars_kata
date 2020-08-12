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

rgb <- function(r, g, b) {
        
        # TODO make sure values are between 0 and 255 e.g. -20 == 0, 275 == 255
        
        rgb_clean <- lapply( c(r, g, b), function(x) {
                ifelse()
        } )
        
        paste(lapply(rgb_clean, decimal_to_hexadecimal), collapse = "")
}
