<?php
/**
* Copyright (c) Microsoft Corporation.  All Rights Reserved.  Licensed under the MIT License.  See License in the project root for license information.
* 
* AppHostedMediaConfig File
* PHP version 7
*
* @category  Library
* @package   Microsoft.Graph
* @copyright © Microsoft Corporation. All rights reserved.
* @license   https://opensource.org/licenses/MIT MIT License
* @link      https://graph.microsoft.com
*/
namespace Beta\Microsoft\Graph\Model;
/**
* AppHostedMediaConfig class
*
* @category  Model
* @package   Microsoft.Graph
* @copyright © Microsoft Corporation. All rights reserved.
* @license   https://opensource.org/licenses/MIT MIT License
* @link      https://graph.microsoft.com
*/
class AppHostedMediaConfig extends MediaConfig
{
    /**
    * Set the @odata.type since this type is immediately descended from an abstract
    * type that is referenced as the type in an entity.
    */
    public function __construct()
    {
        $this->setODataType("#microsoft.graph.appHostedMediaConfig");
    }

    /**
    * Gets the blob
    * The media configuration blob generated by smart media agent.
    *
    * @return string The blob
    */
    public function getBlob()
    {
        if (array_key_exists("blob", $this->_propDict)) {
            return $this->_propDict["blob"];
        } else {
            return null;
        }
    }

    /**
    * Sets the blob
    * The media configuration blob generated by smart media agent.
    *
    * @param string $val The value of the blob
    *
    * @return AppHostedMediaConfig
    */
    public function setBlob($val)
    {
        $this->_propDict["blob"] = $val;
        return $this;
    }
}
