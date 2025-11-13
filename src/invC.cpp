#include <RcppArmadillo.h>
using namespace Rcpp;

// [[Rcpp::export]]
arma::mat invC(const arma::mat& M) {
  
  if (M.n_rows != M.n_cols){
    stop("Erreur : Le nombre de colonne doit être le même que le nombre de ligne.");
  }
  
  double det= arma::det(M);
  if (det==0){
    stop("Erreur : le déterminant est égal à zéro.");
  }
  
  arma::mat Minv = inv(M);
  return(Minv);
}

