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
                <table id="table" class="table table-bordered table-striped text-start">
                    <thead>
                      <th>No</th>
                      <th>Nama</th>
                      <th>Waktu</th>
                      <th>Keterangan</th>
                      <th>Location</th>
                    </thead>
                    <tbody>
                      <?php $no=1; foreach ($data as $d) { ?>
                      <tr>
                        <td width="1%"><?=$no++?></td>
                        <td><?=ucfirst($d->nama)?></td>
                        <td><?=ucfirst($d->waktu)?></td>
                        <td><?=ucfirst($d->keterangan)?></td>
                        <td><a href="<?= 'https://www.google.com/maps/place/' .$d->lat . ' '  . $d->long?>" target="blank">Location</a></td>
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