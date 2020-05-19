module Web.CSSOMView.MediaQueryListEvent where

import Data.Maybe (Maybe)
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Event (Event)
import Web.Internal.FFI (unsafeReadProtoTagged)

foreign import data MediaQueryListEvent :: Type

fromEvent :: Event -> Maybe MediaQueryListEvent
fromEvent = unsafeReadProtoTagged "MediaQueryListEvent"

toEvent :: MediaQueryListEvent -> Event
toEvent = unsafeCoerce

foreign import media :: MediaQueryListEvent -> String

foreign import matches :: MediaQueryListEvent -> Boolean

-- TODO: fromEvent/toEvent
