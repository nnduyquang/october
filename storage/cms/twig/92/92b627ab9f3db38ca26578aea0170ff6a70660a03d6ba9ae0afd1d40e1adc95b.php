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

/* C:\xampp\htdocs\october/plugins/tallpro/related/components/related/default.htm */
class __TwigTemplate_1229ce4b9ef9794b0311c145fd2e23535ef8363cfd57a26d8ec2dfc4be34dd5d extends \Twig\Template
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
        echo "
<ul class=\"related-posts\">
    ";
        // line 3
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["related"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["relate"]) {
            // line 4
            echo "    ";
            $context["image"] = twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["relate"], "featured_images", [], "any", false, false, false, 4), "first", [], "any", false, false, false, 4);
            // line 5
            echo "    <li>
        <a href=\"";
            // line 6
            echo url("/blog", ["seo" => twig_get_attribute($this->env, $this->source, $context["relate"], "slug", [], "any", false, false, false, 6)]);
            echo "\" title=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["relate"], "title", [], "any", false, false, false, 6), "html", null, true);
            echo "\">
            <img src=\"";
            // line 7
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["image"] ?? null), "path", [], "any", false, false, false, 7), "html", null, true);
            echo "\" alt=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["relate"], "title", [], "any", false, false, false, 7), "html", null, true);
            echo "\">
            <h4>";
            // line 8
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, $context["relate"], "title", [], "any", false, false, false, 8), "html", null, true);
            echo "</h4>
        </a>
    </li>
    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['relate'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 12
        echo "</ul>
";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\october/plugins/tallpro/related/components/related/default.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  73 => 12,  63 => 8,  57 => 7,  51 => 6,  48 => 5,  45 => 4,  41 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("
<ul class=\"related-posts\">
    {% for relate in related %}
    {% set image = relate.featured_images.first %}
    <li>
        <a href=\"{{url('/blog', {'seo': relate.slug})}}\" title=\"{{relate.title}}\">
            <img src=\"{{ image.path }}\" alt=\"{{relate.title}}\">
            <h4>{{relate.title}}</h4>
        </a>
    </li>
    {% endfor %}
</ul>
", "C:\\xampp\\htdocs\\october/plugins/tallpro/related/components/related/default.htm", "");
    }
}
