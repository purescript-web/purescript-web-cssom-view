module HTMLImageElement where

import Effect (Effect)
import Web.HTML.HTMLImageElement (HTMLImageElement)

foreign import x :: HTMLImageElement -> Effect Int
foreign import y :: HTMLImageElement -> Effect Int
