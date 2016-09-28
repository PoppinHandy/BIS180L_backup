##R tutorial:

####Commands:

c(x, y,...z): concatenates all arguments together into vector

**File Manipulation**:
getwd(): Returns current working directory
ls(): list all objects in the local workspace
list.files() or dir() = list all files in working directory
args(command) = determine arguments in command
dir.create("name", recursive = FALSE) = creates a directory in the current working directory called "name"
setwd("name") = sets the working directory to "name"
file.create("name_file") = Creates a file in working directory called "name_file"
list.files() = Lists all files in current directory
file.exists("name") = Checks to see if "name" exists
file.info("name") = Checks information (like mode, size, etc.) of "name"
file.rename(from, to)
file.copy(from, to)
file.path(fileName, fileName2...) = Provides relative path like fileName/fileName2...etc
unlink(fileName, recursive = ) = Removes files

**Numbers**:
seq(a, b, by=, length=) or a:b = Returns the sequence from a to b incrementally by the by argument with length specified by length argument
seq_along(sequence) = Prints a sequence with length sequence
rep(number, times=, each=) = Creates a vector with number repeats
Inf = infinity
Negative sign in front of vector index means dont take that index/number

**String Manipulation**:
paste(my_char, collapse=, sep=) = Joins the elements of my_char separated by collapse argument or joins two words separated by sep argument
LETTERS = predefined variable containing vector of 26 alphabet characters
Dont use var == NA or else it will return the NAs in var, use is.na() instead for boolean
Double quotes = character string

**Vectors and Matrices**:
dim(vect) <- c(a, b) = Assigns to vect var a 2D vector with 4 Rows and 5 Columns
attributes(vect) = Returns the dimensions of vector
class(vect) = Returns the class of vector ("matrix", etc)
Can alos use matrix(data, nrow=, ncol=) to make a matrix with nrows, ncolumns with data in it
cbind(vect1, vect2) = combines columns of vect1 and vect2
colnames(matrix) = sets the colnames attribute of matrix
 
**Misc**:
object.size(data_struct)
summary(data_struct)
summary() provides different output for each variable, depending on its class. For numeric data such as Precip_Min, summary() displays the minimum, 1st quartile, median, mean, 3rd quartile, and maximum. These values help us understand how the data are distributed.

For categorical variables (called 'factor' variables in R), summary() displays the number of times each value (or 'level') occurs in the data. For example, eachvalue of Scientific_Name only appears once, since it is unique to a specific plant. In contrast, the summary for Duration (also a factor variable) tells us that our dataset contains 3031 Perennial plants, 682 Annual plants, etc.


##Rmarkdown

To denote R code: start code block with ```{r Some TItle} and then end it with ````
Anything outside of the code block is formatted using normal Markdown rules.
