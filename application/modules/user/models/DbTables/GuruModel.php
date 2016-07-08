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

  }
