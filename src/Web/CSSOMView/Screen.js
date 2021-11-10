"use strict";

function getter(property) {
  return function (screen) {
    return function () {
      return screen[property];
    };
  };
}

exports.availWidth = getter("availWidth");
exports.availHeight = getter("availHeight");
exports.width = getter("width");
exports.height = getter("height");
exports.colorDepth = getter("colorDepth");
exports.pixelDepth = getter("pixelDepth");
exports.orientation = getter("orientation");
