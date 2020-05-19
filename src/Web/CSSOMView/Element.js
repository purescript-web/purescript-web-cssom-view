"use strict";

function convertScrollToOptions(options) {
  return options.value0 && Object.assign({}, options.value0, { behavior: options.value0.constructor.name.toLowerCase() });
}

exports.getClientRects = function (element) {
  return function () {
    return element.getClientRects();
  };
};

exports.getBoundingClientRect = function (element) {
  return function () {
    return element.getBoundingClientRect();
  };
};

exports.scrollIntoView = function (element) {
  return function (scrollIntoViewOptions) {
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
};

exports.scroll = function (element) {
  return function (scrollToOptions) {
    return function () {
      element.scrollIntoView(convertScrollToOptions(scrollToOptions));
    };
  };
};

exports.scrollTo = function (element) {
  return function (scrollToOptions) {
    return function () {
      element.scrollTo(convertScrollToOptions(scrollToOptions));
    };
  };
};

exports.scrollBy = function (element) {
  return function (scrollToOptions) {
    return function () {
      element.scrollBy(convertScrollToOptions(scrollToOptions));
    };
  };
};

function getter(property) {
  return function (element) {
    return function () {
      return element[property];
    };
  };
}

exports.scrollTop = getter("scrollTop");
exports.scrollLeft = getter("scrollLeft");
exports.scrollWidth = getter("scrollWidth");
exports.scrollHeight = getter("scrollHeight");
exports.clientTop = getter("clientTop");
exports.clientLeft = getter("clientLeft");
exports.clientWidth = getter("clientWidth");
exports.clientHeight = getter("clientHeight");
