#' This function is intended to teach you how to test a function.
#' 
#' Furthermore, it teaches you how to comment a function in R. This function
#' receives three operand, returning the subtraction of a and c if b is "Negative".
#' If b is "Positive", it returns the addition of a and c. 
#' @param a Numeric, first operand
#' @param b String, type of operation
#' @param c Numeric, second operand
#' @return (a-c) if b == "Negative", (a+c) if b == "Positive"
#' @examples 
#' my_awesome_function(2, "Negative", 3)
#' # -1
#' my_awesome_function(2, "Positive", 3)
#' # 5

my_awesome_function <- function(a, b, c) {
  # Ensure a and c are numeric
  if (!is.numeric(a) || !is.numeric(c)) {
    stop("Both 'a' and 'c' must be numeric")
  }
  
  # Ensure b is either "Positive" or "Negative"
  if (!is.character(b) || !b %in% c("Positive", "Negative")) {
    stop("'b' must be either 'Positive' or 'Negative'")
  }
  
  # Perform the operation (vectorized)
  if (b == "Negative") {
    return(a - c)
  } else {
    return(a + c)
  }
}
