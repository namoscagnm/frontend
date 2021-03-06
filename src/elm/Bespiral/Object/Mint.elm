-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Bespiral.Object.Mint exposing (..)

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


community : SelectionSet decodesTo Bespiral.Object.Community -> SelectionSet decodesTo Bespiral.Object.Mint
community object_ =
    Object.selectionForCompositeField "community" [] object_ identity


createdAt : SelectionSet Bespiral.ScalarCodecs.DateTime Bespiral.Object.Mint
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Bespiral.ScalarCodecs.codecs |> Bespiral.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


createdBlock : SelectionSet Int Bespiral.Object.Mint
createdBlock =
    Object.selectionForField "Int" "createdBlock" [] Decode.int


createdEosAccount : SelectionSet String Bespiral.Object.Mint
createdEosAccount =
    Object.selectionForField "String" "createdEosAccount" [] Decode.string


createdTx : SelectionSet String Bespiral.Object.Mint
createdTx =
    Object.selectionForField "String" "createdTx" [] Decode.string


memo : SelectionSet (Maybe String) Bespiral.Object.Mint
memo =
    Object.selectionForField "(Maybe String)" "memo" [] (Decode.string |> Decode.nullable)


quantity : SelectionSet Float Bespiral.Object.Mint
quantity =
    Object.selectionForField "Float" "quantity" [] Decode.float


to : SelectionSet decodesTo Bespiral.Object.Profile -> SelectionSet decodesTo Bespiral.Object.Mint
to object_ =
    Object.selectionForCompositeField "to" [] object_ identity
