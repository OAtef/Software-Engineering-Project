$.ajax({
  url: '../Controller/Stats/StatsC.php',
  data: {
    stat: "DonationCard"
  },
  type: 'POST',
  dataType: "JSON",
  success: function(data) {

    var div = document.getElementById("StatCards");

    var card = "<div class='col-xl-3 col-md-6 mb-4'><div class='card border-left-primary shadow h-100 py-2'><div class='card-body'>";
    card += "<div class='row no-gutters align-items-center'><div class='col mr-2'>";
    card += "<div class='text-xs font-weight-bold text-primary text-uppercase mb-1'>Total Donations Requested Today</div>";
    card += "<div class='h5 mb-0 font-weight-bold text-gray-800'>"+data+"</div>";
    card += "</div><div class='col-auto'><i class='fas fa-dollar-sign fa-2x text-gray-300'></i></div></div></div></div></div>";

    div.innerHTML += card;
  },
  error: function(data) {
    console.log(data);
  }
});

google.charts.load('current', {
  'packages': ['corechart']
}).then(function() {

  $("#PaymentMethodDonationsStat").click(function() {

    PieStat("PaymentMethodDonation");
  })

  $("#ProjectCategoryStat").click(function() {

    PieStat("ProjectCategoryDonation");
  })
})

function PieStat(statType) {

  var chartdata = new google.visualization.DataTable();

  chartdata.addColumn('string', 'x');
  chartdata.addColumn('number', 'y');

  $.ajax({
    url: "../Controller/Stats/StatsC.php",
    data: {
      stat: statType
    },
    type: "POST",
    dataType: "JSON",
    success: function(data) {

      console.log(data);

      for (var key in data) {

        chartdata.addRows([
          [key, data[key]]
        ]);

      }

      var options = {
        'title': statType,
        'width': 1000,
        'height': 400
      };

      var chart = new google.visualization.PieChart(document.getElementById('StatsDiv'));
      chart.draw(chartdata, options);
    },
    error: function(data) {
      console.log(data);
    }
  });
}
