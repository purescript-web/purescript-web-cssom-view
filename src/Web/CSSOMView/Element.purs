module Web.CSSOMView.Element where

import Prelude (Unit)
import Effect (Effect)
import Data.Maybe (Maybe)
import Web.DOM.Element (Element)
import Web.Geometry (DOMRectList, DOMRect)
import Web.CSSOMView (ScrollIntoViewOptions, ScrollToOptions)

foreign import getClientRects :: Element -> Effect DOMRectList
foreign import getBoundingClientRect :: Element -> Effect DOMRect
foreign import scrollIntoView :: Element -> Maybe ScrollIntoViewOptions -> Effect Unit
foreign import scroll :: Element -> Maybe ScrollToOptions -> Effect Unit
foreign import scrollTo :: Element -> Maybe ScrollToOptions -> Effect Unit
foreign import scrollBy :: Element -> Maybe ScrollToOptions -> Effect Unit
foreign import scrollTop :: Element -> Effect Number
foreign import scrollLeft :: Element -> Effect Number
foreign import scrollWidth :: Element -> Effect Int
foreign import scrollHeight :: Element -> Effect Int
foreign import clientTop :: Element -> Effect Int
foreign import clientLeft :: Element -> Effect Int
foreign import clientWidth :: Element -> Effect Int
foreign import clientHeight :: Element -> Effect Int
