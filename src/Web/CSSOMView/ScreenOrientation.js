"use strict";

exports.lockImpl = function lock(orientation) {
  return function(so) {
    return function(onError, onSuccess) {
      so.lock(orientation).then(onSuccess, onError);
      return function canceler(cancelError, onCancelerError, onCancelerSuccess) {
        onCancelerSuccess();
      };
    };
  };
};

exports.unlockImpl = function(so) {
  return so.unlock();
};

exports.typeImpl = function(so) {
  return so.type;
};

exports.angleImpl = function(so) {
  return so.angle;
};

exports.onChangeImpl = function(handler, so) {
  so.onchange = handler;
};
