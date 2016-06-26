<?php
class Admin_Model_DbTables_MasterModel extends Zend_Db_Table_Abstract {
    /* MASTER KECAMATAN */
    public function getKecamatanlist() {
  		try {
  			$select="SELECT * FROM kecamatan";
  			$rows=$this->_db->fetchAll($select);
  			return $rows;
  		} catch (Zend_Exception $e) {
  			return $e->getMessage();
  		}
  	}

    public function insertKecamatan($data) {
    		try {
    			$stmt=$this->_db->prepare("INSERT INTO kecamatan
    													(nama_kec) VALUES (:nama)");
    			$stmt->bindParam(':nama', $data['nama']);
    			$a = $stmt->execute();

    			return true;
    		} catch (Zend_Exception $e) {
    			return $e->getMessage();
    		}
    	}

    	public function cekKecamatan($id) {
    		try {
    			$select="SELECT * FROM kecamatan where nama_kec='".$id."'";
    			$rows=$this->_db->fetchAll($select);
    			return $rows;
    		} catch (Zend_Exception $e) {
    			return $e->getMessage();
    		}
	   }

     public function getKecamatandet($id) {
   		try {
   			$select="SELECT * FROM kecamatan where id_kec='".$id."'";
   			$rows=$this->_db->fetchAll($select);
   			return $rows;
   		} catch (Zend_Exception $e) {
   			return $e->getMessage();
   		}
   	}

    public function updateKecamatan($data) {
    		try {
    			$stmt=$this->_db->prepare("UPDATE kecamatan SET
    										nama_kec=:nama    										    									   WHERE id_kec=:id" );

    			$stmt->bindParam(':id', $data['id']);
    			$stmt->bindParam(':nama', $data['nama']);
    			$a = $stmt->execute();

    			return true;
    		} catch (Zend_Exception $e) {
    			return array("sts"=>false,"msg"=>$e->getMessage());
    		}
  	}

    public function delKecamatan($id) {
      //Zend_Debug::dump($id);die();
      try{
        $stmt1 = $this->_db->prepare("DELETE FROM kecamatan where id_kec=:id");
        $stmt1->bindParam(':id', $id);
        $a = $stmt1->execute();
        return $a;
      } catch(Zend_Db_Exception $e) {
        return array("sts"=>false,"msg"=>$e->getMessage());
      }
    }

    /* MASTER GURU */

    /* MASTER SISWA */

    /* MASTER MAPEL */
    public function getMapellist() {
  		try {
  			$select="SELECT * FROM mapel order by id_mapel asc";
  			$rows=$this->_db->fetchAll($select);
  			return $rows;
  		} catch (Zend_Exception $e) {
  			return $e->getMessage();
  		}
  	}

    public function cekMapel($nama,$tingkat) {
      try {
        $select="SELECT * FROM mapel where nama_mapel='".$nama."' and jenis_sekolah='".$tingkat."'";
        $rows=$this->_db->fetchAll($select);
        return $rows;
      } catch (Zend_Exception $e) {
        return $e->getMessage();
      }
   }

   public function insertMapel($data) {
       try {
         $stmt=$this->_db->prepare("INSERT INTO mapel
                             (nama_mapel,
                              jenis_sekolah) VALUES (:nama, :tingkat)");

         $stmt->bindParam(':nama', $data['nama']);
         $stmt->bindParam(':tingkat', $data['tingkat']);
         $a = $stmt->execute();

         return true;
       } catch (Zend_Exception $e) {
         return $e->getMessage();
       }
   }

   public function getMapeldet($id) {
    try {
      $select="SELECT * FROM mapel where id_mapel='".$id."'";
      $rows=$this->_db->fetchAll($select);
      return $rows;
    } catch (Zend_Exception $e) {
      return $e->getMessage();
    }
  }

  public function updateMapel($data) {
      try {
        $stmt=$this->_db->prepare("UPDATE mapel SET
                      nama_mapel=:nama, jenis_sekolah=:tingkat    										    									   WHERE id_mapel=:id" );

        $stmt->bindParam(':id', $data['id']);
        $stmt->bindParam(':nama', $data['nama']);
        $stmt->bindParam(':tingkat', $data['tingkat']);
        $a = $stmt->execute();

        return true;
      } catch (Zend_Exception $e) {
        return array("sts"=>false,"msg"=>$e->getMessage());
      }
  }

  public function delMapel($id) {
    //Zend_Debug::dump($id);die();
    try{
      $stmt1 = $this->_db->prepare("DELETE FROM mapel where id_mapel=:id");
      $stmt1->bindParam(':id', $id);
      $a = $stmt1->execute();
      return $a;
    } catch(Zend_Db_Exception $e) {
      return array("sts"=>false,"msg"=>$e->getMessage());
    }
  }

  /* MASTER JABATAN */
  public function getJabatanlist() {
    try {
      $select="SELECT * FROM jabatan order by id_jabatan asc";
      $rows=$this->_db->fetchAll($select);
      return $rows;
    } catch (Zend_Exception $e) {
      return $e->getMessage();
    }
  }

  public function cekJabatan($nama) {
    try {
      $select="SELECT * FROM jabatan where nama_jabatan='".$nama."'";
      $rows=$this->_db->fetchAll($select);
      return $rows;
    } catch (Zend_Exception $e) {
      return $e->getMessage();
    }
 }

 public function insertJabatan($data) {
     try {
       $stmt=$this->_db->prepare("INSERT INTO jabatan
                           (nama_jabatan,
                            tk,
                            sd,
                            smp,
                            sma,
                            smk) VALUES (
                            :nama,
                            :tk,
                            :sd,
                            :smp,
                            :sma,
                            :smk)");

       $stmt->bindParam(':nama', $data['nama']);
       $stmt->bindParam(':tingkat', $data['tingkat']);
       $a = $stmt->execute();

       return true;
     } catch (Zend_Exception $e) {
       return $e->getMessage();
     }
 }

  /* MASTER STATUS PEGAWAI */
  public function getStatuspeglist() {
    try {
      $select="SELECT * FROM status_kepegawaian order by id_statuspeg asc";      $rows=$this->_db->fetchAll($select);
      return $rows;
    } catch (Zend_Exception $e) {
      return $e->getMessage();
    }
  }

  public function cekStatpeg($nama) {
    try {
      $select="SELECT * FROM status_kepegawaian where nama_statuspeg='".$nama."'";
      $rows=$this->_db->fetchAll($select);
      return $rows;
    } catch (Zend_Exception $e) {
      return $e->getMessage();
    }
 }

 public function insertStatpeg($data) {
     try {
       $stmt=$this->_db->prepare("INSERT INTO status_kepegawaian
                           (nama_statuspeg) VALUES (:nama)");
       $stmt->bindParam(':nama', $data['nama']);
       $a = $stmt->execute();

       return true;
     } catch (Zend_Exception $e) {
       return $e->getMessage();
     }
   }

   public function getStatpegdet($id) {
    try {
      $select="SELECT * FROM status_kepegawaian where id_statuspeg='".$id."'";
      $rows=$this->_db->fetchAll($select);
      return $rows;
    } catch (Zend_Exception $e) {
      return $e->getMessage();
    }
  }

  public function updateStatpeg($data) {
      try {
        $stmt=$this->_db->prepare("UPDATE status_kepegawaian SET
                      nama_statuspeg=:nama    										    									   WHERE id_statuspeg=:id" );

        $stmt->bindParam(':id', $data['id']);
        $stmt->bindParam(':nama', $data['nama']);
        $a = $stmt->execute();

        return true;
      } catch (Zend_Exception $e) {
        return array("sts"=>false,"msg"=>$e->getMessage());
      }
  }

  public function delStatpeg($id) {
    //Zend_Debug::dump($id);die();
    try{
      $stmt1 = $this->_db->prepare("DELETE FROM status_kepegawaian where id_statuspeg=:id");
      $stmt1->bindParam(':id', $id);
      $a = $stmt1->execute();
      return $a;
    } catch(Zend_Db_Exception $e) {
      return array("sts"=>false,"msg"=>$e->getMessage());
    }
  }
}
