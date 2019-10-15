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

/* C:\xampp\htdocs\october/themes/olympos/layouts/master.htm */
class __TwigTemplate_74b944776d82610c858e8ebece2416bf08d0d981bceb9c3e14402969ef18e87d extends \Twig\Template
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
        echo "<!DOCTYPE html>
<html>
    <head>
        <meta charset=\"utf-8\">
        <title>October CMS - ";
        // line 5
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 5), "title", [], "any", false, false, false, 5), "html", null, true);
        echo "</title>
        <meta name=\"description\" content=\"";
        // line 6
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 6), "meta_description", [], "any", false, false, false, 6), "html", null, true);
        echo "\">
        <meta name=\"title\" content=\"";
        // line 7
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, false, 7), "meta_title", [], "any", false, false, false, 7), "html", null, true);
        echo "\">
        <meta name=\"author\" content=\"OctoberCMS\">
        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
        <meta name=\"generator\" content=\"OctoberCMS\">
        <link rel=\"icon\" type=\"image/png\" href=\"";
        // line 11
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/october.png");
        echo "\">
        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\"
              integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">
        <script src=\"https://kit.fontawesome.com/20005df3fc.js\" crossorigin=\"anonymous\"></script>
        ";
        // line 15
        echo $this->env->getExtension('Cms\Twig\Extension')->assetsFunction('css');
        echo $this->env->getExtension('Cms\Twig\Extension')->displayBlock('styles');
        // line 16
        echo "    </head>
    <body>

        <!-- Header -->
        <header id=\"layout-header\">
           
        </header>

        <!-- Content -->
        <section id=\"layout-content\">
        <i class=\"fab fa-500px\"></i>
            ";
        // line 27
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFunction();
        // line 28
        echo "        </section>

        <!-- Footer -->
        <footer id=\"layout-footer\">
       
        </footer>

        <!-- Scripts -->
        <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\"
                integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\"
                crossorigin=\"anonymous\"></script>
        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\"
                integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\"
                crossorigin=\"anonymous\"></script>
        <script src=\"";
        // line 42
        echo "assets/js/app.js";
        echo "\"></script>
        ";
        // line 43
        $_minify = System\Classes\CombineAssets::instance()->useMinify;
        if ($_minify) {
            echo '<script src="' . Request::getBasePath() . '/modules/system/assets/js/framework.combined-min.js"></script>'.PHP_EOL;
        }
        else {
            echo '<script src="' . Request::getBasePath() . '/modules/system/assets/js/framework.js"></script>'.PHP_EOL;
            echo '<script src="' . Request::getBasePath() . '/modules/system/assets/js/framework.extras.js"></script>'.PHP_EOL;
        }
        echo '<link rel="stylesheet" property="stylesheet" href="' . Request::getBasePath() .'/modules/system/assets/css/framework.extras'.($_minify ? '-min' : '').'.css">'.PHP_EOL;
        unset($_minify);
        // line 44
        echo "        ";
        echo $this->env->getExtension('Cms\Twig\Extension')->assetsFunction('js');
        echo $this->env->getExtension('Cms\Twig\Extension')->displayBlock('scripts');
        // line 45
        echo "
    </body>
</html>";
    }

    public function getTemplateName()
    {
        return "C:\\xampp\\htdocs\\october/themes/olympos/layouts/master.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  118 => 45,  114 => 44,  103 => 43,  99 => 42,  83 => 28,  81 => 27,  68 => 16,  65 => 15,  58 => 11,  51 => 7,  47 => 6,  43 => 5,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<!DOCTYPE html>
<html>
    <head>
        <meta charset=\"utf-8\">
        <title>October CMS - {{ this.page.title }}</title>
        <meta name=\"description\" content=\"{{ this.page.meta_description }}\">
        <meta name=\"title\" content=\"{{ this.page.meta_title }}\">
        <meta name=\"author\" content=\"OctoberCMS\">
        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
        <meta name=\"generator\" content=\"OctoberCMS\">
        <link rel=\"icon\" type=\"image/png\" href=\"{{ 'assets/images/october.png'|theme }}\">
        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\"
              integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">
        <script src=\"https://kit.fontawesome.com/20005df3fc.js\" crossorigin=\"anonymous\"></script>
        {% styles %}
    </head>
    <body>

        <!-- Header -->
        <header id=\"layout-header\">
           
        </header>

        <!-- Content -->
        <section id=\"layout-content\">
        <i class=\"fab fa-500px\"></i>
            {% page %}
        </section>

        <!-- Footer -->
        <footer id=\"layout-footer\">
       
        </footer>

        <!-- Scripts -->
        <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\"
                integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\"
                crossorigin=\"anonymous\"></script>
        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\"
                integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\"
                crossorigin=\"anonymous\"></script>
        <script src=\"{{ 'assets/js/app.js' }}\"></script>
        {% framework extras %}
        {% scripts %}

    </body>
</html>", "C:\\xampp\\htdocs\\october/themes/olympos/layouts/master.htm", "");
    }
}
