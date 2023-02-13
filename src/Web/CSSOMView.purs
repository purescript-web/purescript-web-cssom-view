module Web.CSSOMView (module CSSOMView, ScrollBehavior(..), ScrollToOptions,
  ScrollLogicalPosition(..), ScrollIntoViewOptions) where

import Web.CSSOMView.MediaQueryList (MediaQueryList) as CSSOMView
import Web.CSSOMView.MediaQueryListEvent (MediaQueryListEvent) as CSSOMView
import Web.CSSOMView.Screen (Screen) as CSSOMView

data ScrollBehavior = Auto | Smooth

type ScrollToOptions =
  { left :: Number
  , top :: Number
  , behavior :: ScrollBehavior
  }

data ScrollLogicalPosition = Start | Center | End | Nearest

type ScrollIntoViewOptions =
  { block :: ScrollLogicalPosition
  , inline :: ScrollLogicalPosition
  , behavior :: ScrollBehavior
  }
