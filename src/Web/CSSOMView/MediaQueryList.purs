module Web.CSSOMView.MediaQueryList where

import Prelude (Unit)
import Effect (Effect)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.EventTarget (EventTarget, EventListener)

foreign import data MediaQueryList :: Type

foreign import media :: MediaQueryList -> Effect String
foreign import matches :: MediaQueryList -> Effect Boolean
foreign import addListener :: EventListener -> MediaQueryList -> Effect Unit
foreign import removeListener :: EventListener -> MediaQueryList -> Effect Unit

toEventTarget :: MediaQueryList -> EventTarget
toEventTarget = unsafeCoerce
