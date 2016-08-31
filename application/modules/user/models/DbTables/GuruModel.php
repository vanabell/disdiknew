<?php
class User_Model_DbTables_GuruModel extends Zend_Db_Table_Abstract {

    public function getKecamatanlist() {
  		try {
  			$select="SELECT * FROM kecamatan";
  			$rows=$this->_db->fetchAll($select);
  			return $rows;
  		} catch (Zend_Exception $e) {
  			return $e->getMessage();
  		}
  	}

    public function getStatuspeglist() {
        try {
          $select="SELECT * FROM status_kepegawaian order by id_statuspeg asc";      $rows=$this->_db->fetchAll($select);
          return $rows;
        } catch (Zend_Exception $e) {
          return $e->getMessage();
        }
    }

    public function getPass($id) {
  		 try {
  			 $select="SELECT password FROM master_guru where nip='".$id."'";
  			 $rows=$this->_db->fetchAll($select);
  			 return $rows;
  		 } catch (Zend_Exception $e) {
  			 return $e->getMessage();
  		 }
  	}

  	public function upPass($id,$data) {
  		try {
  			$stmt=$this->_db->prepare("UPDATE master_guru SET
  										password=:pass WHERE nip=:id" );

  			$stmt->bindParam(':id', $id);
  			$stmt->bindParam(':pass', $data);
  			$a = $stmt->execute();
  		return true;
  		} catch (Zend_Exception $e) {
  			return array("sts"=>false,"msg"=>$e->getMessage());
  		}
  	}


    public function getGurulist() {
        try {
          $select="SELECT * FROM master_guru";
          $rows=$this->_db->fetchAll($select);
          return $rows;
        } catch (Zend_Exception $e) {
          return $e->getMessage();
        }
    }

    public function getGurudet($id) {
       try {
         $select="SELECT * FROM master_guru where nip='".$id."'";
         $rows=$this->_db->fetchAll($select);
         return $rows;
       } catch (Zend_Exception $e) {
         return $e->getMessage();
       }
    }

    public function updateGuru($data) {
       try {
        $gol = $data['gol_ruang'].$data['ruang'];
         $stmt=$this->_db->prepare("UPDATE master_guru SET
                                    kec=:kc,
                                    tingkat_sekolah=:ts,
                                    nama_sekolah=:ns,
                                    jkelamin=:jk,
                                    mapel=:map,
                                    status_sek=:sk,
                                    stat_peg=:sp,
                                    golruang=:gol,
                                    jabatan=:jab,
                                    pendidikan=:pnd,
                                    thn_pendidikan=:thnpend,
                                    nama_lengkap=:nama,
                                    no_tlp=:tlp,
                                    alamat=:almt,
                                    alamat_tugas=:alamat_tugas,
                                    tgl_lahir=:tgllahir,
                                    tempat_lahir=:tl,
                                    agama=:agama
                                     WHERE nip=:id" );

         $stmt->bindParam(':id', $data['nip']);
         $stmt->bindParam(':kc', $data['kec']);
         $stmt->bindParam(':ts', $data['tingkat_sekolah']);
         $stmt->bindParam(':ns', $data['nama_sekolah']);
         $stmt->bindParam(':jk', $data['jkelamin']);
         $stmt->bindParam(':map', $data['mapel']);
         $stmt->bindParam(':sk', $data['status']);
         $stmt->bindParam(':sp', $data['stat_peg']);
         $stmt->bindParam(':gol', $gol);
         $stmt->bindParam(':jab', $data['jabatan']);
         $stmt->bindParam(':thnpend', $data['thn_pendidikan']);
         $stmt->bindParam(':pnd', $data['pendidikan']);
         $stmt->bindParam(':nama', $data['nama']);
         $stmt->bindParam(':tlp', $data['tlp']);
         $stmt->bindParam(':almt', $data['alamat']);
         $stmt->bindParam(':alamat_tugas', $data['alamat_tugas']);
         $stmt->bindParam(':agama', $data['agama']);
         $stmt->bindParam(':tl', $data['tl']);
         $stmt->bindParam(':tgllahir', $data['tgllahir']);

         $a = $stmt->execute();

         return true;
       } catch (Zend_Exception $e) {
         return array("sts"=>false,"msg"=>$e->getMessage());
       }
    }

    public function updateGuruPhoto($data, $file) {
       try {
        $gol = $data['gol_ruang'].$data['ruang'];
         $stmt=$this->_db->prepare("UPDATE master_guru SET
                                     kec=:kc,
                                     tingkat_sekolah=:ts,
                                     nama_sekolah=:ns,
                                     jkelamin=:jk,
                                     mapel=:map,
                                     status_sek=:sk,
                                     stat_peg=:sp,
                                     golruang=:gol,
                                     jabatan=:jab,
                                     pendidikan=:pnd,
                                     thn_pendidikan=:thnpend,
                                     nama_lengkap=:nama,
                                     no_tlp=:tlp,
                                     alamat=:almt,
                                     alamat_tugas=:alamat_tugas,
                                     tgl_lahir=:tgllahir,
                                     tempat_lahir=:tl,
                                     agama=:agama,
                                     foto=:foto
                                     WHERE nip=:id" );

         $stmt->bindParam(':id', $data['nip']);
         $stmt->bindParam(':kc', $data['kec']);
         $stmt->bindParam(':ts', $data['tingkat_sekolah']);
         $stmt->bindParam(':ns', $data['nama_sekolah']);
         $stmt->bindParam(':jk', $data['jkelamin']);
         $stmt->bindParam(':map', $data['mapel']);
         $stmt->bindParam(':sk', $data['status']);
         $stmt->bindParam(':sp', $data['stat_peg']);
         $stmt->bindParam(':gol', $gol);
         $stmt->bindParam(':jab', $data['jabatan']);
         $stmt->bindParam(':thnpend', $data['thn_pendidikan']);
         $stmt->bindParam(':pnd', $data['pendidikan']);
         $stmt->bindParam(':nama', $data['nama']);
         $stmt->bindParam(':tlp', $data['tlp']);
         $stmt->bindParam(':almt', $data['alamat']);
         $stmt->bindParam(':alamat_tugas', $data['alamat_tugas']);
         $stmt->bindParam(':agama', $data['agama']);
         $stmt->bindParam(':tl', $data['tl']);
         $stmt->bindParam(':tgllahir', $data['tgllahir']);
         $stmt->bindParam(':foto', $file);
         $a = $stmt->execute();

         return true;
       } catch (Zend_Exception $e) {
         return array("sts"=>false,"msg"=>$e->getMessage());
       }
    }

    public function loadGolongan()	{
      try {
        $select="SELECT * FROM golongan order by nama_golongan asc";
        $rows=$this->_db->fetchAll($select);
        return $rows;
      } catch (Zend_Exception $e) {
        return $e->getMessage();
      }
    }

    public function loadRuang()	{
      try {
        $select="SELECT * FROM ruang order by nama_ruang asc";
        $rows=$this->_db->fetchAll($select);
        return $rows;
      } catch (Zend_Exception $e) {
        return $e->getMessage();
      }
    }
    public function loadIjazah()	{
      try {
        $select="SELECT * FROM ijazah order by id_ijazah asc";
        $rows=$this->_db->fetchAll($select);
        return $rows;
      } catch (Zend_Exception $e) {
        return $e->getMessage();
      }
    }

    public function getPelatihan($tk) {
    try {
      $select="SELECT * FROM  pelatihan
           WHERE  status_peserta!=2 and (tingkat_peserta='".$tk."' or tingkat_peserta='ALL')";
      $rows=$this->_db->fetchAll($select);
      return $rows;
    } catch (Zend_Exception $e) {
      return $e->getMessage();
    }
  }

  public function cekdaftar($id_peserta, $id_latih) {
		try {
			$select="SELECT * FROM pendaftaran where id_peserta='".$id_peserta."' AND id_pelatihan='".$id_latih."'";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

  public function daftar($id_peserta, $id_latih) {
    try {
      $stmt=$this->_db->prepare("INSERT INTO pendaftaran
                          (
                            id_peserta,
                            id_pelatihan,
                            status_daftar
                          )
                          VALUES
                          (
                            :id,
                            :name,
                            :status
                          )
                          "
      );
      $stmt->bindParam(':id', $id_peserta);
      $stmt->bindParam(':name', $id_latih);
      $stmt->bindParam(':status', 'guru');
      $a = $stmt->execute();
      return true;
    } catch (Zend_Exception $e) {
      return $e->getMessage();
    }
  }


}
