<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>
        <?=$web->nama?> | Login
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/login/css/style.css">
    <!-- Favicon -->
    <link href="<?php echo base_url(); ?>assets/img/walikota-icon.png" rel="icon" type="image/png">
    <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a81368914c.js"></script>
    <link href="<?php echo base_url(); ?>assets/assets_argon/js/plugins/nucleo/css/nucleo.css" rel="stylesheet" />
    <link href="<?php echo base_url(); ?>assets/assets_argon/js/plugins/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet" />
    <!-- CSS Files -->
    <link href="<?php echo base_url(); ?>assets/assets_argon/css/argon-dashboard.css?v=1.1.0" rel="stylesheet" />
    <!--End of Tawk.to Script-->
</head>

<body>
    <!-- <img class="wave" src="<?php echo base_url(); ?>assets/img/bg.png"> -->
    <div class="container">
        <div class="img">
            <!-- <lottie-player src="https://assets1.lottiefiles.com/private_files/lf30_m6j5igxb.json" background="transparent"  speed="1"  style="width: 500px; height: 400px;" loop  autoplay></lottie-player> -->
            <!-- <img src="./assets/img/Launch.svg" alt="" style="width: 400px;"> -->
            <!-- <lottie-player src="https://assets6.lottiefiles.com/packages/lf20_q5pk6p1k.json" background="transparent"  speed="1"  style="width: 340px;" loop autoplay></lottie-player> -->
            <lottie-player src="https://assets5.lottiefiles.com/packages/lf20_yxtzu6mz.json" background="transparent"  speed="1"  style="width: 480px;" loop autoplay></lottie-player>
            <!-- <lottie-player src="https://assets8.lottiefiles.com/packages/lf20_Lcwy20.json" background="transparent"  speed="1"  style="width: 420px; height: 400px;" loop autoplay></lottie-player> -->
        </div>
        <div class="login-content">
            <form action="<?=base_url('auth/aksi_login')?>" method="post">
                <img src="<?php echo base_url(); ?>assets/img/walikota-logo.png">
                <h2 class="title"><?=$web->nama?></h2>
                <h3>BADAN KEPEGAWAIAN DAERAH PEMERINTAH PROVINSI DKI JAKARTA</h3>
                <div class="input-div one">
                    <div class="i">
                        <i class="fas fa-envelope"></i>
                    </div>
                    <div class="div">
                        <!-- <h5>Email</h5> -->
                         <input type="text" class="form-control" name="nip" placeholder="NIP" required="" >
                    </div>
                </div>
                <div class="input-div pass">
                    <div class="i">
                        <i class="fas fa-lock"></i>
                    </div>
                    <div class="div">
                        <!-- <h5>Password</h5> -->
                        <input type="password" class="form-control" name="password" placeholder="Password" required="" >
                    </div>
                </div>
                <input type="submit" class="btn btn-primary" style="background-color: #003b6f" value="Login">
                <!-- <div class="recovery text-center">Can't Login?<a href="lupa_password.php"> Click Here!</a></div> -->
            </form>
        </div>
    </div>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/login/js/main.js"></script>
    <script src="<?php echo base_url(); ?>assets/assets_argon/js/plugins/jquery/dist/jquery.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/assets_argon/js/plugins/bootstrap/dist/js/bootstrap.bundle.min.js">
    </script>
    <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
    <!--   Optional JS   -->
    <!--   Argon JS   -->
    <script src="<?php echo base_url(); ?>assets/assets_argon/js/argon-dashboard.min.js?v=1.1.0"></script>
    <script src="https://cdn.trackjs.com/agent/v3/latest/t.js"></script>
    <script src="<?php echo base_url('assets/') ?>alert.js"></script>
    <?php echo "<script>".$this->session->flashdata('message')."</script>"?>
</body>

</html>