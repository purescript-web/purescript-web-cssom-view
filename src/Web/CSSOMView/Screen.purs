module Web.CSSOMView.Screen where

import Effect (Effect)
import Web.CSSOMView.ScreenOrientation (ScreenOrientation)

foreign import data Screen :: Type

foreign import availWidth :: Screen -> Effect Int
foreign import availHeight :: Screen -> Effect Int
foreign import width :: Screen -> Effect Int
foreign import height :: Screen -> Effect Int
foreign import colorDepth :: Screen -> Effect Int
foreign import pixelDepth :: Screen -> Effect Int
foreign import orientation :: Screen -> Effect ScreenOrientation
