<?php
class Admin_PelatihanController extends Zend_Controller_Action {
  public function indexAction() {
    $this->_helper->layout->setLayout('layoutadmin');

  }
  public function addAction() {
    $this->_helper->layout->setLayout('layoutadmin');
  }
}
