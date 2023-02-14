function getter(property) {
  return function (element) {
    return function () {
      return element[property];
    };
  };
}

export const _offsetParent = getter("offsetParent");
export const offsetTop = getter("offsetTop");
export const offsetLeft = getter("offsetLeft");
export const offsetWidth = getter("offsetWodth");
export const offsetHeight = getter("offsetHeight");
