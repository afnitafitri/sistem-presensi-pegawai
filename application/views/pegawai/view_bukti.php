<section class="content">
      <div class="container-fluid">
        <!-- Main row -->
        <div class="row">

          <section class="col-lg-12 connectedSortable">
            <!-- Map card -->
            <div class="card">
              <div class="card-header"> <?=$title?> </h3>
                  <a style="float: right;" href="<?=base_url($this->session->userdata('level').'/cuti')?>" class="btn btn-sm btn-danger">Back</a>
              </div>
              <div class="card-body table-responsive">
                <table id="table" class="table table-bordered table-striped text-center">  
                 <td><img src="<?php echo base_url('bukti/'. $data->bukti);?>"></td>
                </table>
              </div>
            </div>
          </section>
        </div>
      </div>
    </section>