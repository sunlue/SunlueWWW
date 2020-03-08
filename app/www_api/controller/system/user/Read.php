<?php
/**
 * User: xiebing
 * Date: 2019-6-14
 * Time: 15:31
 */

namespace app\www_api\controller\system\user;

class Read extends User {
    public function initialize() {
        parent::_init();
    }

    /**
     * 查询数据
     * @param array $param
     * @param string $callback
     * @return array
     */
    protected function searchWhere($param = array(), $callback = '') {
        $where = array();
        if (!empty($param['pid'])) {
            $where[] = ['pid', '=', $param['pid']];
        }
        if (!empty($param['name'])) {
            $where[] = ['name', 'like', '%' . $param['name'] . '%'];
        }
        if (!empty($param['uniqid'])) {
            $where[] = ['uniqid', '=', $param['uniqid']];
        }
        if ($callback instanceof \Closure) {
            $callback($where);
        } else {
            return $where;
        }
    }

    public function index() {
        $param = input('post.');
        $where = $this->searchWhere($param);
        parent::read($where);
    }

}