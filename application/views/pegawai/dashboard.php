

    <section class="content">
      <div class="container-fluid">
        <!-- Main row -->
        <div class="row">

          <section class="col-lg-6 connectedSortable">

            <!-- Map card -->
            <div class="card"> 
              <div class="card-header"> Notifikasi </h3>
              </div>
              <form action="pegawai/home">
               <div class="card-body">
                  <p class="text-center">Hai, <b><?=$this->session->userdata('nama')?></b> Anda telah login sebagai <b><?=$this->session->userdata('level')?></b>.
                  Jangan lupa untuk melakukan absen masuk dan pulang pada menu Absensi Pegawai ya!</p>
                </div>
                </form>
            </div>
            
          </section>
        </div>
      </div>
    </section>

    
    
        