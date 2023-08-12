module AwesomeDateTest exposing (suite)

import Expect
import Test exposing (..)
import AwesomeDate as Date exposing (Date)

exampleDate : Date
exampleDate =
    Date.create 2012 6 2

suite : Test
suite =
    describe "AwesomeDate"
        [ testDateParts
        , testIsLeapYear
        , testAddYears
        ]

testDateParts : Test
testDateParts =
    describe "date part getters"
        [ test "retrieves the year from a date" <|
            \_ ->
                Date.year exampleDate
                    |> Expect.equal 2012
        ]

testIsLeapYear : Test
testIsLeapYear =
    describe "isLeapYear"
        [ test "returns true if divisible by 4 but not 100" <|
            \_ ->
                Date.isLeapYear 2012
                    |> Expect.equal True
        , test "returns false if not divisible by 4" <|
            \_ ->
                Date.isLeapYear 2010
                    |> Expect.equal False
        , test "returns false if divisible by 4 and 100 but not 400" <|
            \_ ->
                Date.isLeapYear 3000
                    |> Expect.equal False
        , test "returns true if divisible by 4, 100, and 400" <|
            \_ ->
                Date.isLeapYear 2000
                    |> Expect.equal True
        ]

leapDate : Date
leapDate =
    Date.create 2012 2 29

testAddYears : Test
testAddYears =
    describe "addYears"
        [ test "changes a date's year" <|
              \_ ->
                  Date.addYears 2 exampleDate
                      |> Expect.equal (Date.create 2014 6 2)
        , test "prevents leap days on non-leap years" <|
            \_ ->
                Date.addYears 1 leapDate
                    |> Expect.equal (Date.create 2013 2 28)
        , test "allows leap days on leap years" <|
            \_ ->
                Date.addYears 4 leapDate
                    |> Expect.equal (Date.create 2016 2 29)
        ]
