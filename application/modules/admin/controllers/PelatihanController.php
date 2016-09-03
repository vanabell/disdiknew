<?php
class Admin_PelatihanController extends Zend_Controller_Action {
  public function indexAction() {
    $this->_helper->layout->setLayout('layoutadmin');
    $model = new Admin_Model_PelatihanModel();
    $data = $model->getAllPelatihan();
    $this->view->data = $data;

  }
  public function addAction() {
    $this->_helper->layout->setLayout('layoutadmin');
    if ($this->_request->isPost()) {
      $model = new Admin_Model_PelatihanModel();
      $Dataform = $this->_request->getPost();

      if($Dataform['nama']==null) {
        $this->view->message = 'Please Fill out The Form First!';
      } else {
        $insert = $model->insertPelatihan($Dataform);
        if($insert===true) {
          $this->view->msg = 'Insert Success';
        } else {
          $this->view->message = 'Insert Failed';
        }
      }
    }
  }

  public function editAction()  {
    $this->_helper->layout->setLayout('layoutadmin');
    $model = new Admin_Model_PelatihanModel();
    $req = $this->getRequest();
    $id = $req->getParam('p');
    $det = $model->getDetPelatihan($id);
    $this->view->det = $det;

    if ($this->_request->isPost()) {
      $Dataform = $this->_request->getPost();
      /*Zend_Debug::dump($Dataform);die();*/
      if($Dataform['nama']==null) {
        $this->view->message = 'Please Fill out The Form First!';
      } else {
        // Zend_Debug::dump($Dataform);die();
        $insert = $model->updatePel($Dataform);
        // Zend_Debug::dump($insert);die();

      }

      if($insert===true) {
        $this->view->msg = 'Insert Success';
      } else {
        $this->view->message = 'Insert Failed';
      }

    }
    $id = $req->getParam('p');
    if($id!='') {
      $det = $model->getDetPelatihan($id);
      $this->view->det = $det;
    }
  }

  public function pesertaAction() {
    $this->_helper->layout->setLayout('layoutadmin');
    $model = new Admin_Model_PelatihanModel();
    $req = $this->getRequest();
    $id = $req->getParam('p');
    $pel = $req->getParam('k');
    $data = $model->getAllPeserta($id);
    $this->view->data = $data;
    $this->view->id = $id;
    $this->view->pel= $pel;
  }

  public function deletepesertaAction() {
		$model = new Admin_Model_PelatihanModel();
		$req = $this->getRequest();
		$id = $req->getParam('key');

		$delete = $model->delPeserta($id);

		return $this->_helper->json(
				array(
						'edit' => $delete,
				)
		);


	}

  public function excelAction() {
    set_time_limit( 0 );
    $model = new Admin_Model_PelatihanModel();
    $req = $this->getRequest();
    $id = $req->getParam('key');

    $data = $model->getAllPeserta($id);
    $this->view->data = $data;
    $this->_helper->layout->disableLayout();
    header('Content-Type: application/vnd.ms-excel; charset=UTF-8');
    header('Content-Disposition: attachment; filename="Laporan.xls"');

  }

  public function updateAction() {

    $model = new Admin_Model_PelatihanModel();
    $req = $this->getRequest();
    $id = $req->getParam('key');
    $nilai = $req->getParam('key2');
    $data = $model->update($id,$nilai);
    return $this->_helper->json(
        array(
            'edit' => $data,
        )
    );

  }


}
