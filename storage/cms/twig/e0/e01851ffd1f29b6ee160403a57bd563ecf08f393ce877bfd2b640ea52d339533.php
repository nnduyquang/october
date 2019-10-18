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

/* C:\xampp\htdocs\october/plugins/suresoftware/powerseo/components/blogpost/default.htm */
class __TwigTemplate_89b5d3e31c9947357219f0586a2c7f5710da279098ea1e55b74b1e3e38819c3b extends \Twig\Template
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
        echo $this->env->getExtension('Cms\Twig\Extension')->startBlock('meta'        );
        // line 2
        echo "    ";
        echo '<!-- X_OCTOBER_DEFAULT_BLOCK_CONTENT -->';
        // line 3
        echo "    ";
        if (twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "powerseo_redirect_url", [], "any", false, false, false, 3)) {
            // line 4
            echo "        <meta http-equiv=\"refresh\" content=\"0; url=";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "powerseo_redirect_url", [], "any", false, false, false, 4), "html", null, true);
            echo "\" />
    ";
        }
        // line 6
        echo "
    ";
        // line 7
        if (twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "powerseo_title", [], "any", false, false, false, 7)) {
            // line 8
            echo "        <title>";
            echo call_user_func_array($this->env->getFilter('generateTitle')->getCallable(), [twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "powerseo_title", [], "any", false, false, false, 8)]);
            echo "</title>
    ";
        } else {
            // line 10
            echo "        <title>";
            echo call_user_func_array($this->env->getFilter('generateTitle')->getCallable(), [twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "title", [], "any", false, false, false, 10)]);
            echo "</title>
    ";
        }
        // line 12
        echo "
    ";
        // line 13
        if (twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "powerseo_description", [], "any", false, false, false, 13)) {
            // line 14
            echo "        <meta name=\"description\" content=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "powerseo_description", [], "any", false, false, false, 14), "html", null, true);
            echo "\">
    ";
        }
        // line 16
        echo "
    ";
        // line 17
        if (twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "powerseo_keywords", [], "any", false, false, false, 17)) {
            // line 18
            echo "        <meta name=\"keywords\" content=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "powerseo_keywords", [], "any", false, false, false, 18), "html", null, true);
            echo "\">
    ";
        }
        // line 20
        echo "
    ";
        // line 21
        if (twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "powerseo_canonical_url", [], "any", false, false, false, 21)) {
            // line 22
            echo "        <link rel=\"canonical\" href=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "powerseo_canonical_url", [], "any", false, false, false, 22), "html", null, true);
            echo "\" />
    ";
        } else {
            // line 24
            echo "        ";
            echo call_user_func_array($this->env->getFilter('generateCanonicalUrl')->getCallable(), [""]);
            echo "
    ";
        }
        // line 26
        echo "
    <meta name=\"robots\" content=\"";
        // line 27
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "powerseo_robot_index", [], "any", false, false, false, 27), "html", null, true);
        echo ",";
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["post"] ?? null), "powerseo_robot_follow", [], "any", false, false, false, 27), "html", null, true);
        echo "\">

    ";
        // line 29
        echo call_user_func_array($this->env->getFilter('otherMetaTags')->getCallable(), [""]);
        echo "

    ";
        // line 31
        echo call_user_func_array($this->env->getFilter('generateOgTags')->getCallable(), [($context["post"] ?? null)]);
        echo "
";
        // line 1
        echo $this->env->getExtension('Cms\Twig\Extension')->endBlock(true        );
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\october/plugins/suresoftware/powerseo/components/blogpost/default.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  126 => 1,  122 => 31,  117 => 29,  110 => 27,  107 => 26,  101 => 24,  95 => 22,  93 => 21,  90 => 20,  84 => 18,  82 => 17,  79 => 16,  73 => 14,  71 => 13,  68 => 12,  62 => 10,  56 => 8,  54 => 7,  51 => 6,  45 => 4,  42 => 3,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% put meta %}
    {% default %}
    {% if post.powerseo_redirect_url %}
        <meta http-equiv=\"refresh\" content=\"0; url={{post.powerseo_redirect_url}}\" />
    {% endif %}

    {% if post.powerseo_title %}
        <title>{{ post.powerseo_title | generateTitle}}</title>
    {% else %}
        <title>{{ post.title | generateTitle }}</title>
    {% endif %}

    {% if post.powerseo_description %}
        <meta name=\"description\" content=\"{{post.powerseo_description}}\">
    {% endif %}

    {% if post.powerseo_keywords %}
        <meta name=\"keywords\" content=\"{{post.powerseo_keywords}}\">
    {% endif %}

    {% if post.powerseo_canonical_url %}
        <link rel=\"canonical\" href=\"{{post.powerseo_canonical_url}}\" />
    {% else %}
        {{ '' | generateCanonicalUrl}}
    {% endif %}

    <meta name=\"robots\" content=\"{{post.powerseo_robot_index}},{{post.powerseo_robot_follow}}\">

    {{ ''|otherMetaTags|raw }}

    {{ post|generateOgTags }}
{% endput %}
", "C:\\xampp\\htdocs\\october/plugins/suresoftware/powerseo/components/blogpost/default.htm", "");
    }
}
