// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

// Pie Chart Example
var ctx = document.getElementById("myPieChart");
var myPieChart = new Chart(ctx, {
    type: 'doughnut',
    data: {
        labels: ["Assigned", "Ongoing", "Completed", "Sendback"],
        datasets: [{
            data: [5, 1, 2, 1],
            backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc', 'white'],
            hoverBackgroundColor: ['#2e59d9', '#17a673', '#2c9faf', 'black'],
            hoverBorderColor: "rgba(234, 236, 244, 1)",
        }],
    },
    options: {
        maintainAspectRatio: false,
        tooltips: {
            backgroundColor: "rgb(255,255,255)",
            bodyFontColor: "#858796",
            borderColor: '#dddfeb',
            borderWidth: 1,
            xPadding: 15,
            yPadding: 15,
            displayColors: false,
            caretPadding: 10,
        },
        legend: {
            display: false
        },
        cutoutPercentage: 80,
    },
});

//Tabs
function openCity2(evt, cityName) {
    var i, x, tablinks;
    x = document.getElementsByClassName("tabcontent");
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablink");
    for (i = 0; i < x.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" tabactive", "");
        
    }
    document.getElementById(cityName).style.display = "block";
    //document.getElementById('div'+ cityName).style.backgroundColor = "pink";
    
    document.getElementById('div' + cityName).className = "w3-bar-item w3-button tablink tabactive";
    //evt.currentTarget.className += " tabactive";
}


//Profile Upload
function showpreview(input,idName) {

    if (input.files && input.files[0]) {

        var reader = new FileReader();
        reader.onload = function (e) {
            $(idName).css('visibility', 'visible');
            $(idName).attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
    }

}
