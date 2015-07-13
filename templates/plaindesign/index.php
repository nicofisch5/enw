<?php
defined('_JEXEC') or die('Restricted access');
JHtml::_('behavior.framework', true);

$app             = JFactory::getApplication();
$sitename = $app->get('sitename');
?>
<?php require_once dirname(__FILE__).DIRECTORY_SEPARATOR.'framework/functions.php'; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" >
<head>
<jdoc:include type="head" />
    <link href='http://fonts.googleapis.com/css?family=Chelsea+Market' rel='stylesheet' type='text/css'>
<style type="text/css">
#banner-float { background: <?php echo "$bannerbg"; ?>; color: <?php echo "$bannercolor"; ?>; }
#banner-float a { color: <?php echo "$bannercolor"; ?>; }
#banner-float { padding: <?php if($bannerwidth=="fix") echo "1px 0px"; ?>; }
#banner-inner { <?php if($bannerwidth=="wide") echo "width: 100%; padding: 0px;"; ?> }
</style>
</head>

<body class="<?php echo $this->params->get('fontfamily'); ?>">

    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-64377950-1', 'auto');
        ga('send', 'pageview');

    </script>

    <?php if($this->countModules('topmenu') or $this->countModules('topright')) : ?>
    <div id="top-outer" class="clr">
    <div id="top-float">
    <div id="top-inner">
    <?php if($this->countModules('topmenu')) : ?>
    <div id="topmenu">
    <jdoc:include type="modules" name="topmenu" style="none" />
    </div>
    <?php endif; ?>
    <?php if($this->countModules('topright')) : ?>
    <div id="topright">
    <jdoc:include type="modules" name="topright" style="none" />
    </div>
    <?php endif; ?>
    </div>
    </div>
    </div>
    <?php endif; ?>
    <div id="header-outer" class="clr">
        <div id="header-inner">
            <div id="logo">
                <a href="<?php echo $this->baseurl; ?>/">
                    <img alt="Logo Football Club Niederschaeffolsheim" style="max-width:100%; max-height:120px;" src="<?php echo $this->baseurl  . '/templates/' . $this->template . '/images/logo_fcn.jpg'; ?>" />
                    <img alt="Logo Football Club Weitruch" style="max-width:100%; max-height:120px;" src="<?php echo $this->baseurl  . '/templates/' . $this->template . '/images/logo_fcw.png'; ?>" />
                </a>
            </div>

            <div id="site-title">
                <?php echo htmlspecialchars($sitename); ?>
                <h1>Site de l'entente des clubs de football de Niederschaeffolsheim et Weitbruch</h1>
            </div>

            <?php include dirname(__FILE__).DIRECTORY_SEPARATOR.'framework/toolbar.php'; ?>

        </div>
    </div>
    <?php if($this->countModules('banner')) : ?>
    <div id="banner-outer" class="clr">
    <div id="banner-float">
    <div id="banner-inner">
    <jdoc:include type="modules" name="banner" style="none" />
    </div>
    </div>
    </div>
    <?php endif; ?>
    <div id="body-outer" class="clr">
    <div id="body-float">
    <div id="body-inner">
    <?php if($this->countModules('left')) : ?>
    <div id="left<?php echo $style; ?>">
    <jdoc:include type="modules" name="left" style="xhtml" />
    </div>
    <?php endif; ?>
    <div id="body<?php echo $style; ?>">
    <?php $mClasses = modulesClasses('block1'); if ($this->countModules('user1') or $this->countModules('user2') or $this->countModules('user3')) : ?>
    <div id="user<?php echo $style; ?>" class="clr">
    <div class="<?php echo $user_width; ?>">
    <?php if($this->countModules('user1')) : ?>
    <div class="user <?php echo $mClasses['user1'][0]; ?>">
    <jdoc:include type="modules" name="user1" style="xhtml" />
    </div>
    <?php endif; ?>
    <?php if($this->countModules('user2')) : ?>
    <div class="user <?php echo $mClasses['user2'][0]; ?>">
    <jdoc:include type="modules" name="user2" style="xhtml" />
    </div>
    <?php endif; ?>
    <?php if($this->countModules('user3')) : ?>
    <div class="user <?php echo $mClasses['user3'][0]; ?>">
    <jdoc:include type="modules" name="user3" style="xhtml" />
    </div>
    <?php endif; ?>
    </div>
    </div>
    <?php endif; ?>
    <?php $mClasses = modulesClasses('block2'); if ($this->countModules('user4') or $this->countModules('user5') or $this->countModules('user6')) : ?>
    <div id="user<?php echo $style; ?>" class="clr">
    <div class="<?php echo $user2_width; ?>">
    <?php if($this->countModules('user4')) : ?>
    <div class="user <?php echo $mClasses['user4'][0]; ?>">
    <jdoc:include type="modules" name="user4" style="xhtml" />
    </div>
    <?php endif; ?>
    <?php if($this->countModules('user5')) : ?>
    <div class="user <?php echo $mClasses['user5'][0]; ?>">
    <jdoc:include type="modules" name="user5" style="xhtml" />
    </div>
    <?php endif; ?>
    <?php if($this->countModules('user6')) : ?>
    <div class="user <?php echo $mClasses['user6'][0]; ?>">
    <jdoc:include type="modules" name="user6" style="xhtml" />
    </div>
    <?php endif; ?>
    </div>
    </div>
    <?php endif; ?>
    <div class="clr">
    <div id="layer<?php echo $style; ?>">
    <div id="mainbody" class="clr">
    <jdoc:include type="message" />
    <jdoc:include type="component" />
    </div>
    </div>
    </div>
    <?php $mClasses = modulesClasses('block3'); if ($this->countModules('user7') or $this->countModules('user8') or $this->countModules('user9')) : ?>
    <div id="user<?php echo $style; ?>" class="clr">
    <div class="<?php echo $user3_width; ?>">
    <?php if($this->countModules('user7')) : ?>
    <div class="user <?php echo $mClasses['user7'][0]; ?>">
    <jdoc:include type="modules" name="user7" style="xhtml" />
    </div>
    <?php endif; ?>
    <?php if($this->countModules('user8')) : ?>
    <div class="user <?php echo $mClasses['user8'][0]; ?>">
    <jdoc:include type="modules" name="user8" style="xhtml" />
    </div>
    <?php endif; ?>
    <?php if($this->countModules('user9')) : ?>
    <div class="user <?php echo $mClasses['user9'][0]; ?>">
    <jdoc:include type="modules" name="user9" style="xhtml" />
    </div>
    <?php endif; ?>
    </div>
    </div>
    <?php endif; ?>
    </div>
    <?php if($this->countModules('right')) : ?>
    <div id="right<?php echo $style; ?>">
    <jdoc:include type="modules" name="right" style="xhtml" />
    </div>
    <?php endif; ?>
    </div>
    </div>
    </div>
    <?php $mClasses = modulesClasses('block4'); if ($this->countModules('footer1') or $this->countModules('footer2') or $this->countModules('footer3') or $this->countModules('footer4') or $this->countModules('footer5')) : ?>
    <div id="footer-outer" class="clr">
    <div id="footer-float">
    <div id="footer-inner">
    <div class="<?php echo $footer_width; ?>">
    <?php if($this->countModules('footer1')) : ?>
    <div class="footer <?php echo $mClasses['footer1'][0]; ?>">
    <jdoc:include type="modules" name="footer1" style="xhtml" />
    </div>
    <?php endif; ?>
    <?php if($this->countModules('footer2')) : ?>
    <div class="footer <?php echo $mClasses['footer2'][0]; ?>">
    <jdoc:include type="modules" name="footer2" style="xhtml" />
    </div>
    <?php endif; ?>
    <?php if($this->countModules('footer3')) : ?>
    <div class="footer <?php echo $mClasses['footer3'][0]; ?>">
    <jdoc:include type="modules" name="footer3" style="xhtml" />
    </div>
    <?php endif; ?>
    <?php if($this->countModules('footer4')) : ?>
    <div class="footer <?php echo $mClasses['footer4'][0]; ?>">
    <jdoc:include type="modules" name="footer4" style="xhtml" />
    </div>
    <?php endif; ?>
    <?php if($this->countModules('footer5')) : ?>
    <div class="footer <?php echo $mClasses['footer5'][0]; ?>">
    <jdoc:include type="modules" name="footer5" style="xhtml" />
    </div>
    <?php endif; ?>
    </div>
    </div>
    </div>
    </div>
    <?php endif; ?>
    <?php include dirname(__FILE__).DIRECTORY_SEPARATOR.'framework/copyframe.php'; ?>
</body>
</html>
