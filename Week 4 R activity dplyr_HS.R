#Week 4: dplyr package

#1
#Task: Write the function to get a dataset from Base R: Titanic
#and give the dataframe a new name of your choice
#(hint: you will want your data to be a dataframe. Use the function: as.data.frame(Titanic))
  first_hs_df <- as.data.frame(Titanic)

#2
#See the top rows of the data
#TASK: Write the function to see the top rows of the data
  head(first_hs_df, n = 10) #assuming first 10 rows
  
#3
#Install and call the package dplyr
#TASK: Write the functions to install and call dplyr
  install.packages("dplyr")
  library(dplyr)
  
#4
#Let's just see the Survived and Sex columns
#Task: Write the function to 'select' the Survived and Sex columns 
#(hint: use the 'select' function)
  first_hs_df %>% select(Survived, Sex)
  
#5
#Let's name the dataset with just the two columns, Survived and Sex
#TASK: Write the function to save the two columns as one new dataset
#and give it a name
  second_hs_df <- first_hs_df %>% select(Survived, Sex)
  
#6
#Let's get rid of the Sex column in the new dataset created above
#TASK: Write the function that deselects the sex column
#(hint: use the 'select' function to not select a -column)
  second_hs_df %>% select(-'Sex')
  
#7
#Let's rename a column name
#TASK: Write the function that renames 'Sex' to 'Gender'
  second_hs_df %>% rename(Gender = Sex)
  
#8
#Let's make a new dataframe with the new column name
#TASK: Write the function that names a new dataset that includes the 'gender' column
  third_hs_df <- second_hs_df %>% select(Survived, Gender=Sex)
  
#9
#Let's 'filter' just the males from our dataset
#TASK: Write the function that includes only rows that are 'male'
  male_only_df <- third_hs_df %>% filter(Gender == "Male")
  
#10
#Let's 'arrange' our data by gender (not the data you just filtered)
#TASK: Write the function to group the data by gender (hint: arrange())
  third_hs_df %>% arrange(Gender)
  
#11
#Let's see how many people were examined in the dataset (total the frequency in the original dataframe)
#TASK: Sum the Freq column
#TASK: After you run it, write the total here:__2201__
  total_freq <- sum(first_hs_df$Freq)
  
#12
#Since we have a males dataset, let's make a females dataset
#TASK: Write the function that includes only rows that are 'female'
  female_only_df <- third_hs_df %>% filter(Gender == "Female")
  
#13
#And now let's join the males and females
#TASK: Write the function that joins the male and female rows 
#(hint: try using 'union' or 'bind_rows')
  fourth_hs_df <- bind_rows(male_only_df,female_only_df)

#14
#Optional Task: add any of the other functions 
#you learned about from the dplyr package

#slice could also be used for Q.2
  first_hs_df %>% slice(1:10)
  first_hs_df %>%  slice_head(n=10)
  
#mutate - to change Class values from 'Crew' to '4th'
  first_hs_df %>% mutate(Class = if_else(Class == "Crew", "4th", Class))

