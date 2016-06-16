<?php
class Admin_FasilitasController extends Zend_Controller_Action {
  
    public function indexAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
  	}
    public function addAction() {
      $this->_helper->layout->setLayout('layoutadmin');

    }
    public function editAction() {
      $this->_helper->layout->setLayout('layoutadmin');

    }
    public function deleteAction() {

    }
}
