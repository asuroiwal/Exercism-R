parse_phone_number <- function(number_string) {
  # Variable to store the result
  formatted_number = ""
  # Extracting only numbers from the string
  # For each character
  for(i in 1:nchar(number_string)){
    # If it is a number
    if(substring(number_string,i,i) >=0 && substring(number_string,i,i) <=9){
      # Add it to the result
      formatted_number = paste0(formatted_number, substring(number_string,i,i))
    }
  }
  # Check if the length of formatted numbers is 10
  if(nchar(formatted_number)==10){
    # Get the first and the fourth number to see if they are in the range (2.9)
    first_num = substring(formatted_number,1,1)
    fourth_num = substring(formatted_number,4,4)
    if((first_num >= 2 && first_num <= 9) && ((fourth_num >= 2 && fourth_num <= 9))){
      # If all the conditions are satisfied return the number
      return(formatted_number)
    }
  }
  # If there is an additional number
  else if(nchar(formatted_number)==11){
    # If the addtional number is the country code
    if(substring(formatted_number,1,1) == 1){
      # Get the first and the fourth number to see if they are in the range (2.9)
      first_num = substring(formatted_number,2,2)
      fourth_num = substring(formatted_number,4,4)
      if((first_num >= 2 && first_num <= 9) && ((fourth_num >= 2 && fourth_num <= 9))){
        # If all the conditions are satisfied return the number
        return(substring(formatted_number,2,nchar(formatted_number)))
      }
    }
  }
}
