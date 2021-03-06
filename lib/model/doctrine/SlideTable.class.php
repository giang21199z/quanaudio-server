<?php

/**
 * SlideTable
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class SlideTable extends Doctrine_Table
{
    /**
     * Returns an instance of this class.
     *
     * @return object SlideTable
     */
    public static function getInstance()
    {
        return Doctrine_Core::getTable('Slide');
    }

    public static function getAllSlide(){
        $query = SlideTable::getInstance()
            ->createQuery('s')
            ->select('s.*')
            ->fetchArray();
        return $query;
    }

    public static function getSlideById($id){
        $query = SlideTable::getInstance()
            ->createQuery('a')
            ->select('a.*')
            ->where('a.idslide = ?', $id)
            ->fetchArray();
        return $query[0];
    }

    public static function updateSlide($id, $slide){
        SlideTable::getInstance()
            ->createQuery('a')
            ->update()
            ->set('a.title', '?', $slide->getTitle())
            ->set('a.description', '?', $slide->getDescription())
            ->set('a.content', '?', $slide->getContent())
            ->set('a.image', '?', $slide->getImage())
            ->set('a.advertisement', '?', $slide->getAdvertisement())
            ->where('a.idslide = ?', $id)
            ->execute();
    }
}