<?php
class User_3e72758f0fc77cdad787f58b41e9985fController extends Zend_Controller_Action {
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
				$model = new User_Model_GuruModel();
				$sessionuser = Zend_Registry::get('session_user');
	  		$id = $sessionuser->noreg;

	  		$det = $model->getGurudet($id);
	  		$this->view->det = $det;
	  		if ($this->_request->isPost()) {
	  			$Dataform = $this->_request->getPost();
	  			/*Zend_Debug::dump($Dataform);die();*/
	  			if($Dataform['nama']==null) {
	  				$this->view->message = 'Please Fill out The Form First!';
	  			} else {
	  				//Zend_Debug::dump($Dataform);die();
	  				$insert = $model->updateGuru($Dataform);
	  			}

	  			if($insert===true) {
	  				$this->view->msg = 'Insert Success';
	  			} else {
	  				$this->view->message = 'Insert Failed';
	  			}

	  		}
				$id = $sessionuser->noreg;
	  		if($id!='') {
	  			$det = $model->getGurudet($id);
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
}
