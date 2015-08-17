# Calculate 3 + 4
3 + 4

# Calculate 6 + 12

6 + 12

#############################################
# Assign the training set
train <- read.csv(url("http://s3.amazonaws.com/assets.datacamp.com/course/Kaggle/train.csv"))
  
# Assign the testing set
test <- read.csv(url("http://s3.amazonaws.com/assets.datacamp.com/course/Kaggle/test.csv"))
  
# Make sure to have a look at your training and testing set
print(train)
  print(test)

#############################################
# Your train and test set are still loaded in
  str(train)
  str(test)

# Passengers that survived vs passengers that passed away
# absolute numbers
  table(train$Survived)
# percentages
  prop.table(table(train$Survived))

    
# Males & females that survived vs males & females that passed away
  table(train$Sex, train$Survived)

# row-wise proportions
  prop.table(table(train$Sex, train$Survived),1)
# column-wise proportions
  prop.table(table(train$Sex, train$Survived),2)

#############################################
# Your train and test set are still loaded in
  str(train)
  str(test)

# Create the column child, and indicate whether child or no child
  train$Child <- NA
  train$Child[train$Age < 18] <- 1
  train$Child[train$Age >= 18] <- 0

# Two-way comparison
  table(train$Child, train$Survive)
  prop.table(table(train$Child, train$Survived), 1)
  prop.table(table(train$Child, train$Survived), 2)

#############################################
# Your train and test set are still loaded in
  str(train)
  str(test)

# prediction based on gender 
  test_one <- test
  test_one$Survived <- NA
  test_one$Survived[test_one$Sex=="male"] <- 0
  test_one$Survived[test_one$Sex=="female"] <- 1
