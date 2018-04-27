<?php
namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
	protected $table="comment";
	protected $primarykey ='id';
    public function product(){
        return $this->belongsTo('App\Product','idproduct','id');
    }
     public function user()
    {
    	return $this->belongsTo('App\User','id_users','id');
    }
}

?>