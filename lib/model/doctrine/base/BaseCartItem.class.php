<?php
// Connection Component Binding
Doctrine_Manager::getInstance()->bindComponent('CartItem', 'doctrine');

/**
 * BaseCartItem
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $id
 * @property integer $idaudio
 * @property integer $amount
 * @property integer $price
 * @property Audio $Audio
 * @property Doctrine_Collection $Cart
 * 
 * @method integer             getId()      Returns the current record's "id" value
 * @method integer             getIdaudio() Returns the current record's "idaudio" value
 * @method integer             getAmount()  Returns the current record's "amount" value
 * @method integer             getPrice()   Returns the current record's "price" value
 * @method Audio               getAudio()   Returns the current record's "Audio" value
 * @method Doctrine_Collection getCart()    Returns the current record's "Cart" collection
 * @method CartItem            setId()      Sets the current record's "id" value
 * @method CartItem            setIdaudio() Sets the current record's "idaudio" value
 * @method CartItem            setAmount()  Sets the current record's "amount" value
 * @method CartItem            setPrice()   Sets the current record's "price" value
 * @method CartItem            setAudio()   Sets the current record's "Audio" value
 * @method CartItem            setCart()    Sets the current record's "Cart" collection
 * 
 * @package    quanaudio
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseCartItem extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('cart_item');
        $this->hasColumn('id', 'integer', 4, array(
             'type' => 'integer',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => true,
             'autoincrement' => true,
             'length' => 4,
             ));
        $this->hasColumn('idaudio', 'integer', 4, array(
             'type' => 'integer',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => true,
             'autoincrement' => false,
             'length' => 4,
             ));
        $this->hasColumn('amount', 'integer', 4, array(
             'type' => 'integer',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => true,
             'autoincrement' => false,
             'length' => 4,
             ));
        $this->hasColumn('price', 'integer', 4, array(
             'type' => 'integer',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => true,
             'autoincrement' => false,
             'length' => 4,
             ));
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasOne('Audio', array(
             'local' => 'idaudio',
             'foreign' => 'idaudio'));

        $this->hasMany('Cart', array(
             'local' => 'id',
             'foreign' => 'idcart_item'));
    }
}