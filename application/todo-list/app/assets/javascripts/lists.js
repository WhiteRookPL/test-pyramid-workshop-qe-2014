$(function() {
    "use strict";

    $(document).on("click", ".task-lists__list__delete", function (event) {
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
        var name = sanitize($name.val().trim());
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
                    if(error.status === 409) {
                        window.TODO.notify("A list with such name already exists.");
                        $name.addClass("invalid");
                        $this.prop("disabled", false);
                    }
                }
            });
        } else {
            $name.addClass("invalid");
        }

        event.preventDefault();
        return false;
    });
});