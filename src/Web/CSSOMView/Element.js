function convertScrollToOptions(options) {
  return options.value0 && Object.assign({}, options.value0, { behavior: options.value0.constructor.name.toLowerCase() });
}

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

export function scrollIntoView(scrollIntoViewOptions) {
  return function (element) {
    return function () {
      if (scrollIntoViewOptions.value0) {
        element.scrollIntoView({
          block: scrollIntoViewOptions.value0.block.constructor.name.toLowerCase(),
          inline: scrollIntoViewOptions.value0.inline.constructor.name.toLowerCase()
        });
      } else {
        element.scrollIntoView();
      }
    };
  };
}

export function scroll(scrollToOptions) {
  return function (element) {
    return function () {
      element.scrollIntoView(convertScrollToOptions(scrollToOptions));
    };
  };
}

export function scrollTo(scrollToOptions) {
  return function (element) {
    return function () {
      element.scrollTo(convertScrollToOptions(scrollToOptions));
    };
  };
}

export function scrollBy(scrollToOptions) {
  return function (element) {
    return function () {
      element.scrollBy(convertScrollToOptions(scrollToOptions));
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
