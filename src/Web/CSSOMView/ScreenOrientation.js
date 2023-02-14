export function lockImpl(orientation) {
  return function(so) {
    return function(onError, onSuccess) {
      so.lock(orientation).then(onSuccess, onError);
      return function canceler(cancelError, onCancelerError, onCancelerSuccess) {
        onCancelerSuccess();
      };
    };
  };
}

export function unlockImpl(so) {
  return so.unlock();
}

export function typeImpl(so) {
  return so.type;
}

export function angleImpl(so) {
  return so.angle;
}

export function onChangeImpl(handler, so) {
  so.onchange = handler;
}
