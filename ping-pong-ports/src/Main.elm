port module Main exposing (main)

import Browser
import Html exposing (..)
import Html.Attributes exposing (disabled)
import Html.Events exposing (onClick)


port ping : () -> Cmd msg


port pong : (() -> msg) -> Sub msg


type alias Model =
    { enabled : Bool
    , count : Int
    }


init : () -> ( Model, Cmd Msg )
init () =
    ( { enabled = False
      , count = 0
      }
    , Cmd.none
    )


type Msg
    = Ping
    | Pong


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Ping ->
            ( { model
                | enabled = not model.enabled
                , count = model.count + 1
              }
            , ping ()
            )

        Pong ->
            ( { model
                | enabled = not model.enabled
              }
            , Cmd.none
            )


subscriptions : Model -> Sub Msg
subscriptions model =
    pong (always Pong)


view : Model -> Html Msg
view model =
    div []
        [ button
            [ disabled model.enabled
            , onClick Ping
            ]
            [ text "Ping" ]
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
