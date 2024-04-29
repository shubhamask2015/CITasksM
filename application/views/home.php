<?php $this->load->view('layouts/backend/header'); ?>
    <main>
        <div class="container pt-5">
            <div class="row bg-dark p-5 rounded">
                <!-- Title -->
                <div class="row text-center">
                    <h1 class="fw-bolder text-white mb-3">Front-end & Back-end Assignment Solution</h1>
                    <hr style="background-color:#FFF; height:1rem; border-width:0;">
                </div>

                <!-- Main Div -->
                <div class="row d-flex justify-content-between mt-4">
                    <!-- Left div (Back - End) -->
                    <div class="col col-md-5 bck-end m-2 bg-light">
                        <div class="row text-center py-3">
                            <h2 class="fw-bold">Back-end</h2>
                            <hr style="border:3px solid #444;">
                        </div>
                        <div class="row">
                            <div class="col">
                                <a href="<?=base_url('backend-question-pdf'); ?>" type="button" class="btn btn-danger w-100 fs-3 p-2">Question <i class="fa-regular fa-file-pdf"></i></a>
                            </div>
                            <div class="col">
                                <a href="<?= base_url('backend-solutions'); ?>" type="button" class="btn btn-success w-100 fs-3 p-2">Solution <i class="fa-solid fa-laptop-code"></i></a>
                            </div>
                        </div>
                    </div>

                    <!-- Right Div (Frontend) -->
                    <div class="col col-md-5 bck-end m-2 bg-light">
                        <div class="row text-center py-3">
                            <h2 class="fw-bold">Frontend-end</h2>
                            <hr style="border:3px solid #444;">
                        </div>
                        <div class="row">
                            <div class="col">
                                <a href="<?= base_url('frontend-question-pdf') ?>" type="button" class="btn btn-danger w-100 fs-3 p-2">Question <i class="fa-regular fa-file-pdf"></i></a>
                            </div>
                            <div class="col">
                                <a href="<?= base_url('frontend-solution');?>" target="_blank" type="button" class="btn btn-success w-100 fs-3 p-2">Solution <i class="fa-solid fa-laptop-code"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
<?php $this->load->view('layouts/backend/footer'); ?>