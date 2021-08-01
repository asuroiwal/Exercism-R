leap <- function(year) {
  is_leap = FALSE
  if(year%%4 == 0 & year%%100 != 0){
    is_leap = TRUE
  }
  if(year%%4 == 0 & year%%100 == 0 & year%%400 == 0){
    is_leap = TRUE
  }
  return(is_leap)
}
