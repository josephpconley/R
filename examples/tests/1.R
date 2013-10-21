test.factorial <- function(){
	checkEquals(6, factorial(3))
	checkEqualsNumeric(6, factorial(3))
	checkIdentical(6, factorial(3))
	checkTrue(2 + 2 == 4, 'Arithmetic works')
	checkException(log('a'), 'Unable to take the log() of a string')	
}