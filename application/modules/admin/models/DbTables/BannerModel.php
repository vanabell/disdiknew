<?php
class Admin_Model_DbTables_BannerModel extends Zend_Db_Table_Abstract {

  public function getAllBanner() {
		try {
			$select="SELECT * FROM slider";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

  public function addPhoto($newfilename, $data) {
		try {
			$stmt=$this->_db->prepare("INSERT INTO slider
													(
														nama,
														descr,
														gambar
													)
													VALUES
													(
														:name,
														:title,
														:image
													)
													"
			);
			$stmt->bindParam(':name', $data['nama']);
			$stmt->bindParam(':title', $data['desc']);
			$stmt->bindParam(':image', $newfilename);
			$a = $stmt->execute();

			return true;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function upPhoto($newfilename, $data) {
    		try {
    			$stmt=$this->_db->prepare("UPDATE slider SET
    										nama=:isi, descr=:nama,
    										gambar=:tgl WHERE id_slide=:id" );

    			$stmt->bindParam(':id', $data['id']);
          		$stmt->bindParam(':nama', $data['desc']);
    			$stmt->bindParam(':tgl', $newfilename);
    			$stmt->bindParam(':isi', $data['nama']);
    			$a = $stmt->execute();

    			return $a;
    		} catch (Zend_Exception $e) {
    			return array("sts"=>false,"msg"=>$e->getMessage());
    		}
  	}

  	public function getFotodet($id) {
		try {
			$select="SELECT * FROM slider WHERE id_slide='".$id."'";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

	public function delPhoto($id) {
      //Zend_Debug::dump($id);die();
      try{
        $stmt1 = $this->_db->prepare("DELETE FROM slider where id_slide=:id");
        $stmt1->bindParam(':id', $id);
        $a = $stmt1->execute();
        return $a;
      } catch(Zend_Db_Exception $e) {
        return array("sts"=>false,"msg"=>$e->getMessage());
      }
    }

}
