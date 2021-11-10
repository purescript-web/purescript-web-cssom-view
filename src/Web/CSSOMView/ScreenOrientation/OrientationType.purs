module Web.CSSOMView.ScreenOrientation.OrientationType where

import Prelude

import Data.Maybe (Maybe(..))

data OrientationType
  = PortraitPrimary
  | PortraitSecondary
  | LandscapePrimary
  | LandscapeSecondary

derive instance eqOrientationType :: Eq OrientationType

instance showOrientationType :: Show OrientationType where
  show = case _ of
    PortraitPrimary -> "PortraitPrimary"
    PortraitSecondary -> "PortraitSecondary"
    LandscapePrimary -> "LandscapePrimary"
    LandscapeSecondary -> "LandscapeSecondary"

parse :: String -> Maybe OrientationType
parse = case _ of
  "portrait-primary" -> Just PortraitPrimary
  "portrait-secondary" -> Just PortraitSecondary
  "landscape-primary" -> Just LandscapePrimary
  "landscape-secondary" -> Just LandscapeSecondary
  _ -> Nothing

print :: OrientationType -> String
print = case _ of
  PortraitPrimary -> "portrait-primary"
  PortraitSecondary -> "portrait-secondary"
  LandscapePrimary -> "landscape-primary"
  LandscapeSecondary -> "landscape-secondary"

isPortrait :: OrientationType -> Boolean
isPortrait = case _ of
  PortraitPrimary -> true
  PortraitSecondary -> true
  LandscapePrimary -> false
  LandscapeSecondary -> false

isLandscape :: OrientationType -> Boolean
isLandscape = case _ of
  PortraitPrimary -> false
  PortraitSecondary -> false
  LandscapePrimary -> true
  LandscapeSecondary -> true
