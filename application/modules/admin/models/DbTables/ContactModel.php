<?php
class Admin_Model_DbTables_ContactModel extends Zend_Db_Table_Abstract {
  public function getAllContact() {
    try {
      $select="SELECT * FROM kontak";
      $rows=$this->_db->fetchAll($select);
      return $rows;
    } catch (Zend_Exception $e) {
      return $e->getMessage();
    }
  }

  public function getAllcontactDet($id) {
		try {
			$select="SELECT * FROM kontak where id_kontak='".$id."'";
			$rows=$this->_db->fetchAll($select);
			return $rows;
		} catch (Zend_Exception $e) {
			return $e->getMessage();
		}
	}

  public function delContact($id) {
    //Zend_Debug::dump($id);die();
    try{
      $stmt1 = $this->_db->prepare("DELETE FROM kontak where id_kontak=:id");
      $stmt1->bindParam(':id', $id);
      $a = $stmt1->execute();
      return $a;
    } catch(Zend_Db_Exception $e) {
      return array("sts"=>false,"msg"=>$e->getMessage());
    }
  }
}
