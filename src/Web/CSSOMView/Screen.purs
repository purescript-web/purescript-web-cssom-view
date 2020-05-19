module Web.CSSOMView.Screen where

import Effect (Effect)

foreign import data Screen :: Type

foreign import availWidth :: Effect Int
foreign import availHeight :: Effect Int
foreign import width :: Effect Int
foreign import height :: Effect Int
foreign import colorDepth :: Effect Int
foreign import pixelDepth :: Effect Int
