<?php
require_once 'core/init.php';


if(isset($_SESSION['email'])){
$token = hash("sha256", time());
$_SESSION['token'] = $token;

$District = $user->get('District');
$Townships = $user->get('Townships');
$townshipData = array();
 foreach ($Townships as $township=>$towns) {
     array_push($townshipData, $towns['name']);
 }

?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Add Patients</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <!-- Custom styles for this template -->
    <link href="css/simple-sidebar.css" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
    <!-- jQuery UI library -->
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

    <style>
        .select2-container .select2-selection--single{
            height:34px !important;
        }
        .select2-container--default .select2-selection--single{
            border: 1px solid #ccc !important;
            border-radius: 0px !important;
        }
    </style>

</head>

<body>

<div class="d-flex container pt-4" id="wrapper">

    <!-- Sidebar -->
    <div class="bg-light border-right col-2" id="sidebar-wrapper">

        <div class="list-group list-group-flush">
<!--            <a href="#" class="list-group-item list-group-item-action bg-light">Add Patient</a>-->
            <a href="add-district.php" class="list-group-item list-group-item-action bg-light">Add District(ခရိုင်)</a>
            <a href="add-township.php" class="list-group-item list-group-item-action bg-light">Add Township(မြို့နယ်)</a>

            <!--            <a href="/detectEmotion" class="list-group-item list-group-item-action bg-light" disabled="true">Emotion</a>-->

        </div>
    </div>
    <!-- /#sidebar-wrapper -->
    <div class="col-10">
        <h4>Add Township(မြို့နယ်များ ပေါင်းထည့်ခြင်း)</h4>
        <?php flash('success') ?>
        <br>
        <br>
        <form method="post" action="process/add_process.php">
            <div class="form-row">

<!--                District Name-->
                <div class="form-group col-md-6">
                    <label for="township_input">Name</label>
                    <input type="text" name="township_name" class="form-control" id="township_input" placeholder="Township Name">
                </div>

<!--                //Hospital Name-->
                <div class="form-group col-md-6">
                    <label for="state_id">District(ခရိုင်) </label>
                    <select class="browser-default custom-select select2" name="district_id">
                        <?php foreach ($District as $district=>$dist) { ?>
                        <option selected value="<?php echo $dist['id']?>"><?php echo $dist ['name']?></option>
                        <?php } ?>
                    </select>
                </div>









            <input type="hidden" name="tok" value="<?php echo $token; ?>">
            <button type="submit" class="btn btn-primary" name="btnAddTownship">Add District</button>
        </form>
    </div>

</div>
<!-- /#wrapper -->

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Menu Toggle Script -->
<script>
    $("#menu-toggle").click(function (e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
</script>

<script>
    $('.select2').select2();
</script>
<script>
    $(function() {
        $("#township_input").autocomplete({
            source: <?php echo json_encode($townshipData);  ?>
        });
    });
</script>

</body>

</html>
<?php
}
else{
    session_destroy();
    header("location: error/404.php");
    exit();
}
?>