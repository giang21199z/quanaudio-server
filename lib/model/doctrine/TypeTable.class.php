<?php

/**
 * TypeTable
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 */
class TypeTable extends Doctrine_Table
{
    /**
     * Returns an instance of this class.
     *
     * @return object TypeTable
     */
    public static function getInstance()
    {
        return Doctrine_Core::getTable('Type');
    }

    public static function getMenuType(){
        $types = TypeTable::getInstance()
            ->createQuery('t')
            ->select('t.*')
            ->fetchArray();
        $response = [];
        foreach($types as $value) {
            $item = [
                "idtype" => $value["idtype"],
                "name" => $value["name"],
                "listChild" => []
            ];
            $hasParent = false;
            for($idx = 0; $idx < count($response); $idx++) {
                if($value["idparent"] == $response[$idx]["idtype"]){
                    $hasParent = true;
                    array_push($response[$idx]["listChild"], $item);
                }
            }
            if(!$hasParent) array_push($response, $item);
        }
        return $response;
    }
}