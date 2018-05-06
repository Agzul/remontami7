(function() {
  var all_ready, qq;

  qq = function() {
    console.log("sadsadsad");
    return $("[data-toogle='dropdown']").click(function() {
      return console.log("click");
    });
  };

  all_ready = function() {
    return window.qq();
  };

  $(document).on('turbolinks:load', all_ready);

}).call(this);
