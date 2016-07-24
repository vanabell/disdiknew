<?php

class AgendaController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */

    }

    public function indexAction()
    {
    	$model = new Application_Model_AgendaModel();
    	$getallagenda = $model->getAllAgenda();
      foreach ($getallagenda as $agenda) {
          $truncated = $this->truncateIfNecessary($agenda['isi'],150);
          $agenadata[] =  array('id_agenda' => $agenda['id_agenda'],'judul'=>$agenda['nama_agenda'], 'isi'=>$truncated,'waktu'=>$agenda['tgl']);
      }
      $this->view->data = $agenadata;
    }

    public function detailAction()
    {
    	// action body
    	$model = new Application_Model_AgendaModel();
    	$req = $this->getRequest();
    	$id = $req->getParam('p');
    	$getagenda = $model->getAllAgendaDet($id);
    	$this->view->data = $getagenda;
    }

    function truncateIfNecessary($string, $length) {
       if(strlen($string) > $length) {
           $string = html_entity_decode(strip_tags($string));
           $string = substr($string, 0, $length).'...';
           $string = htmlentities($string);
           return $string;
       } else {
           return strip_tags($string);
       }
    }


}
