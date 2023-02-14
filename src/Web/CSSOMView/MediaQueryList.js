export function media(mediaQueryList) {
  return function () {
    return mediaQueryList.media;
  };
}

export function matches(mediaQueryList) {
  return function () {
    return mediaQueryList.matches;
  };
}

export function addListener(mediaQueryList) {
  return function (callback) {
    return function () {
      mediaQueryList.addListener(callback);
    };
  };
}

export function removeListener(mediaQueryList) {
  return function (callback) {
    return function () {
      mediaQueryList.removeListener(callback);
    };
  };
}
