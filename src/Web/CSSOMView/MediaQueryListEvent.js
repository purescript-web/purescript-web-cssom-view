"use strict";

exports.media = function (mediaQueryListEvent) {
  return mediaQueryListEvent.media;
};

exports.matches = function (mediaQueryListEvent) {
  return mediaQueryListEvent.matches;
};
