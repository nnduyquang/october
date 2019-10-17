<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* C:\xampp\htdocs\october/themes/olympos/partials/header.htm */
class __TwigTemplate_e9c691fe6c91124d2533ca4562d1c90062812726492e99bec6cddae4c167922e extends \Twig\Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        echo "<header class=\"main-header\">
    <div class=\"container clearfix\">
        <h1 class=\"logo\">October Movies</h1>
        <nav class=\"main-nav\">
            <ul>
                <li><a href=\"";
        // line 6
        echo $this->extensions['Cms\Twig\Extension']->pageFilter("trang-chu");
        echo "\">Home</a></li>
                <li><a href=\"";
        // line 7
        echo $this->extensions['Cms\Twig\Extension']->pageFilter("movies");
        echo "\">Movie</a></li>
            </ul>
        </nav>
    </div>
</header>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\october/themes/olympos/partials/header.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  48 => 7,  44 => 6,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<header class=\"main-header\">
    <div class=\"container clearfix\">
        <h1 class=\"logo\">October Movies</h1>
        <nav class=\"main-nav\">
            <ul>
                <li><a href=\"{{'trang-chu'|page}}\">Home</a></li>
                <li><a href=\"{{'movies'|page}}\">Movie</a></li>
            </ul>
        </nav>
    </div>
</header>", "C:\\xampp\\htdocs\\october/themes/olympos/partials/header.htm", "");
    }
}
