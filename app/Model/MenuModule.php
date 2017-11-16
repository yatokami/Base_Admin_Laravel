<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class MenuModule extends Model
{
    /**
     * [$table 模型关联数据表]
     * @var string
     */
	protected $table = 'base_module';

	/**
	 * [$primaryKey 主键]
	 * @var string
	 */
	protected $primaryKey = "moduleId";
}
