module Debugging exposing (main)

import Html exposing (Html, text)
import Json.Decode as Json
import Json.Decode.Pipeline exposing (required)

type alias Dog =
    { name: String
    , age: Int
    }

dogDecoder : Json.Decoder Dog
dogDecoder =
    Json.succeed Dog
        |> required "name" Json.string
        |> required "age" Json.int

jsonDog : String
jsonDog =
    """
     {
       "name": "Trucker",
       "age": 11
     }
    """

decodedDog : Result Json.Error Dog
decodedDog =
    Json.decodeString dogDecoder jsonDog

viewDog : Dog -> Html msg
viewDog dog =
    text <|
        dog.name
        ++ " is "
        ++ String.fromInt dog.age
        ++ " years old."

main : Html msg
main =
    case Debug.log "decodeDog" decodedDog of
        Ok dog ->
            viewDog dog
        Err _ ->
            text "ERROR: Couldn't decode dog."
