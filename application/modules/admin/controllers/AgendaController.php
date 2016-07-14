<?php
class Admin_AgendaController extends Zend_Controller_Action {

	public function indexAction() {
		$this->_helper->layout->setLayout('layoutadmin');
		$model = new Admin_Model_AgendaModel();
		$list = $model->getAllAgenda();
		$this->view->detail = $list;
		if ($this->_request->isPost()) {
			$Dataform = $this->_request->getPost();
			$kategori = $Dataform['kategori'];
			$kunci = $Dataform['key'];

			if($kategori=='0') {
				$this->view->msg = 'Inputan tidak boleh kosong';
			} else {
				$data = $model->search($kategori, $kunci);
				$this->view->detail = $data;
			}
		}
	}

	public function addAction() {
		$this->_helper->layout->setLayout('layoutadmin');
    if ($this->_request->isPost()) {
      $model = new Admin_Model_AgendaModel();
      $Dataform = $this->_request->getPost();

      if($Dataform['nama']==null) {
        $this->view->message = 'Please Fill out The Form First!';
      } else {
        $insert = $model->insertAgenda($Dataform);
        if($insert===true) {
          $this->view->msg = 'Insert Success';
        } else {
          $this->view->message = 'Insert Failed';
        }
      }
    }

	}

	public function editAction() {
		$this->_helper->layout->setLayout('layoutadmin');
		$model = new Admin_Model_AgendaModel();
		$req = $this->getRequest();
		$id = $req->getParam('p');

		$det = $model->getDetAgenda($id) ;
		$this->view->det = $det;
		if ($this->_request->isPost()) {
			$Dataform = $this->_request->getPost();
			$insert = $model->updateAgenda($Dataform);
			if($insert===true) {
  				$this->view->msg = 'Insert Success';
  			} else {
  				$this->view->message = 'Insert Failed';
  			}
		}

		$id = $req->getParam('p');
		if($id!='') {
			$det = $model->getDetAgenda($id);
			//Zend_Debug::dump($det);die();
			$this->view->det = $det;
		}
	}


	public function deleteAction() {
		$model = new Admin_Model_AgendaModel();
		$req = $this->getRequest();
		$id = $req->getParam('key');

		$delete = $model->delAgenda($id);

		return $this->_helper->json(
				array(
						'edit' => $delete,
				)
		);


	}

}
