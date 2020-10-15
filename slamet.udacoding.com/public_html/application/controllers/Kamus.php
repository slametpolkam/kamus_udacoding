<?php
class Kamus extends CI_Controller
{
public function __construct()
    {
    	parent::__construct();
        $this->load->model('KamusModel');
    }

	public function index()
	{
		$kata = $_POST['kata'];
				
		$cek =  $this->KamusModel->cek_kata('kamus',$kata)->num_rows();
			if($cek>0){
				$hasil=$this->KamusModel->cek_kata('kamus',$kata)->result();
				foreach ($hasil as $key) {
					# code...
					echo json_encode($key->arti_kamus);	
				}
				// $response="login berhasil";
				
			}else {
			   	$response="Sepurane Omongan Kaya Kuwe Urung Ana";
				echo json_encode($response);
			}
    }
}