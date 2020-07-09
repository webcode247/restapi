<?php namespace App\Controllers\Api\V1;

use CodeIgniter\RESTful\ResourceController;

use CodeIgniter\I18n\Time;

class Books extends ResourceController {

    protected $modelName = "App\Models\BookModel";
    protected $format = "json";

    public function index() {
        //read from db
        //$books = $this->model->findAll();

        //return $this->respond([ ['status_code'=>201, 'status'=> 'success', 'data' =>$books] ]);
        
    }


    public function create() {
        helper(['form']);

        $rules = [
            'name' => 'required|string|min_length[4]|is_unique[books.name]',
            'isbn' => 'required|min_length[4]|is_unique[books.isbn]',
            'authors' => 'required|min_length[4]',
            'country' => 'required|string',
            'num_of_pages' =>'required|numeric',
            'publisher' => 'required',
            'release_date' => 'required'
        ];

        if(! $this->validate($rules)) {

            return $this->fail($this->validator->getErrors());
        }
        else{

            $time = Time::parse( $this->request->getVar('release_date') );

            $data = [
                'name' => $this->request->getVar('name'),
                'isbn' => $this->request->getVar('isbn'),
                'authors' => [$this->request->getVar('authors')],
                'country' => $this->request->getVar('country'),
                'num_of_pages' => $this->request->getVar('num_of_pages'),
                'publisher' => $this->request->getVar('publisher'),
                'release_date' => $time->toDateString(),
            ];
            $bookid = $this->model->insert($data);
            $data['id'] = $bookid;
            return $this->respondCreated(
                [
                    'status_code' => 201, 'status'=> 'success', 
                    'data' => $data
                    ]
            );
        }
    }
    
    
    public function show($id = null) {
        // fetch row whose primary key matches the book id requested
        $data = $this->model->find($id);
        return $this->respond(
            [
                'status_code' => 200, 'status'=> 'success',
                'data' => $data
                ]
        );
    }
    
    
    public function update( $id = null ) {
        
        helper(['form']);

        $rules = [
            'name' => 'required|string|min_length[4]',
            'isbn' => 'required|min_length[4]',
            'authors' => 'required|min_length[4]',
            'country' => 'required|string',
            'num_of_pages' =>'required|numeric',
            'publisher' => 'required',
            'release_date' => 'required'
        ];

        if(! $this->validate($rules)) {

            return $this->fail($this->validator->getErrors());
        }
        else{
            $time = Time::parse( $this->request->getVar('release_date') );

            // method to collect for PUT verb
            $input = $this->request->getRawInput();
            $data = [
                'id' => $id,
                'name' => $input['name'],
                'isbn' => $input['isbn'],
                'authors' => [$input['authors'] ],
                'country' => $input['country'],
                'num_of_pages' => $input['num_of_pages'],
                'publisher' => $input['publisher'],
                'release_date' => $time->toDateString()
            ];
            // print_r($data['authors']);

            $this->model->save($data);
            return $this->respond([
                'status_code' => 200, 'status'=> 'success', 
                'message' =>'The book My First book was updated successfull.',
                'data' => $data
                ]);
        }
    }


    public function delete($id = null) {
        // ensure there is data for id requested
        $data = $this->model->find($id);
        if($data) {
            $this->model->delete($id);
            return $this->respondDeleted(
                [
                    'status_code' => 204, 'status'=> 'success', 
                    'message' =>'The book My First book was deleted successfull.',
                    'data' => []
                    ]
            );
        }else{
            return $this->failNotFound('Item not in existence');
        }

    }
    
}