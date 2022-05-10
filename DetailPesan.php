<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DetailPesan extends Model
{
    //jika tidak di definisikan makan primary akan terdetek id
    protected $primaryKey = 'no_pesan';
    public $incrementing = false;
    protected $keyType = 'string';
    public $timestamps = false;
    protected $table = "detail_pesan";
    protected $fillable = ['no_pesan', 'kd_brg', 'qty_pesan', 'subtotal'];
}
