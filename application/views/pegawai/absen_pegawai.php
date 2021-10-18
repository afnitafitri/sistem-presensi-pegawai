

    <section class="content">
      <div class="container-fluid">
        <!-- Main row -->
        <div class="row">

          <section class="col-lg-6 connectedSortable">

            <!-- Map card -->
            <div class="card"> 
              <div class="card-header"> Notifikasi </h3>
              </div>
              <form method="post" action="proses_absen">
               <div class="card-body">
                  <?php if ($waktu != 'dilarang') { ?>
                  <p class="text-center">Hai, <?=$this->session->userdata('nama')?> anda hari ini belum melakukan absen <b><?=$waktu?></b>. 
                  Silahkan lakukan absen pada tombol absen berikut <br><br><button <?php if ($waktu != 'masuk') { ?> class="btn btn-success" <?php } else { ?> class="btn btn-primary" <?php } ?>> Absen <?=$waktu?></button></p>
                  <input type="hidden" name="ket" id="ket" value="<?=$waktu?>">
                  <input hidden type="text" name="lat" id="lat">
                  <input hidden type="text" name="long" id="long">
                  <?php }else{ ?>
                  <p class="text-center">Hai, <?=$this->session->userdata('nama')?> anda hari ini sudah melakukan absensi <b>Masuk</b> dan <b>Pulang</b></p>
                  <?php }  ?>
                </div>
                </form>
            </div>
          </section>
        </div>
      </div>
    </section>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
    getLocation();
    function getLocation(){
        if (navigator.geolocation){
            // navigator.geolocation.getCurrentPosistion(showPosition);
            navigator.geolocation.getCurrentPosition(showPosition);
        } else {
            alert ("Geolocation is not supported by this browser.");
        }
    }
    function showPosition(position){
        var lat = position.coords.latitude;
        var long = position.coords.longitude;
        //console.log(lat);
        //console.log(long);
        document.getElementById('lat').value = lat;
        document.getElementById('long').value = long;
    }
</script>
    
          