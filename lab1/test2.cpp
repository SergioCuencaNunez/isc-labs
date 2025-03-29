#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
float test2() {
  float a = 1.0f / 81;
  float b = 0;
  for (int i = 0; i < 729; ++i)
    b += a;
  return b;
}
