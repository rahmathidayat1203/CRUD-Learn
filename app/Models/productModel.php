<?php

namespace App\Models;

use CodeIgniter\Model;

class ProductModel extends Model
{
    protected $table = 'productdata';
    protected $primaryKey = 'id';
    protected $useAutoIncrement = true;
    protected $allowedFields = ['nameProduct', 'prizeProduct', 'manyProduct'];
}