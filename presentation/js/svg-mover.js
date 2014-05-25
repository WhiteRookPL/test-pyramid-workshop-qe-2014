(function() {
    var DISTANCE = 20;

    function noop() {}

    function translateY(dY) {
        return function addTransform(element) {
            element.setAttribute("transform", "translate(0, :dY)".replace(":dY", dY));
        };
    }

    function forEach(elements, fn) {
        for (var i = 0, l = elements.length; i < l; ++i) {
            fn(elements.item(i), i);
        }
    }

    var moveUp = translateY(-DISTANCE);
    var moveDown = translateY(DISTANCE);

    function moveElements(elements, pivotIndex) {
        var movingDown = false;
        var pivot = pivotIndex;
        var checkActive = typeof pivot === "undefined" ? function(element) {
                if (element.classList.contains("active")) {
                    movingDown = true;
                    checkActive = noop;
                    return true;
                }

                return false;
            } : noop;

        for (var i = 0, item;
            (item = elements.item(i)); ++i) {
            if (checkActive(item)) {
                pivot = i;
                continue;
            }

            if (i === pivot) {
                movingDown = true;
                continue;
            }

            (movingDown ? moveDown : moveUp)(item);
        }

        return pivot;
    }

    forEach(document.querySelectorAll("svg"), function(svg, index) {
        var pivot = moveElements(svg.querySelectorAll("polygon"));
        moveElements(svg.querySelectorAll("text"), pivot);
    });

})();