library('RUnit')
 
source('C:/workspace/joec/r/factorial.R')
 
test.suite <- defineTestSuite("factorial",
                              dirs = file.path("C:/workspace/joec/r/tests"),
                              testFileRegexp = '^\\d+\\.R')
 
test.result <- runTestSuite(test.suite)
 
printTextProtocol(test.result)