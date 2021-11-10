module Web.CSSOMView.ScreenOrientation.OrientationLockType where

import Prelude

import Data.Maybe (Maybe(..))

data OrientationLockType
  = Any
  | Natural
  | Landscape
  | Portrait
  | PortraitPrimary
  | PortraitSecondary
  | LandscapePrimary
  | LandscapeSecondary

derive instance eqOrientationLockType :: Eq OrientationLockType

instance showOrientationLockType :: Show OrientationLockType where
  show = case _ of
    Any -> "Any"
    Natural -> "Natural"
    Landscape -> "Landscape"
    Portrait -> "Portrait"
    PortraitPrimary -> "PortraitPrimary"
    PortraitSecondary -> "PortraitSecondary"
    LandscapePrimary -> "LandscapePrimary"
    LandscapeSecondary -> "LandscapeSecondary"

parse :: String -> Maybe OrientationLockType
parse = case _ of
  "any" -> Just Any
  "natural" -> Just Natural
  "landscape" -> Just Landscape
  "portrait" -> Just Portrait
  "portrait-primary" -> Just PortraitPrimary
  "portrait-secondary" -> Just PortraitSecondary
  "landscape-primary" -> Just LandscapePrimary
  "landscape-secondary" -> Just LandscapeSecondary
  _ -> Nothing

print :: OrientationLockType -> String
print = case _ of
  Any -> "any"
  Natural -> "natural"
  Landscape -> "landscape"
  Portrait -> "portrait"
  PortraitPrimary -> "portrait-primary"
  PortraitSecondary -> "portrait-secondary"
  LandscapePrimary -> "landscape-primary"
  LandscapeSecondary -> "landscape-secondary"
