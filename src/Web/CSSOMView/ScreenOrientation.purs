module Web.CSSOMView.ScreenOrientation
  ( ScreenOrientation
  , lock
  , unlock
  , type_
  , angle
  , onChange
  , toEventTarget
  , fromEventTarget
  ) where

-- https://w3c.github.io/screen-orientation/

import Prelude

import Data.Maybe (Maybe)
import Effect (Effect)
import Effect.Aff (Aff)
import Effect.Aff.Compat (EffectFnAff, fromEffectFnAff)
import Effect.Uncurried (EffectFn1, EffectFn2, runEffectFn1, runEffectFn2)
import Unsafe.Coerce (unsafeCoerce)
import Web.CSSOMView.ScreenOrientation.OrientationLockType (OrientationLockType)
import Web.CSSOMView.ScreenOrientation.OrientationLockType as OrientationLockType
import Web.CSSOMView.ScreenOrientation.OrientationType (OrientationType)
import Web.CSSOMView.ScreenOrientation.OrientationType as OrientationType
import Web.Event.Internal.Types (Event, EventTarget)
import Web.Internal.FFI (unsafeReadProtoTagged)

foreign import data ScreenOrientation :: Type

foreign import lockImpl :: String -> ScreenOrientation -> EffectFnAff Unit

lock :: OrientationLockType -> ScreenOrientation -> Aff Unit
lock lockType = fromEffectFnAff <<< lockImpl (OrientationLockType.print lockType)

foreign import unlockImpl :: EffectFn1 ScreenOrientation Unit

unlock ∷ ScreenOrientation -> Effect Unit
unlock = runEffectFn1 unlockImpl

foreign import typeImpl :: EffectFn1 ScreenOrientation String

type_ :: ScreenOrientation -> Effect (Maybe OrientationType)
type_ = map OrientationType.parse <<< runEffectFn1 typeImpl

foreign import angleImpl :: EffectFn1 ScreenOrientation Int

angle :: ScreenOrientation -> Effect Int
angle = runEffectFn1 angleImpl

foreign import onChangeImpl :: EffectFn2 (Event -> Effect Unit) ScreenOrientation Unit

onChange :: (Event -> Effect Unit) -> ScreenOrientation -> Effect Unit
onChange = runEffectFn2 onChangeImpl

toEventTarget :: ScreenOrientation -> EventTarget
toEventTarget = unsafeCoerce

fromEventTarget :: EventTarget -> Maybe ScreenOrientation
fromEventTarget = unsafeReadProtoTagged "ScreenOrientation"
