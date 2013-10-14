library('RUnit')

ts <- defineTestSuite('RUnit', getwd())
tests <- try(runTestSuite(ts))

printTextProtocol(tests)