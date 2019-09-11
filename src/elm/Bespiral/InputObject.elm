-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Bespiral.InputObject exposing (ActionsInput, ActionsInputOptionalFields, ChatInput, ChatInputRequiredFields, ChatUpdateInput, ChatUpdateInputRequiredFields, ChecksInput, ChecksInputOptionalFields, ProfileInput, ProfileInputOptionalFields, ProfileUpdateInput, ProfileUpdateInputOptionalFields, ProfileUpdateInputRequiredFields, PushSubscriptionInput, PushSubscriptionInputRequiredFields, SaleInput, SaleInputRequiredFields, SalesInput, SalesInputOptionalFields, buildActionsInput, buildChatInput, buildChatUpdateInput, buildChecksInput, buildProfileInput, buildProfileUpdateInput, buildPushSubscriptionInput, buildSaleInput, buildSalesInput, encodeActionsInput, encodeChatInput, encodeChatUpdateInput, encodeChecksInput, encodeProfileInput, encodeProfileUpdateInput, encodePushSubscriptionInput, encodeSaleInput, encodeSalesInput)

import Bespiral.Enum.VerificationType
import Bespiral.Interface
import Bespiral.Object
import Bespiral.Scalar
import Bespiral.ScalarCodecs
import Bespiral.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


buildActionsInput : (ActionsInputOptionalFields -> ActionsInputOptionalFields) -> ActionsInput
buildActionsInput fillOptionals =
    let
        optionals =
            fillOptionals
                { creator = Absent, isCompleted = Absent, validator = Absent, verificationType = Absent }
    in
    { creator = optionals.creator, isCompleted = optionals.isCompleted, validator = optionals.validator, verificationType = optionals.verificationType }


type alias ActionsInputOptionalFields =
    { creator : OptionalArgument String
    , isCompleted : OptionalArgument Bool
    , validator : OptionalArgument String
    , verificationType : OptionalArgument Bespiral.Enum.VerificationType.VerificationType
    }


{-| Type for the ActionsInput input object.
-}
type alias ActionsInput =
    { creator : OptionalArgument String
    , isCompleted : OptionalArgument Bool
    , validator : OptionalArgument String
    , verificationType : OptionalArgument Bespiral.Enum.VerificationType.VerificationType
    }


{-| Encode a ActionsInput into a value that can be used as an argument.
-}
encodeActionsInput : ActionsInput -> Value
encodeActionsInput input =
    Encode.maybeObject
        [ ( "creator", Encode.string |> Encode.optional input.creator ), ( "isCompleted", Encode.bool |> Encode.optional input.isCompleted ), ( "validator", Encode.string |> Encode.optional input.validator ), ( "verificationType", Encode.enum Bespiral.Enum.VerificationType.toString |> Encode.optional input.verificationType ) ]


buildChatInput : ChatInputRequiredFields -> ChatInput
buildChatInput required =
    { token = required.token, userId = required.userId }


type alias ChatInputRequiredFields =
    { token : String
    , userId : String
    }


{-| Type for the ChatInput input object.
-}
type alias ChatInput =
    { token : String
    , userId : String
    }


{-| Encode a ChatInput into a value that can be used as an argument.
-}
encodeChatInput : ChatInput -> Value
encodeChatInput input =
    Encode.maybeObject
        [ ( "token", Encode.string input.token |> Just ), ( "userId", Encode.string input.userId |> Just ) ]


buildChatUpdateInput : ChatUpdateInputRequiredFields -> ChatUpdateInput
buildChatUpdateInput required =
    { language = required.language, userId = required.userId }


type alias ChatUpdateInputRequiredFields =
    { language : String
    , userId : String
    }


{-| Type for the ChatUpdateInput input object.
-}
type alias ChatUpdateInput =
    { language : String
    , userId : String
    }


{-| Encode a ChatUpdateInput into a value that can be used as an argument.
-}
encodeChatUpdateInput : ChatUpdateInput -> Value
encodeChatUpdateInput input =
    Encode.maybeObject
        [ ( "language", Encode.string input.language |> Just ), ( "userId", Encode.string input.userId |> Just ) ]


buildChecksInput : (ChecksInputOptionalFields -> ChecksInputOptionalFields) -> ChecksInput
buildChecksInput fillOptionals =
    let
        optionals =
            fillOptionals
                { validator = Absent }
    in
    { validator = optionals.validator }


type alias ChecksInputOptionalFields =
    { validator : OptionalArgument String }


{-| Type for the ChecksInput input object.
-}
type alias ChecksInput =
    { validator : OptionalArgument String }


{-| Encode a ChecksInput into a value that can be used as an argument.
-}
encodeChecksInput : ChecksInput -> Value
encodeChecksInput input =
    Encode.maybeObject
        [ ( "validator", Encode.string |> Encode.optional input.validator ) ]


buildProfileInput : (ProfileInputOptionalFields -> ProfileInputOptionalFields) -> ProfileInput
buildProfileInput fillOptionals =
    let
        optionals =
            fillOptionals
                { account = Absent }
    in
    { account = optionals.account }


type alias ProfileInputOptionalFields =
    { account : OptionalArgument String }


{-| Type for the ProfileInput input object.
-}
type alias ProfileInput =
    { account : OptionalArgument String }


{-| Encode a ProfileInput into a value that can be used as an argument.
-}
encodeProfileInput : ProfileInput -> Value
encodeProfileInput input =
    Encode.maybeObject
        [ ( "account", Encode.string |> Encode.optional input.account ) ]


buildProfileUpdateInput : ProfileUpdateInputRequiredFields -> (ProfileUpdateInputOptionalFields -> ProfileUpdateInputOptionalFields) -> ProfileUpdateInput
buildProfileUpdateInput required fillOptionals =
    let
        optionals =
            fillOptionals
                { avatar = Absent, bio = Absent, email = Absent, interests = Absent, location = Absent, name = Absent }
    in
    { account = required.account, avatar = optionals.avatar, bio = optionals.bio, email = optionals.email, interests = optionals.interests, location = optionals.location, name = optionals.name }


type alias ProfileUpdateInputRequiredFields =
    { account : String }


type alias ProfileUpdateInputOptionalFields =
    { avatar : OptionalArgument String
    , bio : OptionalArgument String
    , email : OptionalArgument String
    , interests : OptionalArgument String
    , location : OptionalArgument String
    , name : OptionalArgument String
    }


{-| Type for the ProfileUpdateInput input object.
-}
type alias ProfileUpdateInput =
    { account : String
    , avatar : OptionalArgument String
    , bio : OptionalArgument String
    , email : OptionalArgument String
    , interests : OptionalArgument String
    , location : OptionalArgument String
    , name : OptionalArgument String
    }


{-| Encode a ProfileUpdateInput into a value that can be used as an argument.
-}
encodeProfileUpdateInput : ProfileUpdateInput -> Value
encodeProfileUpdateInput input =
    Encode.maybeObject
        [ ( "account", Encode.string input.account |> Just ), ( "avatar", Encode.string |> Encode.optional input.avatar ), ( "bio", Encode.string |> Encode.optional input.bio ), ( "email", Encode.string |> Encode.optional input.email ), ( "interests", Encode.string |> Encode.optional input.interests ), ( "location", Encode.string |> Encode.optional input.location ), ( "name", Encode.string |> Encode.optional input.name ) ]


buildPushSubscriptionInput : PushSubscriptionInputRequiredFields -> PushSubscriptionInput
buildPushSubscriptionInput required =
    { account = required.account, authKey = required.authKey, endpoint = required.endpoint, pKey = required.pKey }


type alias PushSubscriptionInputRequiredFields =
    { account : String
    , authKey : String
    , endpoint : String
    , pKey : String
    }


{-| Type for the PushSubscriptionInput input object.
-}
type alias PushSubscriptionInput =
    { account : String
    , authKey : String
    , endpoint : String
    , pKey : String
    }


{-| Encode a PushSubscriptionInput into a value that can be used as an argument.
-}
encodePushSubscriptionInput : PushSubscriptionInput -> Value
encodePushSubscriptionInput input =
    Encode.maybeObject
        [ ( "account", Encode.string input.account |> Just ), ( "authKey", Encode.string input.authKey |> Just ), ( "endpoint", Encode.string input.endpoint |> Just ), ( "pKey", Encode.string input.pKey |> Just ) ]


buildSaleInput : SaleInputRequiredFields -> SaleInput
buildSaleInput required =
    { id = required.id }


type alias SaleInputRequiredFields =
    { id : Int }


{-| Type for the SaleInput input object.
-}
type alias SaleInput =
    { id : Int }


{-| Encode a SaleInput into a value that can be used as an argument.
-}
encodeSaleInput : SaleInput -> Value
encodeSaleInput input =
    Encode.maybeObject
        [ ( "id", Encode.int input.id |> Just ) ]


buildSalesInput : (SalesInputOptionalFields -> SalesInputOptionalFields) -> SalesInput
buildSalesInput fillOptionals =
    let
        optionals =
            fillOptionals
                { account = Absent, all = Absent, communities = Absent }
    in
    { account = optionals.account, all = optionals.all, communities = optionals.communities }


type alias SalesInputOptionalFields =
    { account : OptionalArgument String
    , all : OptionalArgument String
    , communities : OptionalArgument String
    }


{-| Type for the SalesInput input object.
-}
type alias SalesInput =
    { account : OptionalArgument String
    , all : OptionalArgument String
    , communities : OptionalArgument String
    }


{-| Encode a SalesInput into a value that can be used as an argument.
-}
encodeSalesInput : SalesInput -> Value
encodeSalesInput input =
    Encode.maybeObject
        [ ( "account", Encode.string |> Encode.optional input.account ), ( "all", Encode.string |> Encode.optional input.all ), ( "communities", Encode.string |> Encode.optional input.communities ) ]