#Desc: Heatmap Tutorial
#Date:2023-02-06
#Author:Nimali Rathnayake

#Method 1 - Base Heatmaps() ----

#Let's explore the mtcars data

?mtcars
dim(mtcars)
str(mtcars)
head(mtcars)
view(mtcars)
View(mtcars)

#prepare the dataset for a heatmap
class(mtcars)

#heatmap need the data in matrix
mtcars_matrix <- data.matrix(mtcars)
class(mtcars_matrix)

#visualise our heatmap
heatmap(mtcars_matrix, scale = "column")

# Customise the colours

heatmap(mtcars_matrix,
        scale = "column",
        col = hcl.colors(n=20, rev = TRUE))

#Challenge 1: Remove the column dendrograms

heatmap(mtcars_matrix,
        scale = "column",
        col = hcl.colors(n=20, rev = TRUE),
        Colv = NA)

# Method 2- gplots heatmaps.2() ----
install.packages("gplots")
library(gplots)
?heatmap.2

# load in a protein data example

rawdata <- read.csv("https://raw.githubusercontent.com/ab604/heatmap/master/leanne_testdata.csv")
 # This means that leave 1 and 8 columns and keep 2-7 columns
rawdata <- rawdata[ , 2:7]

colnames(rawdata) <- c(paste("Control", 1:3, sep = "_"),
                       paste("Treatment", 1:3, sep = "_"))

# turn our dataframe into a matrix
class(rawdata)
data_matrix <-  data.matrix(rawdata)

#visualise
heatmap.2(data_matrix,
          scale =  "row")







