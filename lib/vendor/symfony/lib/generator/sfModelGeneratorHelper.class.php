<?php

/**
 * Model generator helper.
 *
 * @package    symfony
 * @subpackage generator
 * @author     Fabien Potencier <fabien.potencier@symfony-project.com>
 * @version    SVN: $Id: sfModelGeneratorHelper.class.php 22914 2009-10-10 12:24:29Z Kris.Wallsmith $
 */
abstract class sfModelGeneratorHelper
{
    abstract public function getUrlForAction($action);

    public function linkToNew($params)
    {
        return '<li class="btn btn-default">' . link_to(__($params['label'], array(), 'sf_admin'), '@' . $this->getUrlForAction('new')) . '</li>';
    }

    public function linkToEdit($object, $params)
    {
        return '<li class="list-group-item">' . link_to(__($params['label'], array(), 'sf_admin'), $this->getUrlForAction('edit'), $object) . '</li>';
    }

    public function linkToDelete($object, $params)
    {
        if ($object->isNew()) {
            return '';
        }

        return '<li class="list-group-item">' . link_to(__($params['label'], array(), 'sf_admin'), $this->getUrlForAction('delete'), $object, array('method' => 'delete', 'confirm' => !empty($params['confirm']) ? __($params['confirm'], array(), 'sf_admin') : $params['confirm'])) . '</li>';
    }

    public function linkToList($params)
    {
        return '<li class="list-group-item">' . link_to(__($params['label'], array(), 'sf_admin'), '@' . $this->getUrlForAction('list')) . '</li>';
    }

    public function linkToSave($object, $params)
    {
        return '<li class="list-group-item"><input class="btn btn-primary" type="submit" value="' . __($params['label'], array(), 'sf_admin') . '" /></li>';
    }

    public function linkToSaveAndAdd($object, $params)
    {
        if (!$object->isNew()) {
            return '';
        }

        return '<li class="list-group-item"><input class="btn btn-primary"type="submit" value="' . __($params['label'], array(), 'sf_admin') . '" name="_save_and_add" /></li>';
    }
}
