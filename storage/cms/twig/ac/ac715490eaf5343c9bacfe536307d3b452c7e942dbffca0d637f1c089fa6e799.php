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

/* C:\xampp\htdocs\october/themes/olympos/pages/trang-chu.htm */
class __TwigTemplate_a23aa5fa766d3ea661ed173d929a0bfe5cf53a142a103d03b624f6a7ee2ae555 extends \Twig\Template
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
        echo "<h1>This is Trang Chủ</h1>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\october/themes/olympos/pages/trang-chu.htm";
    }

    public function getDebugInfo()
    {
        return array (  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<h1>This is Trang Chủ</h1>", "C:\\xampp\\htdocs\\october/themes/olympos/pages/trang-chu.htm", "");
    }
}
