function getter(property) {
  return function (window) {
    return function () {
      return window[property];
    };
  };
}

export function matchMedia(query) {
  return function (window) {
    return function () {
      return window.matchMedia(query);
    };
  };
}

export function screen(window) {
  return window.screen;
}

export function moveTo(x) {
  return function (y) {
    return function (window) {
      return function () {
        return window.moveTo(x, y);
      };
    };
  };
}

export function moveBy(x) {
  return function (y) {
    return function (window) {
      return function () {
        return window.moveTo(x, y);
      };
    };
  };
}

export function resizeTo(width) {
  return function (height) {
    return function (window) {
      return function () {
        return window.moveTo(width, height);
      };
    };
  };
}

export function resizeBy(x) {
  return function (y) {
    return function (window) {
      return function () {
        return window.moveTo(x, y);
      };
    };
  };
}

export const innerWidth = getter("innerWidth");
export const innerHeight = getter("innerHeight");
export const scrollX = getter("scrollX");
export const pageXOffset = getter("pageXOffset");
export const scrollY = getter("scrollY");
export const pageYOffset = getter("pageYOffset");

export function scroll(window) {
  return function (options) {
    return function () {
      if (typeof options.value0 === "object") {
        var newObject = Object.assign({}, options.value0);
        newObject.behavior = newObject.behavior.value0.constructor.name.toLowerCase();
        window.scroll(newObject);
      } else {
        window.scroll();
      }
    };
  };
}

export function scrollTo(options) {
  return function (window) {
    return function () {
      if (typeof options.value0 === "object") {
        var newObject = Object.assign({}, options.value0);
        newObject.behavior = newObject.behavior.value0.constructor.name.toLowerCase();
        window.scrollTo(newObject);
      } else {
        window.scrollTo();
      }
    };
  };
}

export function scrollBy(options) {
  return function (window) {
    return function () {
      if (typeof options.value0 === "object") {
        var newObject = Object.assign({}, options.value0);
        newObject.behavior = newObject.behavior.value0.constructor.name.toLowerCase();
        window.scrollBy(newObject);
      } else {
        window.scrollBy();
      }
    };
  };
}

export const screenX = getter("screenX");
export const screenLeft = getter("screenLeft");
export const screenY = getter("screenY");
export const screenTop = getter("screenTop");
export const outerWidth = getter("outerWidth");
export const outerHeight = getter("outerHeight");
export const devicePixelRatio = getter("devicePixelRatio");
