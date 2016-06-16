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
}
