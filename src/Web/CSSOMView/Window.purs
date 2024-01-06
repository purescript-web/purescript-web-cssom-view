module Web.CSSOMView.Window
  ( devicePixelRatio
  , innerHeight
  , innerWidth
  , matchMedia
  , moveBy
  , moveTo
  , outerHeight
  , outerWidth
  , pageXOffset
  , pageYOffset
  , resizeBy
  , resizeTo
  , screen
  , screenTop
  , screenX
  , screenY
  , scroll
  , scrollBy
  , scrollTo
  , scrollX
  , scrollY
  )
  where

import Data.Maybe (Maybe(..))
import Effect (Effect)
import Prelude (Unit)
import Web.CSSOMView (ScrollBehavior(..), ScrollToOptions)
import Web.CSSOMView.MediaQueryList (MediaQueryList)
import Web.CSSOMView.Screen (Screen)
import Web.HTML.Window (Window)

foreign import matchMedia :: String -> Window -> Effect MediaQueryList
foreign import screen :: Window -> Screen
foreign import moveTo :: Int -> Int -> Window -> Effect Unit
foreign import moveBy :: Int -> Int -> Window -> Effect Unit
foreign import resizeTo :: Int -> Int -> Window -> Effect Unit
foreign import resizeBy :: Int -> Int -> Window -> Effect Unit

foreign import innerWidth :: Window -> Effect Int
foreign import innerHeight :: Window -> Effect Int

foreign import scrollX :: Window -> Effect Number
foreign import pageXOffset :: Window -> Effect Number
foreign import scrollY :: Window -> Effect Number
foreign import pageYOffset :: Window -> Effect Number

foreign import _scroll :: PrimitiveScrollToOptions -> Window -> Effect Unit
foreign import _scrollTo :: PrimitiveScrollToOptions -> Window -> Effect Unit
foreign import _scrollBy :: PrimitiveScrollToOptions -> Window -> Effect Unit

foreign import screenX :: Window -> Effect Int
foreign import screenLeft :: Window -> Effect Int
foreign import screenY :: Window -> Effect Int
foreign import screenTop :: Window -> Effect Int
foreign import outerWidth :: Window -> Effect Int
foreign import outerHeight :: Window -> Effect Int
foreign import devicePixelRatio :: Window -> Effect Number


scroll :: Maybe ScrollToOptions -> Window -> Effect Unit
scroll scrollToOptions = _scroll (primitiveScrollToOptions scrollToOptions)
scrollTo :: Maybe ScrollToOptions -> Window -> Effect Unit
scrollTo scrollToOptions = _scrollTo (primitiveScrollToOptions scrollToOptions)
scrollBy :: Maybe ScrollToOptions -> Window -> Effect Unit
scrollBy scrollToOptions = _scrollBy (primitiveScrollToOptions scrollToOptions)

type PrimitiveScrollToOptions =
  { left :: Number
  , top :: Number
  , behavior :: String
  }

primitiveBehavior :: ScrollBehavior -> String
primitiveBehavior Auto = "auto"
primitiveBehavior Instant = "instant"
primitiveBehavior Smooth = "smooth"

primitiveScrollToOptions :: Maybe ScrollToOptions -> PrimitiveScrollToOptions
primitiveScrollToOptions Nothing = { left: 0.0, top: 0.0, behavior: "auto"  }
primitiveScrollToOptions (Just scrollToOptions) =
  { left: scrollToOptions.left
  , top: scrollToOptions.top
  , behavior: primitiveBehavior scrollToOptions.behavior
  }
