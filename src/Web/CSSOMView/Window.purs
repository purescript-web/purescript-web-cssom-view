module Web.CSSOMView.Window where

import Prelude (Unit)
import Data.Maybe (Maybe)
import Effect (Effect)
import Web.HTML.Window (Window)
import Web.CSSOMView (ScrollToOptions)
import Web.CSSOMView.Screen (Screen)
import Web.CSSOMView.MediaQueryList (MediaQueryList)

foreign import matchMedia :: Window -> String -> Effect MediaQueryList
foreign import screen :: Window -> Screen
foreign import moveTo :: Window -> Int -> Int -> Effect Unit
foreign import moveBy :: Window -> Int -> Int -> Effect Unit
foreign import resizeTo :: Window -> Int -> Int -> Effect Unit
foreign import resizeBy :: Window -> Int -> Int -> Effect Unit

foreign import innerWidth :: Window -> Effect Int
foreign import innerHeight :: Window -> Effect Int

foreign import scrollX :: Window -> Effect Number
foreign import pageXOffset :: Window -> Effect Number
foreign import scrollY :: Window -> Effect Number
foreign import pageYOffset :: Window -> Effect Number

foreign import scroll :: Window -> Maybe ScrollToOptions -> Effect Unit
foreign import scrollTo :: Window -> Maybe ScrollToOptions -> Effect Unit
foreign import scrollBy :: Window -> Maybe ScrollToOptions -> Effect Unit

foreign import screenX :: Window -> Effect Int
foreign import screenLeft :: Window -> Effect Int
foreign import screenY :: Window -> Effect Int
foreign import screenTop :: Window -> Effect Int
foreign import outerWidth :: Window -> Effect Int
foreign import outerHeight :: Window -> Effect Int
foreign import devicePixelRatio :: Window -> Effect Number
