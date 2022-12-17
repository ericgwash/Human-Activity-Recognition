library(caret)
# Extract the zip file
unzip("UCI HAR Dataset.zip")

# Load the training data
train <- read.table("UCI HAR Dataset/train/X_train.txt")

# Load the labels
train_labels <- read.table("UCI HAR Dataset/train/y_train.txt")
train_labels <- as.data.frame(train_labels)

# Load the subject IDs
train_subjects <- read.table("UCI HAR Dataset/train/subject_train.txt")

# Load the feature names
features <- read.table("UCI HAR Dataset/features.txt")

# View the first few rows of the data
head(train)

# View the summary statistics for the data
summary(train)

# Create a plot of the data
#plot(train)

# Remove any rows with missing values
train <- na.omit(train)

# Scale the data using standardization
train <- scale(train)
# Load the caret library

dim(train_labels)
dim(indices)

min(indices)
max(indices)
# Split the data into training and test sets
indices <- sample(1:nrow(train_labels), size = floor(0.7 * nrow(train_labels)))
set.seed(123)
#indices <- createDataPartition(train_labels$V1, p = 0.7, list = FALSE)
train_data <- train[indices, ]
train_labels <- train_labels[indices, ]
test_data <- train[-indices, ]
test_labels <- train_labels[-indices, ]

# Train a random forest model
model <- train(x = train_data, y = train_labels$V1, method = "rf")

# Make predictions on the test set
predictions <- predict(model, test_data)


# Calculate the model's accuracy on the test set
accuracy <- confusionMatrix(predictions, test_labels$V1)$overall[1]

# Calculate the model's precision on the test set
precision <- confusionMatrix(predictions, test_labels$V1)$byClass[1]

# Calculate the model's recall on the test set
recall <- confusionMatrix(predictions, test_labels$V1)$byClass[3]

# Print the results
cat("Accuracy:", accuracy, "\n")
cat("Precision:", precision, "\n")
cat("Recall:", recall, "\n")

# Load the caret library


# Calculate the model's F1 score on the test set
f1_score <- F1(predictions, test_labels$V1)

# Calculate the model's AUC on the test set
auc <- ROC(predictions, test_labels$V1)

# Print the results
cat("F1 score:", f1_score, "\n")
cat("AUC:", auc, "\n")

