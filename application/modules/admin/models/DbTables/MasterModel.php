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
    													(nama_kec, kode_wilayah) VALUES (:nama, :kode)");
          $stmt->bindParam(':kode', $data['kode']);
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
    										nama_kec=:nama, kode_wilayah=:kode    										    									   WHERE id_kec=:id" );

    			$stmt->bindParam(':id', $data['id']);
          $stmt->bindParam(':nama', $data['nama']);
    			$stmt->bindParam(':kode', $data['kode']);
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
         $stmt=$this->_db->prepare("UPDATE master_guru SET
                       nama_kec=:nama    										    									   WHERE nip=:id" );

         $stmt->bindParam(':id', $data['id']);
         $stmt->bindParam(':nama', $data['nama']);
         $a = $stmt->execute();

         return true;
       } catch (Zend_Exception $e) {
         return array("sts"=>false,"msg"=>$e->getMessage());
       }
   }

   public function delGuru($id) {
     //Zend_Debug::dump($id);die();
     try{
       $stmt1 = $this->_db->prepare("DELETE FROM master_guru where nip=:id");
       $stmt1->bindParam(':id', $id);
       $a = $stmt1->execute();
       return $a;
     } catch(Zend_Db_Exception $e) {
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
    /* MASTER SISWA */
    public function getSiswalist() {
  		try {
  			$select="SELECT s.id_siswa, s.tingkat_sekolah, s.nis, s.nama_lengkap, sk.nama_sekolah, k.nama_kec FROM master_siswa s JOIN master_sekolah sk ON s.nama_sekolah=sk.induk_sekolah JOIN kecamatan k ON s.kec=k.id_kec";
  			$rows=$this->_db->fetchAll($select);
  			return $rows;
  		} catch (Zend_Exception $e) {
  			return $e->getMessage();
  		}
  	}

    public function getSiswadet($id) {
     try {
       $select="SELECT * FROM master_siswa where id_siswa='".$id."'";
       $rows=$this->_db->fetchAll($select);
       return $rows;
     } catch (Zend_Exception $e) {
       return $e->getMessage();
     }
   }

   public function delSiswa($id) {
     try{
       $stmt1 = $this->_db->prepare("DELETE FROM master_siswa where id_siswa=:id");
       $stmt1->bindParam(':id', $id);
       $a = $stmt1->execute();
       return $a;
     } catch(Zend_Db_Exception $e) {
       return array("sts"=>false,"msg"=>$e->getMessage());
     }
   }

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

 public function getJabatandet($id) {
  try {
    $select="SELECT * FROM jabatan where id_jabatan='".$id."'";
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
       $stmt->bindParam(':tk', $data['tk']);
       $stmt->bindParam(':sd', $data['sd']);
       $stmt->bindParam(':smp', $data['smp']);
       $stmt->bindParam(':sma', $data['sma']);
       $stmt->bindParam(':smk', $data['smk']);
       $a = $stmt->execute();

       return true;
     } catch (Zend_Exception $e) {
       return $e->getMessage();
     }
 }

 public function updateJabatan($data) {
     try {
       $stmt=$this->_db->prepare("UPDATE jabatan SET
                     nama_jabatan=:nama,
                     tk=:tk,
                     sd=:sd,
                     smp=:smp,
                     sma=:sma,
                     smk=:smk
                     WHERE id_jabatan=:id" );

       $stmt->bindParam(':id', $data['i']);
       $stmt->bindParam(':nama', $data['nama']);
       $stmt->bindParam(':tk', $data['tk']);
       $stmt->bindParam(':sd', $data['sd']);
       $stmt->bindParam(':smp', $data['smp']);
       $stmt->bindParam(':sma', $data['sma']);
       $stmt->bindParam(':smk', $data['smk']);
       $a = $stmt->execute();

       return true;
     } catch (Zend_Exception $e) {
       return array("sts"=>false,"msg"=>$e->getMessage());
     }
 }

 public function delJabatan($id) {
   //Zend_Debug::dump($id);die();
   try{
     $stmt1 = $this->_db->prepare("DELETE FROM jabatan where id_jabatan=:id");
     $stmt1->bindParam(':id', $id);
     $a = $stmt1->execute();
     return $a;
   } catch(Zend_Db_Exception $e) {
     return array("sts"=>false,"msg"=>$e->getMessage());
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

  /* MASTER SEKOLAH */
  public function getSekolahlist() {
    try {
      $select="SELECT m.induk_sekolah, m.nama_sekolah, m.alamat, m.kelurahan, m.tingkat, k.nama_kec FROM master_sekolah m JOIN kecamatan k ON m.id_kecamatan=k.id_kec order by m.induk_sekolah asc";
      $rows=$this->_db->fetchAll($select);
      return $rows;
    } catch (Zend_Exception $e) {
      return $e->getMessage();
    }
  }

  public function cekSekolah($nama,$tingkat) {
    try {
      $select="SELECT * FROM master_sekolah where nama_sekolah='".$nama."' AND tingkat='".$tingkat."'";
      $rows=$this->_db->fetchAll($select);
      return $rows;
    } catch (Zend_Exception $e) {
      return $e->getMessage();
    }
 }

   public function cekStatsek($id) {
     try {
       $select="SELECT COUNT(induk_sekolah) AS jum FROM master_sekolah WHERE induk_sekolah LIKE '$id%'";
       $rows=$this->_db->fetchAll($select);
       return $rows;
     } catch (Zend_Exception $e) {
       return $e->getMessage();
     }
  }

 public function insertSekolah($data,$id) {
     try {
       $stmt=$this->_db->prepare("INSERT INTO master_sekolah
                           (induk_sekolah,
                            nama_sekolah,
                            alamat,
                            kelurahan,
                            id_kecamatan,
                            tingkat) VALUES (
                            :id,
                            :nama,
                            :alamat,
                            :kelurahan,
                            :kec,
                            :tingkat )");
       $stmt->bindParam(':id', $id);
       $stmt->bindParam(':nama', $data['nama']);
       $stmt->bindParam(':alamat', $data['alamat']);
       $stmt->bindParam(':tingkat', $data['tingkat']);
       $stmt->bindParam(':kelurahan', $data['kelurahan']);
       $stmt->bindParam(':kec', $data['kec']);
       $a = $stmt->execute();

       return true;
     } catch (Zend_Exception $e) {
       return $e->getMessage();
     }
   }

   public function getSekolahdet($id) {
    try {
      $select="SELECT * FROM master_sekolah where induk_sekolah='".$id."'";
      $rows=$this->_db->fetchAll($select);
      return $rows;
    } catch (Zend_Exception $e) {
      return $e->getMessage();
    }
  }

  public function updateSekolah($data) {
      try {
        $stmt=$this->_db->prepare("UPDATE master_sekolah SET
                      nama_sekolah=:nama,
                      kelurahan=:kelurahan,
                      alamat=:alamat    										    									   WHERE induk_sekolah=:id" );

        $stmt->bindParam(':id', $data['id']);
        $stmt->bindParam(':nama', $data['nama']);
        $stmt->bindParam(':kelurahan', $data['kelurahan']);
        $stmt->bindParam(':alamat', $data['alamat']);
        $a = $stmt->execute();

        return true;
      } catch (Zend_Exception $e) {
        return array("sts"=>false,"msg"=>$e->getMessage());
      }
  }

  public function delSekolah($id) {
    //Zend_Debug::dump($id);die();
    try{
      $stmt1 = $this->_db->prepare("DELETE FROM master_sekolah where induk_sekolah=:id");
      $stmt1->bindParam(':id', $id);
      $a = $stmt1->execute();
      return $a;
    } catch(Zend_Db_Exception $e) {
      return array("sts"=>false,"msg"=>$e->getMessage());
    }
  }

  public function search($kategori, $kunci) {
		try {
			if($kategori=='kecamatan') {
				$select="SELECT m.induk_sekolah, m.nama_sekolah, m.alamat, m.kelurahan, m.tingkat, k.nama_kec FROM master_sekolah m JOIN kecamatan k ON m.id_kecamatan=k.id_kec WHERE m.id_kecamatan like'%".$kunci."%'";
				$rows=$this->_db->fetchAll($select);
				return $rows;

			} else if($kategori=='tingkat') {
				$select="SELECT m.induk_sekolah, m.nama_sekolah, m.alamat, m.kelurahan, m.tingkat, k.nama_kec FROM master_sekolah m JOIN kecamatan k ON m.id_kecamatan=k.id_kec WHERE m.tingkat like'%".$kunci."%'";
				$rows=$this->_db->fetchAll($select);
				return $rows;
			}
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}
}
