<?php $this->load->view('layouts/backend/header');?>

<main>
    <h1 class="text-center text-info fw-bolder py-5">PHP/CI Assignment Pdf</h1>
    <div class="container pt-1" style="background-color: #aaa;">
        <!-- displays 1st pdf using pdf.js-->
        <canvas id="pdf-canvas-1" style="width: 100%;"></canvas><br>
        <!-- displays 2nd pdf using pdf.js-->
        <canvas id="pdf-canvas-2" style="width: 100%;"></canvas>
    </div>
</main>
<?php 
    $pdf = ['pdf'=>base_url('public/pdf-files/php-task.pdf')];
    $this->load->view('/pdf-renderer',$pdf); 
?>
<?php $this->load->view('layouts/backend/footer');?>