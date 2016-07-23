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
                                    jenis_sekolah=:js, jenis_peg=:jp,
                                    kec=:kc, tingkat_sekolah=:ts, 
                                    nama_sekolah=:ns, umur=:umur,
                                    masa_kerja=:mk, jkelamin=:jk,
                                    mapel=:map, status_sek=:sk,
                                    stat_peg=:sp, golruang=:gol,
                                    jabatan=:jab, sertifikasi=:sert,
                                    thn_sertifikasi=:thn_sert, pendidikan=:pnd,
                                    thn_pendidikan=:thnpend, domisili=:dom,
                                    nama_lengkap=:nama, no_tlp=:tlp, alamat=:almt
                                     WHERE nip=:id" );

         $stmt->bindParam(':id', $data['nip']);
         $stmt->bindParam(':js', $data['jenis_sek']);
         $stmt->bindParam(':jp', $data['jenis_peg']);
         $stmt->bindParam(':kc', $data['kec']);
         $stmt->bindParam(':ts', $data['tingkat_sekolah']);
         $stmt->bindParam(':ns', $data['nama_sekolah']);
         $stmt->bindParam(':umur', $data['umur']);
         $stmt->bindParam(':mk', $data['masa_kerja']);
         $stmt->bindParam(':jk', $data['jkelamin']);
         $stmt->bindParam(':map', $data['mapel']);
         $stmt->bindParam(':sk', $data['status']);
         $stmt->bindParam(':sp', $data['stat_peg']);
         $stmt->bindParam(':gol', $gol);
         $stmt->bindParam(':jab', $data['jabatan']);
         $stmt->bindParam(':sert', $data['sertifikasi']);
         $stmt->bindParam(':thn_sert', $data['thn_sertifikasi']);
         $stmt->bindParam(':thnpend', $data['thn_pendidikan']);
         $stmt->bindParam(':pnd', $data['pendidikan']);
         $stmt->bindParam(':dom', $data['domisili']);
         $stmt->bindParam(':nama', $data['nama']);
         $stmt->bindParam(':tlp', $data['tlp']);
         $stmt->bindParam(':almt', $data['alamat']);
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
                                    jenis_sekolah=:js, jenis_peg=:jp,
                                    kec=:kc, tingkat_sekolah=:ts, 
                                    nama_sekolah=:ns, umur=:umur,
                                    masa_kerja=:mk, jkelamin=:jk,
                                    mapel=:map, status_sek=:sk,
                                    stat_peg=:sp, golruang=:gol,
                                    jabatan=:jab, sertifikasi=:sert,
                                    thn_sertifikasi=:thn_sert, pendidikan=:pnd,
                                    thn_pendidikan=:thnpend, domisili=:dom,
                                    nama_lengkap=:nama, no_tlp=:tlp, alamat=:almt, foto=:foto
                                     WHERE nip=:id" );

         $stmt->bindParam(':id', $data['nip']);
         $stmt->bindParam(':js', $data['jenis_sek']);
         $stmt->bindParam(':jp', $data['jenis_peg']);
         $stmt->bindParam(':kc', $data['kec']);
         $stmt->bindParam(':ts', $data['tingkat_sekolah']);
         $stmt->bindParam(':ns', $data['nama_sekolah']);
         $stmt->bindParam(':umur', $data['umur']);
         $stmt->bindParam(':mk', $data['masa_kerja']);
         $stmt->bindParam(':jk', $data['jkelamin']);
         $stmt->bindParam(':map', $data['mapel']);
         $stmt->bindParam(':sk', $data['status']);
         $stmt->bindParam(':sp', $data['stat_peg']);
         $stmt->bindParam(':gol', $gol);
         $stmt->bindParam(':jab', $data['jabatan']);
         $stmt->bindParam(':sert', $data['sertifikasi']);
         $stmt->bindParam(':thn_sert', $data['thn_sertifikasi']);
         $stmt->bindParam(':thnpend', $data['thn_pendidikan']);
         $stmt->bindParam(':pnd', $data['pendidikan']);
         $stmt->bindParam(':dom', $data['domisili']);
         $stmt->bindParam(':nama', $data['nama']);
         $stmt->bindParam(':tlp', $data['tlp']);
         $stmt->bindParam(':almt', $data['alamat']);
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

  public function daftar($id_peserta, $id_latih) {
    try {
      $stmt=$this->_db->prepare("INSERT INTO pendaftaran
                          (
                            id_peserta,
                            id_pelatihan
                          )
                          VALUES
                          (
                            :id,
                            :name
                          )
                          "
      );
      $stmt->bindParam(':id', $id_peserta);
      $stmt->bindParam(':name', $id_latih);
      $a = $stmt->execute();
      return true;
    } catch (Zend_Exception $e) {
      return $e->getMessage();
    }
  }


}
