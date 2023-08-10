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
        [ test "retrieves the year from a date" <|
            \_ ->
                Date.year exampleDate
                    |> Expect.equal 2012
            
        ]
