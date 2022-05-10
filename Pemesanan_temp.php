<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pemesanan_temp extends Model
{
    protected $primaryKey = 'kd_brg';
    public $incrementing = false;
    protected $keyType = 'string';
    public $timestamps = false;
    protected $table = "temp_pemesanan";
    protected $fillable = ['kd_brg', 'qty_pesan'];
}
