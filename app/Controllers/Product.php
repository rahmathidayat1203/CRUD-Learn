<?php

namespace App\Controllers;
use CodeIgniter\API\ResponseTrait;
use App\Models\productModel;
class Product extends BaseController
{
    use ResponseTrait;
    public function save(){
        try {
            $data = $this->request->getPost();
            $model = new productModel();
            $model->save($data);
            return $this->apiResponse($data);
        }catch(\Exception $e){
            return $this->apiResponse(status:false,message:$e->getMessage(),code:500);
        }
    }
    public function updates($uuid){
        try {
            $data = $this->request->getRawInput();
            $model = new productModel();
            $model->update($uuid,$data);
            $showData = $model->find($uuid);
            return $this->apiResponse($showData);
        }catch(\Exception $e){
            return $this->apiResponse(status:false,message:$e->getMessage(),code:500);
        }
    }
    public function show($uuid){
        // try {
        //     $model = new productModel();
        //     $showData = $model->find($uuid);
        //     return $this->getResponse($showData);
        // }catch(\Exception $e){
        //     return $this->response
        //                 ->setJSON(
        //                     [   
        //                         'meta' =>[
        //                             'code' => 500,
        //                             'status'=>'error',
        //                             'message'=>$e->getMessage()
        //                         ]
        //                     ]);
        // }
    }
    public function delete(){
        try {
            $data = $this->request->getPost();
            $model = new productModel();
            $model->delete($data['id']);
            return $this->response
                        ->setJSON(
                            [   
                                'code' => 200,
                                'status'=>'success',
                                'data'=>$data
                            ]);
        }catch(\Exception $e){
            return $this->response
                        ->setJSON(
                            [   
                                'code' => 500,
                                'status'=>'error',
                                'data'=>$e->getMessage()
                            ]);
        }
    }
}