<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="keywords" content="{{ .keywords }}" />
    <meta name="description" content="{{ .description }}" />

    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/highlight.js/9.15.8/styles/solarized-dark.min.css" rel="stylesheet">
    <link href="/assets/css/basic.css" rel="stylesheet">
    <link href="/assets/css/style.css" rel="stylesheet">
    <title>{{.title}}</title>
</head>
<style type="text/css">
    h1,h2,h3 {
        font-size: 22px;
    }
    ul li {
        list-style: none;
    }
</style>
<body style="zoom: 1;">
<!------------------------------left-start---------------------------->

<div class="sidebar">

    <div class="logo-title">
        <div class="title animated fadeInDown">
            <img src="{{ .avatar }}" style="width:127px;border-radius: 50%;">

            <hgroup>
                <h1 class="header-author"><a href="http://chca.me">{{ .title }}</a></h1>
            </hgroup>

            <div class="description animated fadeInDown">
                <p>{{ .subtitle }}</p>
            </div>
        </div>
    </div>
    <ul class="social-links animated fadeInDown">
        <li><a href="{{ .github }}"><i class="fa fa-github"></i></a>
        </li>
        <li><a href="{{ .weibo }}"><i class="fa fa-weibo"></i></a>
        </li>
    </ul>

    <div class="cate-list animated fadeInDown">
        分类：
        {{ range .cate }}

        <span class="cate-title">
                <a href="{{ .Url }}">
                    {{ .Name }}
                </a>&nbsp;
            </span>

        {{ end }}
    </div>

    <div class="footer">
        <!--footer-->

        <span>© Guhao's Blog 2015 - 2020. &nbsp;&nbsp;</span>
        <span>Powered by <a href="https://github.com/ghaoo/chca">CHCA</a>. </span>

    </div>

</div>

<!------------------------------left-end---------------------------->

<div class="main">      <!-----right-start------>

    <div class="page-top animated fadeInDown">
        <div class="nav">
            <li><a href="/">博客首页</a>
            </li>
            <li><a href="/archive">文章归档</a>
            </li>
            <li><a href="/about.html">关于作者</a>
            </li>
        </div>
        <div class="information">
            <div class="back_btn">
            </div>
            <div class="avatar"><img src="{{ .avatar }}">
            </div>
        </div>
    </div>

    <div class="autopagerize_page_element">
        <div class="content">

            {{ template "content" . }}

            <div class="pagination">
                <ul class="clearfix">
                </ul>
            </div>
        </div>
    </div>
</div> <!----right-end---->

<script src="https://cdn.bootcss.com/jquery/2.1.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/twitter-bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://cdn.bootcss.com/highlight.js/9.15.8/highlight.min.js"></script>
<script src="https://cdn.bootcss.com/highlight.js/9.15.8/languages/go.min.js"></script>

<script type="text/javascript">
    $(document).ready(function() {
        $('pre code').each(function(i, block) {
            hljs.highlightBlock(block);
        });
    });
</script>

</body>
</html>
