<?php 
defined('BASEPATH') or exit("Sorry, You Can't directly access script!");

class Main extends CI_Model{
    public function __construct(){
        $this->load->database();
    }

    public function getUsers(){
        return $this->db->get('users')->result();
    }

    public function getResultQ2_1(){
        $sql = "SELECT id FROM users WHERE status = 'active' AND mobile IN (SELECT mobile FROM users GROUP BY mobile, status HAVING status = 'active' AND COUNT(mobile) > 1) ORDER BY mobile DESC";
        $query = $this->db->query($sql);
        return $query->result();
    }

    public function getResultQ2_2(){
        $sql = "SELECT location FROM (SELECT location, COUNT(location) lc FROM users GROUP BY location ORDER BY lc DESC) as sub_tbl";
        $query = $this->db->query($sql);
        return $query->result();
    }

    public function getResultQ2_1n2(){
        $sql = "SELECT id, location FROM (SELECT id, location, (SELECT COUNT(*) FROM users t2 WHERE t2.location = t1.location) AS occurrence FROM users t1 WHERE status = 'active' AND mobile IN(SELECT mobile FROM users GROUP BY mobile, status HAVING status='active' and  COUNT(mobile) > 1)) as t ORDER BY occurrence DESC";
        $query = $this->db->query($sql);
        return $query->result();
    }

    public function saveFormData($tbl, $data){
        return $this->db->insert($tbl, $data);
    }
}