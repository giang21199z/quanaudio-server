<?php
// Connection Component Binding
Doctrine_Manager::getInstance()->bindComponent('News', 'doctrine');

/**
 * BaseNews
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $idnews
 * @property string $title
 * @property string $description
 * @property string $content
 * @property string $image
 * @property timestamp $updated
 * @property integer $idcategory
 * @property Category $Category
 * 
 * @method integer   getIdnews()      Returns the current record's "idnews" value
 * @method string    getTitle()       Returns the current record's "title" value
 * @method string    getDescription() Returns the current record's "description" value
 * @method string    getContent()     Returns the current record's "content" value
 * @method string    getImage()       Returns the current record's "image" value
 * @method timestamp getUpdated()     Returns the current record's "updated" value
 * @method integer   getIdcategory()  Returns the current record's "idcategory" value
 * @method Category  getCategory()    Returns the current record's "Category" value
 * @method News      setIdnews()      Sets the current record's "idnews" value
 * @method News      setTitle()       Sets the current record's "title" value
 * @method News      setDescription() Sets the current record's "description" value
 * @method News      setContent()     Sets the current record's "content" value
 * @method News      setImage()       Sets the current record's "image" value
 * @method News      setUpdated()     Sets the current record's "updated" value
 * @method News      setIdcategory()  Sets the current record's "idcategory" value
 * @method News      setCategory()    Sets the current record's "Category" value
 * 
 * @package    quanaudio
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseNews extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('news');
        $this->hasColumn('idnews', 'integer', 4, array(
             'type' => 'integer',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => true,
             'autoincrement' => true,
             'length' => 4,
             ));
        $this->hasColumn('title', 'string', 500, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => false,
             'autoincrement' => false,
             'length' => 500,
             ));
        $this->hasColumn('description', 'string', null, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => false,
             'autoincrement' => false,
             'length' => '',
             ));
        $this->hasColumn('content', 'string', null, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => false,
             'autoincrement' => false,
             'length' => '',
             ));
        $this->hasColumn('image', 'string', 200, array(
             'type' => 'string',
             'fixed' => 0,
             'unsigned' => false,
             'primary' => false,
             'notnull' => true,
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
        $this->hasColumn('idcategory', 'integer', 4, array(
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
        $this->hasOne('Category', array(
             'local' => 'idcategory',
             'foreign' => 'idcategory'));
    }
}