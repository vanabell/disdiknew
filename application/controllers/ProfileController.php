<?php

class ProfileController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        // action body
        $model = new Application_Model_ProfileModel();
        $data = $model->getAllProfileDet(1);
        $this->view->data = $data;
    }

    public function historyAction()
    {
        // action body
        $model = new Application_Model_ProfileModel();
        $data = $model->getAllProfileDet(2);
        $this->view->data = $data;
    }

    public function jobdeskAction()
    {
        // action body
        $model = new Application_Model_ProfileModel();
        $data = $model->getAllProfileDet(3);
        $this->view->data = $data;
    }

    public function structureAction()
    {
        // action body
        $model = new Application_Model_ProfileModel();
        $data = $model->getAllProfileDet(4);
        $this->view->data = $data;
    }

    public function institutionAction()
    {
        // action body
        $model = new Application_Model_ProfileModel();
        $data = $model->getAllProfileDet(5);
        $this->view->data = $data;
    }

    public function visimisiAction()
    {
        // action body
        $model = new Application_Model_ProfileModel();
        $data = $model->getAllProfileDet(6);
        $this->view->data = $data;
    }
}
