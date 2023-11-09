#' @title Finding the Betas
#' @description This function will spit out the desired \code{beta} values for
#' least squares
#' @param Beta A \code{vector} containing the desired starting coeffs for estimation
#' @param y A \code{vector} containing outputs
#' @param x A \code{matrix} containing predictors
#' @param Norm A \code{character} defining loss to use (either 'L1' or 'L2')
#' @return A \code{vector} giving the optimized beta values
#' @author Charles Benfer
#' @importFrom stats
#' @export
#' @examples
betas <- function(Beta, y, x, Norm){

  optim(Beta, squared_error, Y=y, X=x, norm=Norm)

}


