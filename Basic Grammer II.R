### Data Structure of R

# Vertor
a <- c('red','green','blue')
print(a)
print(class(a)) # character, 값을 구성하는 원소들의 데이터 타입이 출력된다
str(a) # chr [1:3] ..., R은 indexing을 1부터 counting한다
print(is.vector(a)) # True

b <- c(12, 13.5, 0)
print(b)
print(class(a)) # numeric
str(b) # num [1:3] ...

# List(array)
c <- list(a, b)
print(c) # 1D array * 2
print(class(c)) # list
str(c) # 속성이 다른 다양한 데이터 구조가 출력된다.
print(is.list(c)) # C는 list인가? -> TRUE

# Matrix
d <- matrix(c('a','a','b','c','b','a'), nrow = 2, ncol = 3)
print(d) # matrix 출력
print(class(d)) # matrix, array
str(d)
print(is.matrix(d)) # TRUE
print(is.array(d)) # TRUE -> matrix는 행렬이자 배열이다
print(dim(d)) # dimension, (2, 3)

# Array
e <- array(c('green','yellow'), dim = c(2, 2, 2))
print(e) # broadcasting 기본으로 적용된다
print(class(e)) # array
str(e)
print(is.matrix(e)) # FALSE
print(is.array(e)) # TRUE
print(dim(e)) # dimension, (2, 2, 2)

# Factor
f <- factor(c('green','green','yellow','red','red','red','green'))
print(f) # 문자열처럼 보이지만 Level이 새로 추가된다
print(class(f)) # factor
str(f)
print(is.factor(f)) # TRUE

# DataFrame
g <- data.frame(gender = c('Male','Male','Female'),
                height = c(152, 171.5, 165),
                weight = c(81, 93, 78),
                Age = c(42, 38, 26))
print(g)
print(class(g)) # data.frame
str(g)
print(is.data.frame(g)) # TRUE
print(dim(g)) # dimension of data frame, (3, 4)
# rm() : 변수에 저장된 데이터를 삭제하는 함수