"use strict";

exports.media = function (mediaQueryList) {
  return function () {
    return mediaQueryList.media;
  };
};

exports.matches = function (mediaQueryList) {
  return function () {
    return mediaQueryList.matches;
  };
};

exports.addListener = function (mediaQueryList) {
  return function (callback) {
    return function () {
      mediaQueryList.addListener(callback);
    };
  };
};

exports.removeListener = function (mediaQueryList) {
  return function (callback) {
    return function () {
      mediaQueryList.removeListener(callback);
    };
  };
};
