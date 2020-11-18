import XCTest

import TextualTests

var tests = [XCTestCaseEntry]()
tests += TextualTests.allTests()
XCTMain(tests)
