<?php
class User_5ba558debcf53a3582648898037e76e6Controller extends Zend_Controller_Action {
	public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        $this->_helper->layout->setLayout('layoutuser');
        // action body
    }

    public function editAction()
    {
        $this->_helper->layout->setLayout('layoutuser');
				$model = new User_Model_SiswaModel();
				$sessionuser = Zend_Registry::get('session_user');
				$id = $sessionuser->noreg;

				$det = $model->getSiswadet($id);
				$this->view->det = $det;
				if ($this->_request->isPost()) {
					$Dataform = $this->_request->getPost();
					/*Zend_Debug::dump($Dataform);die();*/
					if($Dataform['nama']==null) {
						$this->view->message = 'Please Fill out The Form First!';
					} else {
						//Zend_Debug::dump($Dataform);die();
						$insert = $model->updateSiswa($Dataform);
					}

					if($insert===true) {
						$this->view->msg = 'Insert Success';
					} else {
						$this->view->message = 'Insert Failed';
					}

				}
				$id = $sessionuser->noreg;
				if($id!='') {
					$det = $model->getSiswadet($id);
					$this->view->det = $det;
				}
    }

    public function trainingAction()
    {
        $this->_helper->layout->setLayout('layoutuser');
        // action body
    }

    public function certificationAction()
    {
        $this->_helper->layout->setLayout('layoutuser');
        $sessionuser = Zend_Registry::get('session_user');
        $model = new User_Model_SiswaModel();
        $data = $model->getPelatihan($sessionuser->tingkat);
       // var_dump($sessionuser->tingkat);die();
        $this->view->data = $data;
        // action body
    }

    public function nilaiAction()
    {
        $this->_helper->layout->setLayout('layoutuser');
        // action body
    }

    public function historyAction()
    {
        $this->_helper->layout->setLayout('layoutuser');
        // action body
    }
		public function daftarAction() {
        $model = new User_Model_SiswaModel();
        $req = $this->getRequest();
				$sessionuser = Zend_Registry::get('session_user');
				$id_peserta = $sessionuser->noreg;
        $id_pelatihan = $req->getParam('key');
      //  Zend_Debug::dump($id_peserta.' '.$id_pelatihan);die();
        $daftar = $model->daftar($id_peserta, $id_pelatihan);

        return $this->_helper->json(
                array(
                        'edit' => $daftar,
                )
        );
    }
}
}
