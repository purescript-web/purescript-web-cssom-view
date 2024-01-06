{ name = "web-cssom-view"
, dependencies =
  [ "aff"
  , "effect"
  , "maybe"
  , "nullable"
  , "prelude"
  , "unsafe-coerce"
  , "web-dom"
  , "web-events"
  , "web-geometry"
  , "web-html"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
