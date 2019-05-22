#Power for Cars function- change rolling coeff

#Define parameters and units
#' @param cdrag coefficient due to drag default=0.3 
#' @param crolling coefficient due to rolling/friction default=0.015
#' @param v vehicle speed (m/2)
#' @param m vehicle mass (kg)
#' @param A area of front of vehicle (m2)
#' @param g acceleration due to gravity (m/s) default=9.8
#' @param pair (kg/m3) default =1.2
#' @return power (W)

autopower = function(V, m, A, cdrag=0.3, crolling=0.0075,pair=1.2,g=9.8) {
  P = crolling*m*g*V + 1/2*A*pair*cdrag*V**3
  return(P)
}

autopower(m = 31752, V= 30, A= 2.5)

