<?php namespace App\Models;

use CodeIgniter\Model;


class BlogModel extends Model {
    

 public function getData() {
    return $this->db->table('post')->get()->getResultObject();
 }
    
}