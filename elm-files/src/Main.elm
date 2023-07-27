module Main exposing (main)

import Html exposing (text)

greeting : String
greeting =
         "Hello, static Elm!"

meaningOfLife : Int
meaningOfLife = 42

pi : Float
pi = 3.14

canChuck : Bool
canChuck = True

sayHello : String -> String
sayHello name =
         "Hello, " ++ name ++ "."

bottlesOf : String -> Int -> String
bottlesOf contents amount =
          String.fromInt amount ++ " bottles of " ++ contents ++ " on the wall."

main =
    text (bottlesOf "rum" 99)
