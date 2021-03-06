-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Bespiral.Object.Network exposing (..)

import Bespiral.InputObject
import Bespiral.Interface
import Bespiral.Object
import Bespiral.Scalar
import Bespiral.ScalarCodecs
import Bespiral.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


account : SelectionSet decodesTo Bespiral.Object.Profile -> SelectionSet (Maybe decodesTo) Bespiral.Object.Network
account object_ =
    Object.selectionForCompositeField "account" [] object_ (identity >> Decode.nullable)


community : SelectionSet decodesTo Bespiral.Object.Community -> SelectionSet (Maybe decodesTo) Bespiral.Object.Network
community object_ =
    Object.selectionForCompositeField "community" [] object_ (identity >> Decode.nullable)


createdAt : SelectionSet Bespiral.ScalarCodecs.DateTime Bespiral.Object.Network
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Bespiral.ScalarCodecs.codecs |> Bespiral.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


createdBlock : SelectionSet Int Bespiral.Object.Network
createdBlock =
    Object.selectionForField "Int" "createdBlock" [] Decode.int


createdEosAccount : SelectionSet String Bespiral.Object.Network
createdEosAccount =
    Object.selectionForField "String" "createdEosAccount" [] Decode.string


createdTx : SelectionSet String Bespiral.Object.Network
createdTx =
    Object.selectionForField "String" "createdTx" [] Decode.string


invitedBy : SelectionSet (Maybe String) Bespiral.Object.Network
invitedBy =
    Object.selectionForField "(Maybe String)" "invitedBy" [] (Decode.string |> Decode.nullable)
