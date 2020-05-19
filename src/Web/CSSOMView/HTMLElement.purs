module Web.CSSOMView.HTMLElement where

import Prelude ((<<<), map)
import Effect (Effect)
import Data.Maybe (Maybe)
import Data.Nullable (Nullable, toMaybe)
import Web.DOM.Element (Element)
import Web.HTML.HTMLElement (HTMLElement)

foreign import _offsetParent :: HTMLElement -> Effect (Nullable Element)
foreign import offsetTop :: HTMLElement -> Effect Int
foreign import offsetLeft :: HTMLElement -> Effect Int
foreign import offsetWidth :: HTMLElement -> Effect Int
foreign import offsetHeight :: HTMLElement -> Effect Int

offsetParent :: HTMLElement -> Effect (Maybe Element)
offsetParent  = map toMaybe <<< _offsetParent
