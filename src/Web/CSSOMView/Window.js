function getter(property) {
  return function (window) {
    return function () {
      return window[property];
    };
  };
}

export function matchMedia(window) {
  return function (query) {
    return function () {
      return window.matchMedia(query);
    };
  };
}

export function screen(window) {
  return window.screen;
}

export function moveTo(window) {
  return function (x) {
    return function (y) {
      return function () {
        return window.moveTo(x, y);
      };
    };
  };
}

export function moveBy(window) {
  return function (x) {
    return function (y) {
      return function () {
        return window.moveTo(x, y);
      };
    };
  };
}

export function resizeTo(window) {
  return function (width) {
    return function (height) {
      return function () {
        return window.moveTo(width, height);
      };
    };
  };
}

export function resizeBy(window) {
  return function (x) {
    return function (y) {
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

export function scrollTo(window) {
  return function (options) {
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

export function scrollBy(window) {
  return function (options) {
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
