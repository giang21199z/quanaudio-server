<?php

/**
 * NewsTable
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class NewsTable extends Doctrine_Table
{
    /**
     * Returns an instance of this class.
     *
     * @return object NewsTable
     */
    public static function getInstance()
    {
        return Doctrine_Core::getTable('News');
    }

    public static function getLatestNews($category, $limit = 1, $offset = 0){
        $idcategory = "TINTUC" == $category ? 1 : 2;
        $news = NewsTable::getInstance()
            ->createQuery('a')
            ->select('a.*')
            ->orderBy("a.updated DESC")
            ->limit($limit)
            ->offset($offset)
            ->where('a.idcategory = ?', $idcategory)
            ->fetchArray();
        $totalCount = count(NewsTable::getInstance()
            ->createQuery('a')
            ->select('a.*')
            ->where('a.idcategory = ?', $idcategory)
            ->fetchArray());
        return array(
            "totalPage" => ceil($totalCount / $limit),
            "pageNum" => $offset,
            "data" => $news
        );
    }

    public static function getDetailNew($id){
        $new = NewsTable::getInstance()
            ->createQuery('a')
            ->select('a.*')
            ->where('a.idnews = ?', $id)
            ->fetchArray();
        return $new[0];
    }

    public static function getNewRandom($id){
        $new = NewsTable::getInstance()
            ->createQuery('a')
            ->select('a.*')
            ->where('a.idnews != ?', $id)
            ->orderBy('RAND()')
            ->fetchArray();
        return $new[0];
    }
}