// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
(function ($) {
    "use strict";

    window.TODO = window.TODO || {};

    window.TODO.notify = function(msg) {
        $(".notice").text(msg);
        handleNotificationVisibility(".notice");
    };

    function handleNotificationVisibility(selector) {
        var $notice = $(selector);

        function hideNotice(speed) {
            $notice.fadeOut(speed || 1000);
        }

        if ($notice.text()) {
            $notice.show();
            $(document).on("click", hideNotice.bind(null, 200));
            setTimeout(hideNotice, 2000);
        }
    }

    window.sanitize = function (value) {
        value = encodeURIComponent(value);

        return $("<div/>").text(value).html();
    };

    $(function () {
        handleNotificationVisibility(".notice");
        handleNotificationVisibility(".alert");
    });
})(window.jQuery);