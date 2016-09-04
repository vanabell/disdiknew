<?php
class Admin_Model_DbTables_BannerModel extends Zend_Db_Table_Abstract {

  public function getAllBanner() {
		try {
			$select="SELECT * FROM banner";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

  public function addPhoto($newfilename, $data) {
		try {
			$stmt=$this->_db->prepare("INSERT INTO banner
													(
														judul,
														deskripsi,
														foto
													)
													VALUES
													(
														:name,
														:deskripsi,
														:image
													)
													"
			);
			$stmt->bindParam(':name', $data['nama']);
			$stmt->bindParam(':deskripsi', $data['desc']);
			$stmt->bindParam(':image', $newfilename);
			$a = $stmt->execute();

			return true;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function upPhoto($newfilename, $data) {
    		try {
    			$stmt=$this->_db->prepare("UPDATE banner SET
    										judul=:nama, deskripsi=:isi,
    										foto=:foto WHERE id_banner=:id" );

    			$stmt->bindParam(':id', $data['id']);
          		$stmt->bindParam(':nama', $data['nama']);
    			$stmt->bindParam(':foto', $newfilename);
    			$stmt->bindParam(':isi', $data['desc']);
    			$a = $stmt->execute();

    			return $a;
    		} catch (Zend_Exception $e) {
    			return array("sts"=>false,"msg"=>$e->getMessage());
    		}
  	}

  	public function getFotodet($id) {
		try {
			$select="SELECT * FROM banner WHERE id_banner='".$id."'";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function delPhoto($id) {
      //Zend_Debug::dump($id);die();
      try{
        $stmt1 = $this->_db->prepare("DELETE FROM banner where id_banner=:id");
        $stmt1->bindParam(':id', $id);
        $a = $stmt1->execute();
        return $a;
      } catch(Zend_Db_Exception $e) {
        return array("sts"=>false,"msg"=>$e->getMessage());
      }
    }

}
