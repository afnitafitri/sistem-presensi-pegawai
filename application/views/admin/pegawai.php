    
    <section class="content">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <div class="container-fluid">
        <!-- Main row -->
        <div class="row">

          <section class="col-lg-12 connectedSortable">

            <!-- Map card -->
            <div class="card">
              <div class="card-header"> <?=$title?> </h3>
                <a style="float: right;" href="<?=base_url('admin/pegawai_add')?>" class="btn btn-sm btn-primary">Tambah data</a>
              </div>
              <div class="card-body table-responsive">
                <table id="myTable" class="table table-bordered table-striped text-start">
                    <thead>
                      <th>No</th>
                      <th>NIP</th>
                      <th>Nama</th>
                      <th>Email</th>
                      <!-- <th>Jenis kelamin</th> -->
                      <th>Jabatan</th>
                      <th>Waktu Masuk</th>
                      <!-- <th>Gaji</th> -->
                      <th>Opsi</th>
                    </thead>
                    <tbody>
                      <?php $no=1; foreach ($data as $d) { ?>
                      <tr>
                        <td width="1%"><?=$no++?></td>
                        <td><?=$d->nip?></td>
                        <td><?=ucfirst($d->nama)?></td>
                        <td><?=lcfirst($d->email)?></td>
                        <!-- <td><?=$d->jenis_kelamin?></td> -->
                        <td><?=ucfirst($d->departemen)?></td>
                        <td><?=date('d F Y', strtotime($d->waktu_masuk))?></td>
                        <!-- <td>Rp. <?=number_format($d->gaji)?></td> -->
                        <td>
                          <a href="<?=base_url('admin/pegawai_edit/'.$d->nip)?>" class="btn btn-primary btn-sm"><span class="fa fa-edit"></span></a>
                          <a onclick="return confirm('apakah anda yakin ingin menghapus pegawai ini?')" href="<?=base_url('admin/pegawai_delete/'.$d->nip)?>" class="btn btn-danger btn-sm"><span class="fa fa-trash"></span></a>
                          <a href="<?=base_url('admin/reset_pass/'.$d->nip)?>" class="btn btn-success btn-sm"><i class="fa fa-refresh"></i></a>
                        </td>
                      </tr>
                      <?php } ?>
                    </tbody>
                  </table>
              </div>
            </div>
          </section>
        </div>
      </div>
    </section>