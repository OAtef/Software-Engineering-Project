google.charts.load('current', {'packages': ['corechart']}).then(function() {

  $("#ShowGraphBtn").click(function() {

    PieStat("GenderDonation");
  })

})

function PieStat(statType) {

  var chartdata = new google.visualization.DataTable();

  chartdata.addColumn('string', 'x');
  chartdata.addColumn('number', 'y');

  $.ajax({
    url: "../Controller/Stats/StatsC.php",
    data: {stat: statType},
    type: "POST",
    dataType: "JSON",
    success: function(data){

      for(var key in data){

        chartdata.addRows([
          [key, data[key]]
        ]);

      }

      var options = {
        'title': 'Gender Donations',
        'width': 395,
        'height': 400
      };

      var chart = new google.visualization.PieChart(document.getElementById('GenderPieChart'));
      chart.draw(chartdata, options);
    },
    error: function(data){
      console.log(data);
    }
  });
}
