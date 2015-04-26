## These functions are meant to optimize the process of calculating and storing the inverse of a matrix.
## This is done by calculating the inverse of a matrix, then storing this inverse and checking it against
## the next input matrix. If the two are the same, the function will return the cached inverse to avoid
## duplication of efforts.
 

## makeCacheMatrix returns a list of functions that can later be called by cacheSolve. 

makeCacheMatrix <- function(x = matrix()) {

      mat <<-x                                      #stores the input matrix in parent enviro
      inv_calculated <<-FALSE                       #has the inverse been calculated? YES/NO
      
      set <- function (x){                          #reads in the input matrix
        mat_store <<-x                              #resets logical flag to FALSE, indicating
        inv_calculated <<-FALSE                     #that must be recalculated
      }
      
      get <-function() {                            #retrieves stored matrix
        mat  
      }
      
      set_inverse <- function (inv) {               #reads in inverse matrix from solve()
        inverse <<-inv                              #stores inverse matrix 
        inv_calculated<<-TRUE                       #sets inverse_calculated flag to YES
      }
      
      get_inverse <-function(inverse) {
        inverse                                   #retrieves/displays inverse matrix
      }
      
      list (set=set, get=get, set_inverse=set_inverse, 
            get_inverse=get_inverse)  
                                                    #creates list containing functions
      
  
}


## Write a short comment describing this function

cacheSolve <- function(a, ...) {

  
  
  if (!exists("mat_store")) {             #checks if matrix is cached/stored
    mat_store <<-mat
  }
  
  z<-(mat_store==mat)                     # checks if matrix_stored is equal to input matrix
  
  if (z==TRUE){
    return (inverse)
  }
  
  cached <-inv_calculated                   #reads in inverse_calculated flag
  
  if (cached==TRUE) {
    return (inverse)                        #if already calculated, return the cached inverse
  }
  
  #else
  
  matrix_1<-mat                             #read in matrix that was previously stored in parent enviro
  
  i <- solve(matrix_1)                      #solve() for the inverse of the 'm' input matrix
  
  a$set_inverse(i)                          #set the inverse to the input 'i' function
  inv_calcuated <<- TRUE                    #set flag to TRUE to indicated that inverse
  mat_store<<-matrix_1                      #store input matrix in parent enviro
                                            #has been calculated and cached
  i                                         #return inverse of the matrix
  
  
}      
  
  ## Return a matrix that is the inverse of 'x'
  
  

