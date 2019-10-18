<?php namespace Tallpro\Ogimagetag;

use Backend;
use System\Classes\PluginBase;

/**
 * ogimagetag Plugin Information File
 */
class Plugin extends PluginBase
{

    public $require = ['RainLab.Blog'];

    /**
     * Returns information about this plugin.
     *
     * @return array
     */
    public function pluginDetails()
    {
        return [
            'name'        => 'ogimagetag',
            'description' => 'No description provided yet...',
            'author'      => 'Tallpro',
            'icon'        => 'icon-leaf'
        ];
    }

    /**
     * Register method, called when the plugin is first registered.
     *
     * @return void
     */
    public function register()
    {

    }



    public function registerSettings()
    {
        return [
            'config' => [
                'label'       => 'OG image tag',
                'icon'        => 'icon-comments-o',
                'description' => 'Manage OG image tag Settings.',
                'class'       => 'Tallpro\Ogimagetag\Models\Settings',
                'order'       => 60
            ]
        ];
    }

    /**
     * Boot method, called right before the request route.
     *
     * @return array
     */
    public function boot()
    {

    }

    /**
     * Registers any front-end components implemented in this plugin.
     *
     * @return array
     */
    public function registerComponents()
    {
        return [
            'Tallpro\Ogimagetag\Components\Imagetag' => 'OGimageTag',
        ];
    }

    /**
     * Registers any back-end permissions used by this plugin.
     *
     * @return array
     */
    public function registerPermissions()
    {
        return []; // Remove this line to activate

        return [
            'tallpro.ogimagetag.some_permission' => [
                'tab' => 'ogimagetag',
                'label' => 'Some permission'
            ],
        ];
    }

    /**
     * Registers back-end navigation items for this plugin.
     *
     * @return array
     */
    public function registerNavigation()
    {
        return []; // Remove this line to activate

        return [
            'ogimagetag' => [
                'label'       => 'ogimagetag',
                'url'         => Backend::url('tallpro/ogimagetag/mycontroller'),
                'icon'        => 'icon-leaf',
                'permissions' => ['tallpro.ogimagetag.*'],
                'order'       => 500,
            ],
        ];
    }
}
