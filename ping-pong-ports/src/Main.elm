module Main exposing (main)

import Browser
import Html exposing (..)

type alias Model =
    ()

init : () -> ( Model, Cmd Msg )
init () =
    ( (), Cmd.none )

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
    div [] [ text "Hello World" ]

main : Program () Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
