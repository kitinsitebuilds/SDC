$(document).ready(function (e) {

    //$('#btnValue').click(function () {
    //    $("#divkarea").html("");
    //    var content = tinymce.get("txtarea").getContent();
    //    $("#divkarea").html(content);
    //});

    document.getElementById("agent_dashboard").style.display = "block";
    document.getElementById("agent_assigned").style.display = "none";
    document.getElementById("agent_case").style.display = "none";
});
function getAssigned() {
    document.getElementById("agent_dashboard").style.display = "none";
    document.getElementById("agent_assigned").style.display = "block";
    document.getElementById("agent_case").style.display = "none";
};
function getCase() {
    document.getElementById("agent_dashboard").style.display = "none";
    document.getElementById("agent_assigned").style.display = "none";
    document.getElementById("agent_case").style.display = "block";
};
