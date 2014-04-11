(function ($) {
    "use strict";

    $(".task-list__task__delete").on("click", function (event) {
        var $this = $(this);

        $this.prop("disabled", true);

        $.ajax({
            url: "/lists/" + $this.attr("data-list-id") + "/tasks/" + $this.attr("data-task-id"),
            type: "DELETE",
            success: function () {
                window.location.reload();
            },
            error: function (error) {
                console.error(error);
            }
        });

        event.preventDefault();
        return false;
    });

    $(".task-state").on("mousedown", function () {
        var $this = $(this);
        $this.one("mouseup", function (event) {
            var originalChecked = $this.prop("checked");
            var taskContainer = $this.parents(".task-list__task");
            $this.prop("disabled", true);

            $.ajax({
                url: "/lists/" + $this.attr("data-list-id") + "/tasks/" + $this.attr("data-task-id") +
                    "/toggle",
                type: "POST",
                success: function () {
                    $this.prop("disabled", false);
                    taskContainer.toggleClass("task-list__task--done");
                    $this.prop("checked", !originalChecked);
                },
                error: function (error) {
                    document.write(error.responseText);
                }
            });

            event.preventDefault();
        });
    });

    $("#new-task-title").on("keyup", function (event) {
        if (event.keyCode === 13) {
            $("#add-new-task").click();
        }
    });

    $("#add-new-task").on("click", function (event) {
        var $name = $("#new-task-title");
        var name = $name.val();
        var $this = $(this);

        $name.removeClass("invalid");

        if (name) {
            $this.prop("disabled", true);

            $.ajax({
                url: "/lists/" + $this.attr("data-list-id") + "/tasks/new/" + name,
                type: "PUT",
                success: function () {
                    window.location.reload();
                },
                error: function (error) {
                    if (error.status === 409) {
                        window.TODO.notify("A task with such name already exists.");
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

    // $("#reopen-list").on("click", function (event) {
    //     var $this = $(this);

    //     $this.prop("disabled", true);

    //     $.ajax({
    //         url: "/lists/" + $this.attr("data-list-id") + "/reopen",
    //         type: "POST",
    //         success: function () {
    //             window.location.reload();
    //         },
    //         error: function(error) {
    //             console.error(error);
    //         }
    //     });

    //     event.preventDefault();
    //     return false;
    // });
}(window.jQuery));