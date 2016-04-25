<?php

class NewsController extends Zend_Controller_Action
{

   public function init()
   {
       /* Initialize action controller here */
   }

   public function indexAction()
   {
       $model = new Application_Model_NewsModel();
       $data = $model->getAllNews();
       foreach ($data as $news) {
           $truncated = $this->truncateIfNecessary($news['isi'],150);
           $newsdata[] =  array('id_berita' => $news['id_berita'],'judul'=>$news['judul'], 'isi'=>$truncated,'gambar'=>$news['gambar'],'waktu'=>$news['waktu'],'edit_time'=>$news['edit_time'] );
       }
       $this->view->data = $newsdata;

   }

   public function detailAction()
   {
       $model = new Application_Model_NewsModel();
       $req = $this->getRequest();
       $id = $req->getParam('p');
       $getnews = $model->getAllNewsDet($id);
       $this->view->data = $getnews;
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
