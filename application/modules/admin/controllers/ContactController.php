<?php
class Admin_ContactController extends Zend_Controller_Action {
  public function indexAction() {
		$this->_helper->layout->setLayout('layoutadmin');
		$model = new Admin_Model_ContactModel();
		$list = $model->getAllContact();
		$this->view->detail = $list;
	}

  public function detailAction() {
    $this->_helper->layout->setLayout('layoutadmin');
    $model = new Admin_Model_ContactModel();
    $req = $this->getRequest();
    $id = $req->getParam('p');

    $det = $model->getAllcontactDet($id);
    $this->view->det = $det;
  }

  public function deleteAction() {
    $model = new Admin_Model_ContactModel();
    $req = $this->getRequest();
    $id = $req->getParam('key');
    $delete = $model->delContact($id);
    return $this->_helper->json(
        array(
            'edit' => $delete,
        )
    );
  }
}
