export function getClientRects(element) {
  return function () {
    return element.getClientRects();
  };
}

export function getBoundingClientRect(element) {
  return function () {
    return element.getBoundingClientRect();
  };
}

export function _scrollIntoView(scrollIntoViewOptions) {
  return function (element) {
    return function () {
      element.scrollIntoView(scrollIntoViewOptions);
    };
  };
}

export function _scroll(scrollToOptions) {
  return function (element) {
    return function () {
      element.scrollIntoView(scrollToOptions);
    };
  };
}

export function _scrollTo(scrollToOptions) {
  return function (element) {
    return function () {
      element.scrollTo(scrollToOptions);
    };
  };
}

export function _scrollBy(scrollToOptions) {
  return function (element) {
    return function () {
      element.scrollBy(scrollToOptions);
    };
  };
}

function getter(property) {
  return function (element) {
    return function () {
      return element[property];
    };
  };
}

export const scrollTop = getter("scrollTop");
export const scrollLeft = getter("scrollLeft");
export const scrollWidth = getter("scrollWidth");
export const scrollHeight = getter("scrollHeight");
export const clientTop = getter("clientTop");
export const clientLeft = getter("clientLeft");
export const clientWidth = getter("clientWidth");
export const clientHeight = getter("clientHeight");
