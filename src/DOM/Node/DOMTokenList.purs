module DOM.Node.ClassList
  ( add
  , contains
  , item
  , remove
  , toggle
  , toggleForce
  ) where

import Prelude

import Effect (Effect)

import DOM.Node.Types (DOMTokenList)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)

foreign import add :: DOMTokenList -> String -> Effect Unit

foreign import remove :: DOMTokenList -> String -> Effect Unit

foreign import contains :: DOMTokenList -> String -> Effect Boolean

foreign import toggle :: DOMTokenList -> String -> Effect Boolean

foreign import toggleForce :: DOMTokenList -> String -> Boolean -> Effect Boolean

foreign import _item :: DOMTokenList -> Int -> Effect (Nullable String)

item :: DOMTokenList -> Int -> Effect (Maybe String)
item index = map toMaybe <<< _item index
