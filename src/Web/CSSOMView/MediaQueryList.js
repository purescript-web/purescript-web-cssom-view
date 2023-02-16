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

export function addListener(callback) {
  return function (mediaQueryList) {
    return function () {
      mediaQueryList.addListener(callback);
    };
  };
}

export function removeListener(callback) {
  return function (mediaQueryList) {
    return function () {
      mediaQueryList.removeListener(callback);
    };
  };
}
