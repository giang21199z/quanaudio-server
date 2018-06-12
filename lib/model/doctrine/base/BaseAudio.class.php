<?php
// Connection Component Binding
Doctrine_Manager::getInstance()->bindComponent('Audio', 'doctrine');

/**
 * BaseAudio
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $idaudio
 * @property string $name
 * @property string $price
 * @property string $condition
 * @property string $brand
 * @property string $description
 * @property string $image
 * @property string $image2
 * @property string $image3
 * @property string $image4
 * @property timestamp $updated
 * @property integer $idtype
 * @property Type $Type
 * @property Doctrine_Collection $CartItem
 * 
 * @method integer             getIdaudio()     Returns the current record's "idaudio" value
 * @method string              getName()        Returns the current record's "name" value
 * @method string              getPrice()       Returns the current record's "price" value
 * @method string              getCondition()   Returns the current record's "condition" value
 * @method string              getBrand()       Returns the current record's "brand" value
 * @method string              getDescription() Returns the current record's "description" value
 * @method string              getImage()       Returns the current record's "image" value
 * @method string              getImage2()      Returns the current record's "image2" value
 * @method string              getImage3()      Returns the current record's "image3" value
 * @method string              getImage4()      Returns the current record's "image4" value
 * @method timestamp           getUpdated()     Returns the current record's "updated" value
 * @method integer             getIdtype()      Returns the current record's "idtype" value
 * @method Type                getType()        Returns the current record's "Type" value
 * @method Doctrine_Collection getCartItem()    Returns the current record's "CartItem" collection
 * @method Audio               setIdaudio()     Sets the current record's "idaudio" value
 * @method Audio               setName()        Sets the current record's "name" value
 * @method Audio               setPrice()       Sets the current record's "price" value
 * @method Audio               setCondition()   Sets the current record's "condition" value
 * @method Audio               setBrand()       Sets the current record's "brand" value
 * @method Audio               setDescription() Sets the current record's "description" value
 * @method Audio               setImage()       Sets the current record's "image" value
 * @method Audio               setImage2()      Sets the current record's "image2" value
 * @method Audio               setImage3()      Sets the current record's "image3" value
 * @method Audio               setImage4()      Sets the current record's "image4" value
 * @method Audio               setUpdated()     Sets the current record's "updated" value
 * @method Audio               setIdtype()      Sets the current record's "idtype" value
 * @method Audio               setType()        Sets the current record's "Type" value
 * @method Audio               setCartItem()    Sets the current record's "CartItem" collection
 * 
 * @package    quanaudio
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseAudio extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('audio');
        $this->hasColumn('idaudio', 'integer', 4, array(
             'type' => 'integer',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => true,
             'autoincrement' => true,
             'length' => 4,
             ));
        $this->hasColumn('name', 'string', 200, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => false,
             'autoincrement' => false,
             'length' => 200,
             ));
        $this->hasColumn('price', 'string', 20, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => false,
             'autoincrement' => false,
             'length' => 20,
             ));
        $this->hasColumn('condition', 'string', 45, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => true,
             'autoincrement' => false,
             'length' => 45,
             ));
        $this->hasColumn('brand', 'string', 100, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => false,
             'autoincrement' => false,
             'length' => 100,
             ));
        $this->hasColumn('description', 'string', null, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => true,
             'autoincrement' => false,
             'length' => '',
             ));
        $this->hasColumn('image', 'string', 200, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => false,
             'autoincrement' => false,
             'length' => 200,
             ));
        $this->hasColumn('image2', 'string', 200, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => false,
             'autoincrement' => false,
             'length' => 200,
             ));
        $this->hasColumn('image3', 'string', 200, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => false,
             'autoincrement' => false,
             'length' => 200,
             ));
        $this->hasColumn('image4', 'string', 200, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => false,
             'autoincrement' => false,
             'length' => 200,
             ));
        $this->hasColumn('updated', 'timestamp', 25, array(
             'type' => 'timestamp',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => false,
             'autoincrement' => false,
             'length' => 25,
             ));
        $this->hasColumn('idtype', 'integer', 4, array(
             'type' => 'integer',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => true,
             'autoincrement' => false,
             'length' => 4,
             ));
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasOne('Type', array(
             'local' => 'idtype',
             'foreign' => 'idtype'));

        $this->hasMany('CartItem', array(
             'local' => 'idaudio',
             'foreign' => 'idaudio'));
    }
}