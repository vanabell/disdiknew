<?php

class FasilitasController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        // action body
    }

    public function programAction()
    {
        $model = new Application_Model_ProfileModel();
        $data = $model->getAllProfileDet(7);
        $this->view->data = $data;
    }

    public function saranaAction()
    {
        $model = new Application_Model_ProfileModel();
        $data = $model->getAllProfileDet(8);
        $this->view->data = $data;
    }

    public function mitraAction()
    {
        $model = new Application_Model_ProfileModel();
        $data = $model->getAllProfileDet(9);
        $this->view->data = $data;
    }

    public function asetAction()
    {
        $model = new Application_Model_ProfileModel();
        $data = $model->getAllProfileDet(10);
        $this->view->data = $data;
    }

}
