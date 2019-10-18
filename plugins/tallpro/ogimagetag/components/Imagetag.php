<?php namespace Tallpro\Ogimagetag\Components;

use Cms\Classes\ComponentBase;
use Tallpro\BlogComments\Models\Settings;
use Cms\Classes\CodeBase;
use RainLab\Blog\Models\Post as Posts;

class Imagetag extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name'        => 'OG image tag Component',
            'description' => 'Get OG:image tag in blog posts'
        ];
    }

    public function onRun()
    {
        $this->page['image'] = $this->getCurrent();
    }

    public function __construct(CodeBase $cmsObject = null, array $properties = [])
    {
        parent::__construct($cmsObject, $properties);
    }


    public function getCurrent(){

        $blog_slug = Settings::get('blog_slug');
        if(!$blog_slug) { $blog_slug = 'blogslug'; }

        if($this->param($blog_slug)){

            $slug = $this->param($blog_slug);
            $post = Posts::where('slug',$slug)->first();

            return $post->featured_images[0]->path;

        }else{
            return null;
        }

    }

    public function defineProperties()
    {
        return [];
    }
}
