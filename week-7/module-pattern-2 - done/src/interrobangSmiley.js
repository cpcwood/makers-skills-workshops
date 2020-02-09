"use strict";

(function(exports) {
  var QUESTION_MARK_COUNT = 2
  function interrobangSmiley(text) {
    return text + "?".repeat(QUESTION_MARK_COUNT) + "!" + " :)"
  }
  exports.interrobangSmiley = interrobangSmiley;
})(this);

// Creates module closure, where its local scope contains question mark count