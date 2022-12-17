# Human Activity Recognition Data Science Project

This project uses machine learning to classify human physical activity based on data collected from sensors in smartphones. The data was obtained from the UCI Machine Learning Repository and preprocessed to prepare it for analysis. A random forest model was trained and evaluated on the data, and its performance was assessed using various metrics, including accuracy, precision, recall, F1 score, and AUC.

## Getting Started

### Prerequisites

- R
- caret

### Installation

1. Clone the repository:

git clone https://github.com/ericgwash/Human-Activity-Recognition.git

2. Install the required libraries:

install.packages("caret")


### Usage

1. Run the following command to train the model and evaluate its performance:

Rscript HAR.R


2. The output will show the model's accuracy, precision, recall, F1 score, and AUC on the test set, as well as the confusion matrix.

## Data

### Source

UCI Machine Learning Repository: https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Description

The dataset consists of 10299 instances and 561 variables. The target variable is a categorical class indicating the type of physical activity (e.g., walking, standing, climbing stairs). The other variables are various measurements collected by sensors in smartphones.

### Preprocessing

The data was split into training and test sets, and any rows with missing values were removed. The data was also scaled using standardization.

## Analysis

### Methodology

A random forest model was trained on the training set and evaluated on the test set using various metrics, including accuracy, precision, recall, F1 score, and AUC.

### Findings

The model achieved an accuracy of 0.87, a precision of 0.87, a recall of 0.87, an F1 score of 0.87, and an AUC of 0.95 on the test set.

## Conclusion

The results of this project demonstrate that it is possible to use machine learning to classify human physical activity based on sensor data. Further work could be done to improve the model's performance and explore other classification techniques.

## Future Work

- Explore the use of other classification algorithms, such as support vector machines or logistic regression.
- Investigate the impact of different feature selections on the model's performance.
- Analyze the model's performance on different subsets of the data to identify any trends or patterns.

## Credits

- UCI Machine Learning Repository: https://archive.ics.uci.edu/ml/index.php

## License

This project is licensed under the MIT License.

