"use strict";

function getter(property) {
  return function (element) {
    return function () {
      return element[property];
    };
  };
}

exports._offsetParent = getter("offsetParent");
exports.offsetTop = getter("offsetTop");
exports.offsetLeft = getter("offsetLeft");
exports.offsetWidth = getter("offsetWodth");
exports.offsetHeight = getter("offsetHeight");
