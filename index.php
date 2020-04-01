<?php
require_once 'core/init.php';

$States = $user->get('States');
$District = $user->get('District');
$Townships = $user->get('Townships');

$statesData = array();
$districtData = array();
$townshipData = array();

foreach ($States as $state=>$sta) {
    array_push($statesData, $sta['name']);
};

foreach ($District as $district=>$dist) {
    array_push($districtData, $dist['name']);
};

foreach ($Townships as $township=>$town) {
    array_push($townshipData, $town['name']);
};
echo json_encode($townshipData);
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    Hello
<script>
     var divisions =  <?php echo json_encode($statesData); ?>;
    console.log(divisions);

     var khayines =  <?php echo json_encode($districtData); ?>;
     console.log(khayines);

     var townships =  <?php echo json_encode($townshipData); ?>;
     console.log(townships);
</script>
</body>
</html>
