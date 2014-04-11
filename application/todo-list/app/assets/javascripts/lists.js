$(function() {
    "use strict";

    $(".task-list__delete").on("click", function (event) {
        var $this = $(this);

        $this.prop("disabled", true);

        $.ajax({
            url: "/lists/" + $this.attr("data-list-id"),
            type: "DELETE",
            success: function () {
                window.location.reload();
            },
            error: function(error) {
                console.error(error);
            }
        });

        event.preventDefault();
        return false;
    });

    $("#new-list-name").on("keyup", function (event) {
      if(event.keyCode === 13){
        $("#add-new-list").click();
      }
    });

    $("#add-new-list").on("click", function (event) {
        var $name = $("#new-list-name");
        var name = $name.val();
        var $this = $(this);

        $name.removeClass("invalid");

        if (name) {
            $this.prop("disabled", true);

            $.ajax({
                url: "/lists/new/" + name,
                type: "PUT",
                success: function () {
                    window.location.reload();
                },
                error: function(error) {
                    console.error(error);
                }
            });
        } else {
            $name.addClass("invalid");
        }

        event.preventDefault();
        return false;
    });
});