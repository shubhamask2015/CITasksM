<?php
defined('BASEPATH') or exit("Trying to access Script directly! It's not allowed.");

class Home extends CI_Controller{
    // Homepage Related Requests Handling
    public function index(){
        $this->load->view('home');
    }
    public function questionPdfBackend(){
        $this->load->view('backend/q-pdf');
    }
    public function questionPdfFrontend(){
        $this->load->view('frontend/q-pdf');
    }
    public function solutionsBackend(){
        $this->load->model('Main');
        $data['tbl'] = $this->Main->getUsers();
        $data['res_q2_1'] = $this->Main->getResultQ2_1();
        $data['res_q2_2'] = $this->Main->getResultQ2_2();
        $data['res_q2_1n2'] = $this->Main->getResultQ2_1n2();
        $this->load->view('backend/solutions', $data);
    }
    public function solutionsFrontend(){
        $this->load->view('backend/solutions');
    }

    // Backend Question 1 related
    // Form Validation handler
    public function checkValidation(){
        // Set validation rules
        $this->form_validation->set_rules('name', 'Name', 'required|callback_alpha_space');
        $this->form_validation->set_rules('mobile', 'Mobile Number', 'required|numeric|exact_length[10]');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        $this->form_validation->set_rules('password', 'Password', 'required');
        $this->form_validation->set_rules('cnf_password', 'Confirm Password', 'required|matches[password]');

        $status = $this->form_validation->run();
        $arr = $this->form_validation->error_array();
        $arr+=['status'=> !$status];
        echo json_encode($arr);
    }

    // Custom form validation which is only allowing alphabet including space
    public function alpha_space($str)
    {
        if (!preg_match('/^[a-zA-Z ]+$/i', $str)) {
            $this->form_validation->set_message('alpha_space', 'The %s field may only contain alphabetic characters and spaces.');
            return FALSE;
        } else {
            return TRUE;
        }
    }

    // Form Submission handlar
    public function saveData(){
        $this->load->library('upload');
        $this->load->library('encryption');
        $this->load->model('Main');

        $pass = $this->input->post('password');
        $pass = $this->encryption->encrypt($pass);

        $formData = array(
            'name' => $this->input->post('name'),
            'mobile' => $this->input->post('mobile'),
            'email' => $this->input->post('email'),
            'password' => $pass,
        );


        // File upload configuration
        $config['upload_path'] = FCPATH.'public/img'; // Set the upload path
        $config['allowed_types'] = 'gif|jpg|png'; // Set the allowed file types
        $config['max_size'] = 2048; // Set the maximum file size (in KB)

        $this->upload->initialize($config); // Initialize the upload library with the config

        // Loop through the files and upload them
        $count = 0;
        $uploadedImg = array();
        foreach ($_FILES['files']['name'] as $key => $image) {
            $file = array();
            $file['name'] = $_FILES['files']['name'][$key];
            $file['type'] = $_FILES['files']['type'][$key];
            $file['tmp_name'] = $_FILES['files']['tmp_name'][$key];
            $file['error'] = $_FILES['files']['error'][$key];
            $file['size'] = $_FILES['files']['size'][$key]; 

            $_FILES['file'] = $file;
            array_push($uploadedImg, $file['name']);

            if ($count++ && !$this->upload->do_upload('file')) {
                // If the upload fails, display the error message
                $error = array('error' => $this->upload->display_errors());
                $error['hi'] = $_FILES['files']['name'][$key];
                echo json_encode($error);
                return;
            }
        }

        array_splice($uploadedImg,0,1);
        $formData['images'] = json_encode($uploadedImg);
        if($this->Main->saveFormData('form_data', $formData)){
            $formData['password'] = $this->encryption->decrypt($pass);
            $formData['status'] = true;
            echo json_encode($formData);
        }
        else{
            $res['status'] = false;
            echo json_encode($res);
        }
    }

    // Frontend Questions
    public function frntendSoln(){
        $this->load->view('frontend/index');
    }

}