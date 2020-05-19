"use strict";

exports.x = function (imageElement) {
  return function () {
    return imageElement.x;
  };
};

exports.y = function (imageElement) {
  return function () {
    return imageElement.y;
  };
};
