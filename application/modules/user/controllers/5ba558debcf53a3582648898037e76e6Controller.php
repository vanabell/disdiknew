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
        // action body
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
}
