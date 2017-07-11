var count = 0;

$(document).ready(function () {
    receive();
    setInterval("receive()", 2000);
});

function send() {
    var date = new Date();

    var myJson = {};
    myJson["name"] = $("#chatname").val();
    myJson["date"] = date;
    myJson["msg"] = $("#chattext").val();

    $.ajax({
        type: "PUT",
        url: "rest/shoutbox",
        data: JSON.stringify(myJson),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: "callback"});

    $("#chattext").val("");
    $("#chatname").prop('disabled', true);
    check();
}

function receive() {
    $.ajax({
        dataType: 'json',
        url: "rest/shoutbox",
        data: null,
        success: function (data) {
            createText(data);
        }
    });
}

function createText(data) {
    var area = $('#chatlist');
    area.empty();
    for (var i = 0; i < data.length; i++) {
        var obj = data[i];
        if (obj.name === $("#chatname").val()) {
            if (i === data.length - 1 && i > count) {
                var content = '<li class="last" id="right" style="display: none">' + obj.msg + " <u>" + obj.name + ": " + obj.date + '</u></li>';
                area.append(content);
                $(".last").fadeIn(1000);
                count = i;
            } else {
                var content = '<li id="right">' + obj.msg + " <u>" + obj.name + ": " + obj.date + '</u></li>';
                area.append(content);
            }
        } else {
            if (i === data.length - 1 && i > count) {
                var content = '<li class="last" id="left" style="display: none"><u>' + obj.date + " " + obj.name + "</u>: " + obj.msg + '</li>';
                area.append(content);
                $(".last").fadeIn(1000);
                count = i;
            } else {
                var content = '<li id="left"><u>' + obj.date + " " + obj.name + "</u>: " + obj.msg + '</li>';
                area.append(content);
            }
        }
    }
}
$("#chattext").on("keyup", function () {
    check();
});
$("#chatname").on("keyup", function () {
    check();
});
$(document).keyup(function (e) {
    if (e.which === 13) {
        if (check()) {
            send();
            $("#chattext").val("");
        }
    }
});

function check() {
    if ($("#chattext").val().length > 0 && $("#chatname").val().length > 0) {
        document.getElementById("send").disabled = false;
    } else {
        document.getElementById("send").disabled = true;
    }

    var msg = 150;
    msg = msg - $("#chattext").val().length;
    if (msg < 0) {
        $("#chattext").css("border", "3px solid");
        $("#chattext").css("border-color", "red");
        $("#counter").html(msg);
        $("#counter").css("color", "red")
        document.getElementById("send").disabled = true;

        return false;
    } else {
        $("#chattext").css("border-width", "1px");
        $("#chattext").css("border-color", "rgb(169, 169, 169)");
        $("#counter").html(msg);
        $("#counter").css("color", "green");
        return true;
    }
}