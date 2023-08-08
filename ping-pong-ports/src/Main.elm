module Main exposing (main)

import Browser
import Html exposing (..)


type alias Model =
    { enabled : Bool
    , count : Int
    }


init : () -> ( Model, Cmd Msg )
init () =
    ( { enabled = True
      , count = 0
      }
    , Cmd.none
    )


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


view : Model -> Html Msg
view model =
    div []
        [ button [] [ text "Ping" ]
        , div [] [ text (String.fromInt model.count) ]
        ]


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
