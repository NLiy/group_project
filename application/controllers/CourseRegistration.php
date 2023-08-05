<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CourseRegistration extends CI_Controller{
	function __construct(){
		parent::__construct();

		$this->load->model('course', '', TRUE);
		$this->load->library('session');
		$this->load->helper('form');
		$this->load->helper('url');
	}

	public function index(){
		$this->load->view('header');
		$this->load->model('course');
		$data['course']=$this->course->getCourse();
		$this->load->model('course_reg');
		$data['coursereg']=$this->course_reg->getCourseReg();
		$this->load->view('courseregistrationform_view', $data);
		$this->load->view('footer');

	}


} //end class CourseRegistration

?>