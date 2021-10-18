<section class="content">
      <div class="container-fluid">
        <!-- Main row -->
        <div class="row">

          <section class="col-lg-12 connectedSortable">

            <!-- Map card -->
            <div class="card">
              <div class="card-header"> <?=$title?> </h3>
              </div>
              <div class="card-body table-responsive">
                <table id="myTable" class="table table-bordered table-striped text-center">
                    <thead>
                      <th width="1%">No</th>
                      <th>NIP</th>
                      <th>Nama</th>
                      <th>Email</th>
                      <th>Jabatan</th>
                      <th>Jenis</th>
                      <th>Waktu</th>
                      <th>Keterangan</th>
                      <th>Status</th>
                    </thead>
                    <tbody>
                      <?php $no=1; foreach ($data as $d) { 
                        $cek = $this->db->query(" select min(tanggal) as mulai,max(tanggal) as akhir from detailcuti where id_cuti = '$d->id_cuti' ")->row();
                      ?>
                      <tr>
                        <td width="1%"><?=$no++?></td>
                        <td><?=($d->nip)?></td>
                        <td><?=ucfirst($d->nama)?></td>
                        <td><?=($d->email)?></td>
                        <td><?=ucfirst($d->departemen)?></td>
                        <td><?=ucfirst($d->jenis_cuti)?></td>
                        <td><?=date('d/m/Y', strtotime($cek->mulai))?> - <?=date('d/m/Y', strtotime($cek->akhir))?></td>
                        <td>
                          <?=ucfirst($d->alasan)?><br>
                          <?php if ($d->jenis_cuti == 'sakit') { ?>
                            <small>Bukti  <a href="<?=base_url('admin/view_bukti/'.$d->id_cuti)?>" >Klik disini</a></small>
                          <?php } ?>
                        </td>
                        <td><?=ucfirst($d->status)?></td>
                      </tr>
                      <?php } ?>
                    </tbody>
                  </table>
                  <div class="">
                    <a href="<?=base_url('admin/cuti')?>" class="btn btn-danger">Kembali</a>
                  </div>
              </div>
            </div>
          </section>
        </div>
      </div>
    </section>