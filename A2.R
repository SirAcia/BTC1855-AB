#ANGELA BAKAJ
#BTC1855 ASSIGNMENT 2
# Code comments by Zach, marked by comments beginning wtih "ZC"

#1. Prompt the user to enter a three digit positive number
tdn <- readline(prompt = "Enter a three-digit positive number: ")


#2a. Check if the user input's three digit number (tdn) is numeric. 
# b. If the tdn is not numeric, print an error message and quit.
# NOTE: instead of "quitting", I opted for the "stop" option to prevent R-studio itself from quitting entirely.
if (is.na(as.numeric(tdn))) { 
  # ZC - There's a typo here! when I try to source it, 
  # "enter_tdn" is undefined, think you meant to put "tdn" :) 
  print("Error: Input is not numeric") 
  stop(save = "no")
  #ZC - Maybe use a more substantial error message to indicate what causes the error?
  #ZC - Kinda like the sass of the response of just "no" though, thats funny lol 
}


#3. Check if the tdn is narcissistic: The tdn must be first split into digits to check if the sum of the cubes of these digits equates to the number itself.
# To extract the digits on their own, we need to first convert them the tdn into a character string.
tdn_string <- as.character(tdn)
#ZC - I checked to see and readline stores the input as a character type, tried runnign your code without this line and ti still works. Maybe this line isn't needed? 

# After conversion, we can now extract the digits individually using the "strpsplit" function.
tdn_split <- strsplit(tdn_string, split = "")

# In order to then work with these digits, we must then convert these individual digits into a vector using the "unlist" function.
# NOTE: This process is called "flattening".
tdn_flat <- unlist(tdn_split)
#ZC - Very cool use of flattening, I didn't even know this was a thing

# This "flattened" vector is one of characters; in order to perform math on it (like taking cubes and sums) we need integers; use the "as.integer" function to convert the character vector into an integer vector.
tdn_digits <- as.integer(tdn_flat)

# Now, we have extracted, integer digits that we may perform math on. Use the "sum" function and "^3" operation to take the sum of the cubed three digits.
tdn_sum_of_cubes <- sum(tdn_digits^3)
#ZC - thats so smart of you to include the cubing in the sum, wowow


#4. Tdn Narcissism-Check result: In order to check and print if the number is indeed narcissistic, we need to set a condition statement based on the fact that the sum of the tdn's digit's cubes must equal the tdn itself to be considered a narcissistic number.
if (tdn_sum_of_cubes == tdn) {
  print(paste(tdn, "is a narcissistic number."))
} else {
  print(paste(tdn, "is not a narcissistic number." ))
}
  
#ZC - just a thought for next time, think about how 
# you can "idiot-proof" your code (i.e. steps for if I enter more 
# than 3 numbers or negative numbers which return slightly odd results
# unaccounted for errors), but overall it's really good & cleaner than mine! 
