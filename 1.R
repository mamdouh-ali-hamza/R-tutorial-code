first_variable <- "This is my variable"
second_variable <- 12.5
vec_1 <- c(13, 54, 1, 5, 54, 5.6)
vec_1

# vectors: atomic vectors (same type)
c(2.5, 48.5, 101.5) #Double 
c(1L, 5L, 15L) #Integer 
c("Sara" , "Lisa" , "Anna") #Character 
c(TRUE, FALSE, TRUE) #Logical 

typeof(c("a" , "b"))
typeof(c(1L, 5L, 15L))
typeof(c(1 , 2))

x <- c(33.5, 57.75, 120.05)
length(x)

#is.logical(), is.double(), is.integer(), is.character()
x <- c(2L, 5L, 11L)
is.integer(x)
y <- c(TRUE, TRUE, FALSE)
is.character(y)

#Naming vectors 
x <- c(1, 3, 5)
names(x) <- c("a", "b", "c")
x


# vectors: lists (different type)
list("a", 1L, 1.5, TRUE)
list(list(list(1 , 3, 5))) #list of list of list
str(list("a", 1L, 1.5, TRUE))
z <- list(list(list(1 , 3, 5)))
str(z)

#Naming list
list('Chicago' = 1, 'New York' = 2, 'Los Angeles' = 3) 

