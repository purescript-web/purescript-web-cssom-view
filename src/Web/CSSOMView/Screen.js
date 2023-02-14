function getter(property) {
  return function (screen) {
    return function () {
      return screen[property];
    };
  };
}

export const availWidth = getter("availWidth");
export const availHeight = getter("availHeight");
export const width = getter("width");
export const height = getter("height");
export const colorDepth = getter("colorDepth");
export const pixelDepth = getter("pixelDepth");
export const orientation = getter("orientation");
