<?php

class ServiceController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        // action body
    }

    public function trainingAction()
    {
        $model = new Application_Model_PelatihanModel();
        $data = $model->getAllpelatihan();
        $this->view->data = $data;

    }

    public function certificationAction()
    {
        $model = new Application_Model_PelatihanModel();
        $data = $model->getAllsertifikasi();
        $this->view->data = $data;
    }

    public function traincerfAction()
    {
        $model = new Application_Model_PelatihanModel();
        $data = $model->getAllpelserf();
        $this->view->data = $data;
    }

    public function detailAction()
    {
        $model = new Application_Model_PelatihanModel();
        $req = $this->getRequest();
        $id = $req->getParam('p');
        $getpel = $model->getAllPelDet($id);
        $this->view->data = $getpel;
    }
}
