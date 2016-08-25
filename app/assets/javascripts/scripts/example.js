

$(document).ready(function() {

    var container = $('#container');

    // fade in effect
    container.css({
        opacity: 0
    });
    container.delay(500).animate({
        opacity: 1
    }, 500);

    container.theta_carousel({
        //sensitivity는 잘 모르겠음
        "Sensitivity": 0.2,
        "filter": ".ex-item",
        "selectedIndex": 0,
        "distance": 125,
        "designedForWidth": 1920,
        "designedForHeight": 1540,
        "scaleZ": 0.86,
        "distanceInFallbackMode": 250,
        "path": {
            "settings": {
                "shiftY": 240,
                "shiftZ": 630,
                "rotationAngleZY": -17,
                "wideness": 521
            },
            "type": "parabola"
        },
        "shadow": true,
        "shadowBlurRadius": 31,
        "shadowSpreadRadius": 0,
        "fadeAway": true,
        "fadeAwayBezierPoints": {
            "p1": {
                "x": 0,
                "y": 100
            },
            "p2": {
                "x": 97,
                "y": 97
            },
            "p3": {
                "x": 97,
                "y": 98
            },
            "p4": {
                "x": 100,
                "y": 0
            }
        },
        "popoutSelected": true,
        "popoutSelectedShiftY": -56,
        "popoutSelectedShiftZ": 155
    });
    
});

