module BBTest exposing (..)
import ByteBuffer

import Html exposing (Html, div, text)
import Task
import Debug exposing (log)

type alias Model = {bb: Maybe ByteBuffer.ByteBuffer}
type Msg = NoOp
         | MakeBB ByteBuffer.ByteBuffer

init: (Model, Cmd Msg)
init = {bb=Nothing} ! [Task.perform MakeBB ByteBuffer.make]

main: Program Never Model Msg
main = Html.program { init = init, update=update, view=view, subscriptions=subscriptions}

subscriptions: Model -> Sub Msg
subscriptions model = Sub.none

update: Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    NoOp -> model ! []
    MakeBB bb -> {model|bb=Just bb} ! []

view: Model -> Html Msg
view model =
  let
    _ = case model.bb of
      Nothing -> 3
      Just x ->
        let
          _ = log "not nothing" "foo"
          _ = log "int " (ByteBuffer.readInt x)
          _ = ByteBuffer.flip x
          _ = ByteBuffer.writeInt x 42
        in 5
  in
  div[][text "hi"]