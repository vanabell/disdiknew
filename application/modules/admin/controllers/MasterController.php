<?php
class Admin_MasterController extends Zend_Controller_Action {
    private function pagenumber($totpage,$curpage){
    for($int=$curpage;$int<$totpage;$int++)
    {
      if(empty($a))
      {
        $a=1;
        $paging['lnum'][$a] = $int+1;
        $a++;
      }else if($a == 2)
      { 
        $paging['lnum'][$a] = $int+1;
        $a++;
        $int = $totpage;
      }
    }
    if($curpage > 2)
    {
      $paging['fnum'][0] = $curpage - 1;
      $paging['fnum'][1] = $curpage - 2;
      
    } else if($curpage > 1) 
    {
      
      $paging['fnum'][0] = $curpage - 1;
    }
  
    return $paging;
  
  }

    public function indexAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
  	}

    /* Kecamatan CRUD */
    public function kecamatanAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
      $model = new Admin_Model_MasterModel();
  		$listkecamatan = $model->getKecamatanlist();
  		$this->view->detail = $listkecamatan;
  	}
    public function addkecAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
      if ($this->_request->isPost()) {
  			$model = new Admin_Model_MasterModel();
  			$Dataform = $this->_request->getPost();

  			if($Dataform['nama']==null) {
  				$this->view->message = 'Please Fill out The Form First!';
  			} else {
  				$cek_kec = $model->cekKecamatan($Dataform['nama']);
  				//Zend_Debug::dump(count($cekemail));die();
  				if(count($cek_kec)==0) {
  					$insert = $model->insertKecamatan($Dataform);
  					if($insert===true) {
  						//zend_debug::dump($insert);die();
  						$this->view->msg = 'Insert Success';
  					} else {
  						$this->view->message = 'Insert Failed';
  					}
  				} else {
  					$this->view->message = 'Nama Kecamatan is Already Use';
  				}

  			}
  		}
  	}
    public function editkecAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
      $model = new Admin_Model_MasterModel();
  		$req = $this->getRequest();
  		$id = $req->getParam('p');

  		$det = $model->getKecamatandet($id);
  		$this->view->det = $det;
  		if ($this->_request->isPost()) {
  			$Dataform = $this->_request->getPost();
  			/*Zend_Debug::dump($Dataform);die();*/
  			if($Dataform['nama']==null) {
  				$this->view->message = 'Please Fill out The Form First!';
  			} else {
  				//Zend_Debug::dump($Dataform);die();
  				$insert = $model->updateKecamatan($Dataform);
  			}

  			if($insert===true) {
  				$this->view->msg = 'Insert Success';
  			} else {
  				$this->view->message = 'Insert Failed';
  			}

  		}
  		$id = $req->getParam('p');
  		if($id!='') {
  			$det = $model->getKecamatandet($id);
  			$this->view->det = $det;
  		}
  	}
    public function delkecAction() {
      $model = new Admin_Model_MasterModel();
      $req = $this->getRequest();
      $id = $req->getParam('key');
      $delete = $model->delKecamatan($id);
      return $this->_helper->json(
          array(
              'edit' => $delete,
          )
      );
  	}
    /* End Kecamatan CRUD */

    /* Guru RUD */
    public function guruAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
      $model = new Admin_Model_MasterModel();
  		$listguru = $model->getGurulist();
  		$this->view->detail = $listguru;
  	}
    public function editguruAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
      $model = new Admin_Model_MasterModel();
  		$req = $this->getRequest();
  		$id = $req->getParam('p');

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
  		$id = $req->getParam('p');
  		if($id!='') {
  			$det = $model->getGurudet($id);
  			$this->view->det = $det;
  		}
  	}
    public function delguruAction() {
      $model = new Admin_Model_MasterModel();
      $req = $this->getRequest();
      $id = $req->getParam('key');
      $delete = $model->delGuru($id);
      return $this->_helper->json(
          array(
              'edit' => $delete,
          )
      );
  	}
    /* End Guru RUD */

    /* Siswa RUD */
    public function siswaAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
      $model = new Admin_Model_MasterModel();
  		$listsiswa = $model->getSiswalist();
  		$this->view->detail = $listsiswa;
  	}
    public function editsiswaAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
      $model = new Admin_Model_MasterModel();
  		$req = $this->getRequest();
  		$id = $req->getParam('p');

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
  		$id = $req->getParam('p');
  		if($id!='') {
  			$det = $model->getSiswadet($id);
  			$this->view->det = $det;
  		}
  	}
    public function delsiswaAction() {
      $model = new Admin_Model_MasterModel();
      $req = $this->getRequest();
      $id = $req->getParam('key');
      $delete = $model->delSiswa($id);
      return $this->_helper->json(
          array(
              'edit' => $delete,
          )
      );
  	}
    /* End Siswa RUD */

    /* Sekolah CRUD */
    public function sekolahAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
      $model = new Admin_Model_MasterModel();
  		$listsekolah = $model->getSekolahlist();
  		//$this->view->detail = $listsekolah;

      $req = $this->getRequest();
      //$page=$this->_getParam('page',1);
      $curpage = 1;
      if($req->getParam('page'))
      {
        $curpage = $req->getParam('page');
      }
      $totpage = ceil(count($listsekolah)/10);
      if($totpage > 1) {
      $paginator = Zend_Paginator::factory($listsekolah);
      $paginator->setItemCountPerPage(10);
      $paginator->setCurrentPageNumber($curpage);
      $this->view->paginator=$paginator;
      $this->view->curpage = $curpage;
      $this->view->pagenum = $this->pagenumber($totpage,$curpage);
      } else {
        $this->view->paginator=$listsekolah;
      }


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
    public function addsekolahAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
      if ($this->_request->isPost()) {
  			$model = new Admin_Model_MasterModel();
  			$Dataform = $this->_request->getPost();

  			if($Dataform['nama']==null && $Dataform['tingkat']==null) {
  				$this->view->message = 'Please Fill out The Form First!';
  			} else {
  				$cek_sekolah = $model->cekSekolah($Dataform['nama'],$Dataform['tingkat']);

          $detkec = $model->getKecamatandet($Dataform['kec']);
          $kode_kec = $detkec[0]['kode_wilayah'];

          if($Dataform['tingkat']=="TK") {
              $k_tingkat = "60";
          } elseif ($Dataform['tingkat']=="SD") {
              $k_tingkat = "61";
          } elseif ($Dataform['tingkat']=="SMP") {
              $k_tingkat = "62";
          } elseif ($Dataform['tingkat']=="SMA") {
              $k_tingkat = "63";
          } else {
              $k_tingkat = "64";
          }

          $hit_id = "164".$kode_kec.$k_tingkat.$Dataform['status'];
          $hitsekolah = $model->cekStatsek($hit_id);

          $ids = $hitsekolah[0]['jum'];
          $count = str_pad($ids + 1, 5, 0, STR_PAD_LEFT);
          $id_sekolah = "164".$kode_kec.$k_tingkat.$Dataform['status'].$count;
          // Zend_Debug::dump($id_sekolah);die();

  				if(count($cek_sekolah)==0) {
  					$insert = $model->insertSekolah($Dataform,$id_sekolah);
  					if($insert===true) {
  						//zend_debug::dump($insert);die();
  						$this->view->msg = 'Insert Success';
  					} else {
  						$this->view->message = 'Insert Failed';
  					}
  				} else {
  					$this->view->message = 'Nama Sekolah is Already Use';
  				}

  			}
  		}
  	}
    public function editsekolahAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
      $model = new Admin_Model_MasterModel();
  		$req = $this->getRequest();
  		$id = $req->getParam('p');

  		$det = $model->getSekolahdet($id);
  		$this->view->det = $det;
  		if ($this->_request->isPost()) {
  			$Dataform = $this->_request->getPost();
  			/*Zend_Debug::dump($Dataform);die();*/
  			if($Dataform['nama']==null) {
  				$this->view->message = 'Please Fill out The Form First!';
  			} else {
  				//Zend_Debug::dump($Dataform);die();
  				$insert = $model->updateSekolah($Dataform);
  			}

  			if($insert===true) {
  				$this->view->msg = 'Insert Success';
  			} else {
  				$this->view->message = 'Insert Failed';
  			}

  		}
  		$id = $req->getParam('p');
  		if($id!='') {
  			$det = $model->getSekolahdet($id);
  			$this->view->det = $det;
  		}
  	}
    public function delsekolahAction() {
      $model = new Admin_Model_MasterModel();
      $req = $this->getRequest();
      $id = $req->getParam('key');
      $delete = $model->delSekolah($id);
      return $this->_helper->json(
          array(
              'edit' => $delete,
          )
      );
  	}
    /* End Sekolah CRUD */

    /* Mapel CRUD */
    public function mapelAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
      $model = new Admin_Model_MasterModel();
  		$listmapel = $model->getMapellist();
  		$this->view->detail = $listmapel;
  	}
    public function addmapelAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
      if ($this->_request->isPost()) {
  			$model = new Admin_Model_MasterModel();
  			$Dataform = $this->_request->getPost();

  			if($Dataform['nama']==null && $Dataform['tingkat']==null) {
  				$this->view->message = 'Please Fill out The Form First!';
  			} else {
  				$cek_mapel = $model->cekMapel($Dataform['nama'],$Dataform['tingkat']);
  				//Zend_Debug::dump(count($cekemail));die();
  				if(count($cek_mapel)==0) {
  					$insert = $model->insertMapel($Dataform);
  					if($insert===true) {
  						//zend_debug::dump($insert);die();
  						$this->view->msg = 'Insert Success';
  					} else {
  						$this->view->message = 'Insert Failed';
  					}
  				} else {
  					$this->view->message = 'Nama Mata Pelajaran is Already Use';
  				}

  			}
  		}
  	}
    public function editmapelAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
      $model = new Admin_Model_MasterModel();
  		$req = $this->getRequest();
  		$id = $req->getParam('p');

  		$det = $model->getMapeldet($id);
  		$this->view->det = $det;
  		if ($this->_request->isPost()) {
  			$Dataform = $this->_request->getPost();
  			/*Zend_Debug::dump($Dataform);die();*/
  			if($Dataform['nama']==null && $Dataform['tingkat']==null) {
  				$this->view->message = 'Please Fill out The Form First!';
  			} else {
  				//Zend_Debug::dump($Dataform);die();
  				$insert = $model->updateMapel($Dataform);
  			}

  			if($insert===true) {
  				$this->view->msg = 'Insert Success';
  			} else {
  				$this->view->message = 'Insert Failed';
  			}

  		}
  		$id = $req->getParam('p');
  		if($id!='') {
  			$det = $model->getMapeldet($id);
  			$this->view->det = $det;
  		}
    }
    public function delmapelAction() {
      $model = new Admin_Model_MasterModel();
      $req = $this->getRequest();
      $id = $req->getParam('key');
      $delete = $model->delMapel($id);
      return $this->_helper->json(
          array(
              'edit' => $delete,
          )
      );
  	}
    /* End Mapel CRUD */

    /* Jabatan CRUD */
    public function jabatanAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
      $model = new Admin_Model_MasterModel();
  		$listjabatan = $model->getJabatanlist();
  		$this->view->detail = $listjabatan;
  	}
    public function addjabatanAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
      if ($this->_request->isPost()) {
  			$model = new Admin_Model_MasterModel();
  			$Dataform = $this->_request->getPost();

  			if($Dataform['nama']==null) {
  				$this->view->message = 'Please Fill out The Form First!';
  			} else {
  				$cek_jabatan = $model->cekJabatan($Dataform['nama']);
  				//Zend_Debug::dump(count($cekemail));die();
  				if(count($cek_jabatan)==0) {
  					$insert = $model->insertJabatan($Dataform);
  					if($insert===true) {
  						//zend_debug::dump($insert);die();
  						$this->view->msg = 'Insert Success';
  					} else {
  						$this->view->message = 'Insert Failed';
  					}
  				} else {
  					$this->view->message = 'Nama Jabatan is Already Use';
  				}

  			}
  		}
  	}
    public function editjabatanAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
  	}
    public function deljabatanAction() {

  	}
    /* End Jabatan CRUD */

    /* Status Pegawai CRUD */
    public function statuspegAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
      $model = new Admin_Model_MasterModel();
  		$listStat = $model->getStatuspeglist();
  		$this->view->detail = $listStat;
  	}
    public function addstatuspegAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
      if ($this->_request->isPost()) {
  			$model = new Admin_Model_MasterModel();
  			$Dataform = $this->_request->getPost();

  			if($Dataform['nama']==null) {
  				$this->view->message = 'Please Fill out The Form First!';
  			} else {
  				$cek_stat = $model->cekStatpeg($Dataform['nama']);
  				//Zend_Debug::dump(count($cekemail));die();
  				if(count($cek_stat)==0) {
  					$insert = $model->insertStatpeg($Dataform);
  					if($insert===true) {
  						//zend_debug::dump($insert);die();
  						$this->view->msg = 'Insert Success';
  					} else {
  						$this->view->message = 'Insert Failed';
  					}
  				} else {
  					$this->view->message = 'Nama Status Pegawai is Already Use';
  				}

  			}
  		}
  	}
    public function editstatuspegAction() {
  		$this->_helper->layout->setLayout('layoutadmin');
      $model = new Admin_Model_MasterModel();
  		$req = $this->getRequest();
  		$id = $req->getParam('p');

  		$det = $model->getStatpegdet($id);
  		$this->view->det = $det;
  		if ($this->_request->isPost()) {
  			$Dataform = $this->_request->getPost();
  			/*Zend_Debug::dump($Dataform);die();*/
  			if($Dataform['nama']==null) {
  				$this->view->message = 'Please Fill out The Form First!';
  			} else {
  				//Zend_Debug::dump($Dataform);die();
  				$insert = $model->updateStatpeg($Dataform);
  			}

  			if($insert===true) {
  				$this->view->msg = 'Insert Success';
  			} else {
  				$this->view->message = 'Insert Failed';
  			}

  		}
  		$id = $req->getParam('p');
  		if($id!='') {
  			$det = $model->getStatpegdet($id);
  			$this->view->det = $det;
  		}
  	}
    public function delstatuspegAction() {
      $model = new Admin_Model_MasterModel();
      $req = $this->getRequest();
      $id = $req->getParam('key');
      $delete = $model->delStatpeg($id);
      return $this->_helper->json(
          array(
              'edit' => $delete,
          )
      );
  	}
    /* End Status Pegawai CRUD */
}
