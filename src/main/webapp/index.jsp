<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
	
    <title>Welcome ALib</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">    
    <link rel="shortcut icon" href="favicon.ico">  
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,300italic,400italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'> 
    <!-- Global CSS -->
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
    <!-- Plugins CSS -->    
    <link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="assets/plugins/prism/prism.css">
    <!-- Theme CSS -->  
    <link id="theme-style" rel="stylesheet" href="assets/css/styles.css">
   
    <script src="https://unpkg.com/ionicons@4.1.2/dist/ionicons.js"></script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      
    <![endif]-->
</head> 

<body data-spy="scroll">
    
    <!---//Facebook button code-->
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
    
    <!-- ******HEADER****** --> 
    <header id="header" class="header">  
        <div class="container">            
            <h1 class="logo pull-left">
                <a class="scrollto" href="#promo">
                    <span class="logo-title">COSMOPlat PAR</span>
                </a>
            </h1><!--//logo-->              
            <nav id="main-nav" class="main-nav navbar-right" role="navigation">
                <div class="navbar-header">
                    <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button><!--//nav-toggle-->
                </div><!--//navbar-header-->            
                <div class="navbar-collapse collapse" id="navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active nav-item sr-only"><a class="scrollto" href="#promo">主页</a></li>
                        <li class="nav-item"><a class="scrollto" href="#about">简介</a></li>
                        <li class="nav-item"><a class="scrollto" href="#features">特点</a></li>
                        <li class="nav-item"><a class="scrollto" href="#docs">文档</a></li>
                        <li class="nav-item"><a class="scrollto" href="#license">版本</a></li>                        
                        <li class="nav-item last"><a class="scrollto" href="#contact">联系我们</a></li>
                    </ul><!--//nav-->
                </div><!--//navabr-collapse-->
            </nav><!--//main-nav-->
        </div>
    </header><!--//header-->
    
    <!-- ******PROMO****** -->
    <section id="promo" class="promo section offset-header">
        <div class="container text-center">
            <h2 class="title">COSMOPlat<span class="highlight">PAR</span></h2>
            <p class="intro">机器学习算法库，快速生成自己的机器学习模型</p>
            <div class="btns">
                <a class="btn btn-cta-secondary" href="modeling1.jsp" target="_blank">建模</a>
                <a class="btn btn-cta-primary" href="alglibrary.jsp" target="_blank">算法库</a>
            </div>
            <ul class="meta list-inline">
                
            </ul><!--//meta-->
        </div><!--//container-->
        <div class="social-media">
            <div class="social-media-inner container text-center">
                <ul class="list-inline">   
                	<li><a href="https://github.com/bobika/ssm" target="_blank">Github</a></li>
                	<li><a href="#">算法文档</a></li>
                	<li>Created by: <a href="#" target="_blank">青岛大学智能制造研究小组</a> </li>
                </ul>
            </div>
        </div>
    </section><!--//promo-->
    
    <!-- ******ABOUT****** --> 
    <section id="about" class="about section">
        <div class="container">
            <h2 class="title text-center">什么是PAR?</h2>
            <p class="intro text-center">Explain your project in detail. Ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate.</p>
            <div class="row">
                <div class="item col-md-4 col-sm-6 col-xs-12">
                    <div class="icon-holder">
                        <i class="fa fa-heart"></i>
                    </div>
                    <div class="content">
                        <h3 class="sub-title">Designed for developers</h3>
                        <p>Outline a benefit here. Tell users what your plugin/software can do for them. You can change the icon above to any of the 400+ <a href="http://fortawesome.github.io/Font-Awesome/icons/" target="_blank">FontAwesome</a> icons available.</p>
                    </div><!--//content-->
                </div><!--//item-->
                <div class="item col-md-4 col-sm-6 col-xs-12">
                    <div class="icon-holder">
                        <i class="fa fa-clock-o"></i>
                    </div>
                    <div class="content">
                        <h3 class="sub-title">Time saver</h3>
                        <p>Outline a benefit here. Tell users what your plugin/software can do for them. You can change the icon above to any of the 400+ <a href="http://fortawesome.github.io/Font-Awesome/icons/" target="_blank">FontAwesome</a> icons available.</p>
                    </div><!--//content-->
                </div><!--//item-->
                <div class="item col-md-4 col-sm-6 col-xs-12">
                    <div class="icon-holder">
                        <i class="fa fa-crosshairs"></i>
                    </div>
                    <div class="content">
                        <h3 class="sub-title">UX-centred</h3>
                        <p>Outline a benefit here. Tell users what your plugin/software can do for them. You can change the icon above to any of the 400+ <a href="http://fortawesome.github.io/Font-Awesome/icons/" target="_blank">FontAwesome</a> icons available.</p>
                    </div><!--//content-->
                </div><!--//item-->           
                <div class="clearfix visible-md"></div>    
                <div class="item col-md-4 col-sm-6 col-xs-12">
                    <div class="icon-holder">
                        <i class="fa fa-tablet"></i>
                    </div>
                    <div class="content">
                        <h3 class="sub-title">Mobile-friendly</h3>
                        <p>Outline a benefit here. Tell users what your plugin/software can do for them. You can change the icon above to any of the 400+ <a href="http://fortawesome.github.io/Font-Awesome/icons/" target="_blank">FontAwesome</a> icons available.</p>
                    </div><!--//content-->
                </div><!--//item-->                
                <div class="item col-md-4 col-sm-6 col-xs-12">
                    <div class="icon-holder">
                        <i class="fa fa-code"></i>
                    </div>
                    <div class="content">
                        <h3 class="sub-title">Easy to customise</h3>
                        <p>Outline a benefit here. Tell users what your plugin/software can do for them. You can change the icon above to any of the 400+ <a href="http://fortawesome.github.io/Font-Awesome/icons/" target="_blank">FontAwesome</a> icons available.</p>
                    </div><!--//content-->
                </div><!--//item-->
                <div class="item col-md-4 col-sm-6 col-xs-12">
                    <div class="icon-holder">
                        <i class="fa fa-coffee"></i>
                    </div>
                    <div class="content">
                        <h3 class="sub-title">LESS files included</h3>
                        <p>Outline a benefit here. Tell users what your plugin/software can do for them. You can change the icon above to any of the 400+ <a href="http://fortawesome.github.io/Font-Awesome/icons/" target="_blank">FontAwesome</a> icons available.</p>
                    </div><!--//content-->
                </div><!--//item-->               
            </div><!--//row-->            
        </div><!--//container-->
    </section><!--//about-->
    
    <!-- ******FEATURES****** --> 
    <section id="features" class="features section">
        <div class="container text-center">
            <h2 class="title">Features</h2>
            <ul class="feature-list list-unstyled">
                <li><i class="fa fa-check"></i> Fully responsive</li>
                <li><i class="fa fa-check"></i> HTML5 + CSS3</li>
                <li><i class="fa fa-check"></i> Built on <a href="http://getbootstrap.com/" target="_blank">Bootstrap 3.3</a></li>
                <li><i class="fa fa-check"></i> 400+ FontAwesome icons</li>
                <li><i class="fa fa-check"></i> 4 colour schemes</li>
                <li><i class="fa fa-check"></i> LESS files included</li>
                <li><i class="fa fa-check"></i> Compatible with all modern browsers</li>
            </ul>
        </div><!--//container-->
    </section><!--//features-->
    
    <!-- ******DOCS****** --> 
    <section id="docs" class="docs section">
        <div class="container">
            <div class="docs-inner">
            <h2 class="title text-center">Get Started</h2>            
            <div class="block">
                <h3 class="sub-title text-center">HTML</h3>
                <p><a href="http://prismjs.com/" target="_blank">PrismJS</a> is used as the syntax highlighter here.</p>
                <p>Below are the details of the custom PrismJS build used in this template. You can <a href="http://prismjs.com/download.html" target="_blank">build your own version</a> via their website should you need to.</p>
                <ul class="list-unstyled">
                    <li><strong>Compression level:</strong> Minified</li>
                    <li><strong>Theme:</strong> Okaidia</li>
                    <li><strong>Languages:</strong> Markup, CSS, C-like, JavaScript, PHP and Python</li>
                </ul>
                <div class="code-block">
                    <!--//Use Prismjs - http://prismjs.com/index.html#basic-usage -->
                    <pre><code class="language-markup">
    &ltp class="my-style"&gt
      Hello World!
    &lt/p&gt
                     </code></pre>
                </div><!--//code-block-->
            </div><!--//block-->
            
            <div class="block">
                <h3 class="sub-title text-center">CSS</h3>
                <p>Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.</p>
                
                <div class="code-block">
                    <!--//Use Prismjs - http://prismjs.com/index.html#basic-usage -->
                    <pre>
    <code class="language-css">
    /*   
     * Template Name: devAid - Responsive Website Template for developers
     * Version: 1.1
     * Author: Xiaoying Riley at 3rd Wave Media
     * Website: http://themes.3rdwavemedia.com/
     * Twitter: @3rdwave_themes
    */
    body {
      font-family: 'Lato', arial, sans-serif;
      color: #444444;
      font-size: 16px;
      -webkit-font-smoothing: antialiased;
      -moz-osx-font-smoothing: grayscale;
    }
    </code></pre>
                </div><!--//code-block-->
            </div><!--//block-->
            
            <div class="block">
                <h3 class="sub-title text-center">JavaScript</h3>
                <p>Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit ligula eget dolor.</p>
                <div class="code-block">
                    <pre><code class="language-javascript">
    if( awesome ){
        console.log('This is Awesome');
    }else{
        $('body').addClass('give-me-awesome');
    }
                    </code></pre>
                </div><!--//code-block-->
            </div><!--//block-->   
            <div class="block">
                <h3 class="sub-title text-center">Full Documentation</h3>
                <p>If your documentation is very long you can host the full docs page (including FAQ etc) on GitHub and provide a Call to Action button below to direct users there.</p>
                <p class="text-center">
                    <a class="btn btn-cta-primary" href="https://github.com/xriley/devAid-Theme" target="_blank">More on GitHub</a>
                </p>
            </div><!--//block-->
            
            </div><!--//docs-inner-->         
        </div><!--//container-->
    </section><!--//features-->
    
    <!-- ******LICENSE****** --> 
    <section id="license" class="license section">
        <div class="container">
            <div class="license-inner">
            <h2 class="title text-center">License</h2>
                <div class="info">
                    <p>This Bootstrap theme is made by UX designer <a href="https://www.linkedin.com/in/xiaoying" target="_blank">Xiaoying Riley</a> at 3rd Wave Media for developers and is <strong>100% FREE</strong> under the <a href="https://creativecommons.org/licenses/by/3.0/" target="_blank">Creative Commons Attribution 3.0 License (CC BY 3.0)</a></p>
                    <p><strong>[Tip for developers]:</strong> If your project is open source, you might want to put a <a href="https://www.paypal.com/us/cgi-bin/?cmd=_donate-intro-outside" target="_blank">PayPal "Donate" button</a> below so your users can express their gratitude. If your project is commercial, you can put a <a href="https://www.paypal.com/us/cgi-bin/webscr?cmd=_singleitem-intro-outside" target="_blank">PayPal "Buy Now" button</a> instead.</p>
                </div><!--//info-->
                <div class="cta-container">
                    <div class="speech-bubble">                    
                        <p class="intro">If you are feeling generous and want to show your support to Xiaoying, you can buy her a beer or coffee via the PayPal donate button below. :)</p>
                        <div class="icon-holder  text-center"><i class="fa fa-smile-o"></i></div>
                    </div><!--//speech-bubble-->
                    <div class="btn-container  text-center">
                        <!--//You need to generate your own PayPal button - https://www.paypal.com/us/cgi-bin/?cmd=_donate-intro-outside -->         
                        <!--PayPal generated code starts-->
                        <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
                        <input type="hidden" name="cmd" value="_s-xclick">
                        <input type="hidden" name="hosted_button_id" value="Y46LJNXGAVVWW">
                        <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
                        <img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
                        </form>
                        <!--//PayPal generated code ends-->                    
                        
                    </div><!--//btn-container-->
                </div><!--//cta-container-->
            </div><!--//license-inner-->
        </div><!--//container-->
    </section><!--//how-->
    
    <!-- ******CONTACT****** --> 
    <section id="contact" class="contact section has-pattern">
        <div class="container">
            <div class="contact-inner">
                <h2 class="title  text-center">Contact</h2>
                <p class="intro  text-center">I hope you find this Bootstrap template useful. <br />Feel free to get in touch if you have any questions or suggestions.</p>
                <div class="author-message">                      
                    <div class="profile">
                        <img class="img-responsive" src="assets/images/profile.png" alt="" />
                    </div><!--//profile-->
                    <div class="speech-bubble">
                        <h3 class="sub-title">Want to get more freebies in the future?</h3>
                        <p>I tweet about #UX and #webdev related resources/content at <a href="https://twitter.com/3rdwave_themes" target="_blank">@3rdwave_themes</a> 
                        <p>If you like what I do, you can follow me on twitter and I will keep you informed about my next free template there :)</p>
                        <p><strong>[Tip for developers]:</strong> If you take on freelance work you can put a tailored message here about your availability to attract potential clients. Be creative and good luck!</p> 
                        <div class="source">
                            <span class="name"><a href="https://twitter.com/3rdwave_themes" target="_blank">Xiaoying Riley</a></span>
                            <br />
                            <span class="title">UX/UI Designer</span>
                        </div><!--//source-->
                    </div><!--//speech-bubble-->                        
                </div><!--//author-message-->
                <div class="clearfix"></div>
                <div class="info text-center">
                    <h4 class="sub-title">Get Connected</h4>
                    <ul class="social-icons list-inline">
                        <li><a href="https://twitter.com/3rdwave_themes" target="_blank"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="https://www.facebook.com/3rdwavethemes" target="_blank"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="https://www.linkedin.com/in/xiaoying"><i class="fa fa-linkedin"></i></a></li>
                        <li><a href="http://instagram.com/xyriley"><i class="fa fa-instagram"></i></a></li>  
                        <li><a href="https://dribbble.com/Xiaoying"><i class="fa fa-dribbble"></i></a></li>   
                        <li class="last"><a href="mailto:hello@3rdwavemedia.com"><i class="fa fa-envelope"></i></a></li>              
                    </ul>
                </div><!--//info-->
            </div><!--//contact-inner-->
        </div><!--//container-->
    </section><!--//contact-->  
      
    <!-- ******FOOTER****** --> 
    <footer class="footer">
        <div class="container text-center">
            <!--/* This template is released under the Creative Commons Attribution 3.0 License. Please keep the attribution link below when using for your own project. Thank you for your support. :) If you'd like to use the template without the attribution, you can check out other license options via our website: themes.3rdwavemedia.com */-->
            <small class="copyright">Designed with <i class="fa fa-heart"></i> by <a href="http://themes.3rdwavemedia.com" target="_blank">Xiaoying Riley</a> for developers</small>
        </div><!--//container-->
    </footer><!--//footer-->
     
    <!-- Javascript -->          
    <script type="text/javascript" src="assets/plugins/jquery.min.js"></script>   
    <script type="text/javascript" src="assets/plugins/jquery.easing.1.3.js"></script>   
    <script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>     
    <script type="text/javascript" src="assets/plugins/jquery-scrollTo/jquery.scrollTo.min.js"></script> 
    <script type="text/javascript" src="assets/plugins/prism/prism.js"></script>    
    <script type="text/javascript" src="assets/js/main.js"></script>       
<div>欢迎，${user.username }</div>
</body>
</html> 



