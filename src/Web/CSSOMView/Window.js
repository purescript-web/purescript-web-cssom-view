"use strict";

function getter(property) {
  return function (window) {
    return function () {
      return window[property];
    };
  };
}

exports.matchMedia = function (window) {
  return function (query) {
    return function () {
      return window.matchMedia(query);
    };
  };
};

exports.screen = function (window) {
  return window.screen;
};

exports.moveTo = function (window) {
  return function (x) {
    return function (y) {
      return function () {
        return window.moveTo(x, y);
      };
    };
  };
};

exports.moveBy = function (window) {
  return function (x) {
    return function (y) {
      return function () {
        return window.moveTo(x, y);
      };
    };
  };
};

exports.resizeTo = function (window) {
  return function (width) {
    return function (height) {
      return function () {
        return window.moveTo(width, height);
      };
    };
  };
};

exports.resizeBy = function (window) {
  return function (x) {
    return function (y) {
      return function () {
        return window.moveTo(x, y);
      };
    };
  };
};

exports.innerWidth = getter("innerWidth");
exports.innerHeight = getter("innerHeight");
exports.scrollX = getter("scrollX");
exports.pageXOffset = getter("pageXOffset");
exports.scrollY = getter("scrollY");
exports.pageYOffset = getter("pageYOffset");

exports.scroll = function (window) {
  return function (options) {
    return function () {
      if (typeof options.value0 === "object") {
        var newObject = Object.assign({}, options.value0);
        newObject.behaviour = newObject.behaviour.value0.constructor.name.toLowerCase();
        window.scroll(newObject);
      } else {
        window.scroll();
      }
    };
  };
};

exports.scrollTo = function (window) {
  return function (options) {
    return function () {
      if (typeof options.value0 === "object") {
        var newObject = Object.assign({}, options.value0);
        newObject.behaviour = newObject.behaviour.value0.constructor.name.toLowerCase();
        window.scrollTo(newObject);
      } else {
        window.scrollTo();
      }
    };
  };
};

exports.scrollBy = function (window) {
  return function (options) {
    return function () {
      if (typeof options.value0 === "object") {
        var newObject = Object.assign({}, options.value0);
        newObject.behaviour = newObject.behaviour.value0.constructor.name.toLowerCase();
        window.scrollBy(newObject);
      } else {
        window.scrollBy();
      }
    };
  };
};

exports.screenX = getter("screenX");
exports.screenLeft = getter("screenLeft");
exports.screenY = getter("screenY");
exports.screenTop = getter("screenTop");
exports.outerWidth = getter("outerWidth");
exports.outerHeight = getter("outerHeight");
exports.devicePixelRatio = getter("devicePixelRatio");
