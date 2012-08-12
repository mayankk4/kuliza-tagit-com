<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Fbobject extends CI_Controller {

	public function index()
	{	
		$data = array(
			'title' => 'Kuliza.Tagit | FB Objects',
			'heading' => 'All FB Objects'
		);
		$this->load->view('register/index', $data);
	}

}

/* End of file register.php */
/* Location: ./application/controllers/register.php */