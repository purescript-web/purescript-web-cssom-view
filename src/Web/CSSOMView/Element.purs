module Web.CSSOMView.Element
  ( clientHeight
  , clientLeft
  , clientTop
  , clientWidth
  , getBoundingClientRect
  , getClientRects
  , scroll
  , scrollBy
  , scrollHeight
  , scrollIntoView
  , scrollLeft
  , scrollTo
  , scrollTop
  , scrollWidth
  )
  where

import Data.Maybe (Maybe(..))
import Effect (Effect)
import Prelude (Unit)
import Web.CSSOMView (ScrollBehavior(..), ScrollIntoViewOptions, ScrollLogicalPosition(..), ScrollToOptions)
import Web.DOM.Element (Element)
import Web.Geometry (DOMRectList, DOMRect)

foreign import getClientRects :: Element -> Effect DOMRectList
foreign import getBoundingClientRect :: Element -> Effect DOMRect
foreign import _scrollIntoView :: PrimitiveScrollIntoViewOptions -> Element -> Effect Unit
foreign import _scroll :: PrimitiveScrollToOptions -> Element -> Effect Unit
foreign import _scrollTo :: PrimitiveScrollToOptions -> Element -> Effect Unit
foreign import _scrollBy :: PrimitiveScrollToOptions -> Element -> Effect Unit
foreign import scrollTop :: Element -> Effect Number
foreign import scrollLeft :: Element -> Effect Number
foreign import scrollWidth :: Element -> Effect Int
foreign import scrollHeight :: Element -> Effect Int
foreign import clientTop :: Element -> Effect Int
foreign import clientLeft :: Element -> Effect Int
foreign import clientWidth :: Element -> Effect Int
foreign import clientHeight :: Element -> Effect Int

scrollIntoView :: Maybe ScrollIntoViewOptions -> Element -> Effect Unit
scrollIntoView scrollIntoViewOptions = _scrollIntoView (primitiveScrollIntoViewOptions scrollIntoViewOptions)
scroll :: Maybe ScrollToOptions -> Element -> Effect Unit
scroll scrollToOptions = _scroll (primitiveScrollToOptions scrollToOptions)
scrollTo :: Maybe ScrollToOptions -> Element -> Effect Unit
scrollTo scrollToOptions = _scrollTo (primitiveScrollToOptions scrollToOptions)
scrollBy :: Maybe ScrollToOptions -> Element -> Effect Unit
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

type PrimitiveScrollIntoViewOptions =
  { block :: String
  , inline :: String
  , behavior :: String
  }

primitiveScrollLogicalPosition :: ScrollLogicalPosition -> String
primitiveScrollLogicalPosition Start = "start"
primitiveScrollLogicalPosition Center = "center"
primitiveScrollLogicalPosition End = "end"
primitiveScrollLogicalPosition Nearest = "nearest"

primitiveScrollIntoViewOptions :: Maybe ScrollIntoViewOptions -> PrimitiveScrollIntoViewOptions
primitiveScrollIntoViewOptions Nothing = { block: "start", inline: "nearest", behavior: "auto" }
primitiveScrollIntoViewOptions (Just scrollIntoViewOptions) =
  { block: primitiveScrollLogicalPosition scrollIntoViewOptions.block
  , inline: primitiveScrollLogicalPosition scrollIntoViewOptions.inline
  , behavior: primitiveBehavior scrollIntoViewOptions.behavior
  }
