<?php 
include('koneksi.php');
include('header.php');?>
<br>
<br>
<br>
<html>
	<head>
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/highcharts.js" type="text/javascript"></script>
<script type="text/javascript">
	var chart1; // globally available
$(document).ready(function() {
      chart1 = new Highcharts.Chart({
         chart: {
            renderTo: 'container',
            type: 'column'
         },   
         title: {
            text: 'Grafik Progres '
         },
         xAxis: {
            categories: ['merek']
         },
         yAxis: {
            title: {
               text: 'Jumlah Progres'
            }
         },
              series:             
            [
            <?php 
        	include('config.php');
           $sql   = "SELECT *  FROM customer";
            $query = mysql_query( $sql )  or die(mysql_error());
            while( $ret = mysql_fetch_array( $query ) ){
            	$merek=$ret['Nama_Customer'];      
                $id=$ret['Id_Customer'];      				
                 $sql_jumlah   = "SELECT progress FROM proses WHERE Id_Customer='$id'";        
                 $query_jumlah = mysql_query( $sql_jumlah ) or die(mysql_error());
                 while( $data = mysql_fetch_array( $query_jumlah ) ){
                    $jumlah = $data['progress'];                 
                  }             
                  ?>
                  {
                      name: '<?php echo $merek; ?>',
                      data: [<?php echo $jumlah; ?>]
                  },
                  <?php } ?>
            ]
      });
   });	
</script>
	</head>
	<body>
		<div id='container'></div>		
	</body>
</html>
<?php 
include('footer.php');?>