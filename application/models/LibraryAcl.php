<?php
class Application_Model_LibraryAcl extends Zend_Acl {
	Public function __construct() {
	//privelege roles
	$this->add(new Zend_Acl_Resource('loginadmin'));
	$this->add(new Zend_Acl_Resource('admin'));
	$this->add(new Zend_Acl_Resource('add'),'admin');
	$this->add(new Zend_Acl_Resource('edit'),'admin');
	$this->add(new Zend_Acl_Resource('delete'),'admin');
	$this->add(new Zend_Acl_Resource('index'),'admin');

	$this->add(new Zend_Acl_Resource('artikel'));
	$this->add(new Zend_Acl_Resource('lembaga'));
	$this->add(new Zend_Acl_Resource('news'));
	$this->add(new Zend_Acl_Resource('profile'));
	$this->add(new Zend_Acl_Resource('fasilitas'));
	$this->add(new Zend_Acl_Resource('master'));
	/*$this->add(new Zend_Acl_Resource('order'));
	$this->add(new Zend_Acl_Resource('partner'));
	$this->add(new Zend_Acl_Resource('topup'));
	$this->add(new Zend_Acl_Resource('managevoc'));
	$this->add(new Zend_Acl_Resource('merchant'));
	$this->add(new Zend_Acl_Resource('reportpayment'));
	$this->add(new Zend_Acl_Resource('content'));
	$this->add(new Zend_Acl_Resource('conv'));*/


	$this->addRole(new Zend_Acl_Role('merchant'));
	$this->addRole(new Zend_Acl_Role('staff'), 'merchant');
	$this->addRole(new Zend_Acl_Role('administrator'), 'staff');


	$this->allow('merchant','loginadmin');
	//$this->allow('staff','loginadmin');
	//admin
	$this->allow('staff','admin');
	$this->deny('merchant','admin');

	$this->allow('staff','artikel');
	$this->deny('merchant','artikel');

	$this->allow('merchant','lembaga');

	$this->allow('staff','news');
	$this->deny('merchant','news');

	$this->allow('staff','profile');
	$this->deny('merchant','profile');

	$this->allow('staff','fasilitas');
	$this->deny('merchant','fasilitas');

	$this->allow('staff','master');
	$this->deny('merchant','master');

	//costumer
	/*$this->allow('staff','customer');
	$this->deny('merchant','customer');
	//order
	$this->allow('staff','order');
	$this->deny('merchant','order');
	//partner
	$this->allow('staff','partner');
	$this->deny('merchant','partner');
	//managevoc
	$this->allow('merchant','managevoc');
	//topup
	$this->allow('staff','topup');
	$this->deny('merchant','topup');
	//merchant
	$this->allow('staff','merchant');
	$this->deny('merchant','merchant');
	//report payment
	$this->allow('staff','reportpayment');
	$this->deny('merchant','reportpayment');
	//content
	$this->allow('staff','content');
	$this->deny('merchant','content');
	//content
	$this->deny('staff','conv');
	$this->deny('merchant','conv');
	$this->allow('administrator','conv');*/




	}
}
