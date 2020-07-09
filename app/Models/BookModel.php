<?php namespace App\Models;

use CodeIgniter\Model;


class BookModel extends Model {

    protected $table = 'books';
    protected $primaryKey = 'id';
    protected $allowedFields = ['name', 'isbn', 'authors', 'country', 'num_of_pages', 'publisher', 'release_date'];

}