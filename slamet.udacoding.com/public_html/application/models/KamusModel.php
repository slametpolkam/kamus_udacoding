<?php 
class KamusModel extends CI_Model {
	public function cek_kata($tabel,$kata)
  		{
    		$query="select * from ".$tabel." where kata_kamus='".$kata."'" ;
			  return $this->db->query($query);
    	}
}