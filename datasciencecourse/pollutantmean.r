pollutantmean <- function(directory, pollutant, id=1:332) { 
  
  # Create a list of files in the directory argument
  files_list <- list.files( "specdata", full.names = TRUE) 
  df <- data.frame() #creates an empty data frame
  
  # Loop through the files, rbinding them together
  for (i in id) {
    df <- rbind(df, read.csv(files_list[i]))
  }
  
  # Subset the column that matches the 'pollutant'  argument
  df_subset <- df[,pollutant] 
  
  # Calculate the mean value
  mean(df_subset, na.rm = TRUE) 
}


