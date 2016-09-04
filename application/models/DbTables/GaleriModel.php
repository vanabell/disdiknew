<?php
class Application_Model_DbTables_GaleriModel extends Zend_Db_Table_Abstract {
  public function getVideolist() {
    try {
      $select="SELECT id_galeri, judul, video FROM galeri order by id_galeri asc";
      $rows=$this->_db->fetchAll($select);
      return $rows;
    } catch (Zend_Exception $e) {
      return $e->getMessage();
    }
  }

  public function getFotolist() {
    try {
      $select="SELECT * FROM foto order by id_foto asc";
      $rows=$this->_db->fetchAll($select);
      return $rows;
    } catch (Zend_Exception $e) {
      return $e->getMessage();
    }
  }

  public function getAllBanner() {
    try {
      $select="SELECT * FROM banner";
      $rows=$this->_db->fetchAll($select);
      return $rows;
    } catch (Zend_Exception $e) {
      return $e->getMessage();
    }
  }

}
