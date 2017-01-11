<?php

use yii\widgets\LinkPager;
use yii\bootstrap\Carousel;
use yeesoft\block\models\Block;
use yii\helpers\Html;

/* @var $this yii\web\View */

$this->title = 'Homepage';
?>
    <div class="home-slider">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="/frontend/web/images/slide1.jpeg" alt="...">
                    <div class="carousel-caption hidden-xs">
                        <h1>Analytics sector is the key emerging areas of the future</h1>
                        <p>We at Statroots understands the industry needs and help you gearing up for the future</p>
<!--
                        <button class="">Apply Now</button>
-->
                    </div>
                </div>
                <div class="item">
                    <img src="/frontend/web/images/slide2.jpg" alt="...">
                    <div class="carousel-caption hidden-xs">
                        <h1>At Statroots, you don’t just receive training</h1>
                        <p>Our integrated approach combines Training, Mentoring and Post-training Engagement through best-in- class online platform ever created</p>
<!--
                        <button class="">Apply Now</button>
-->
                    </div>
                </div>
                <div class="item">
                    <img src="/frontend/web/images/slide3.jpg" alt="...">
                    <div class="carousel-caption hidden-xs">
                        <h1>We understand your world</h1>
                        <p>Our vision is to create a talent pool of Data Analytics professionals and enable them to navigate a successful career in tomorrow’s data-driven decision making world</p>
<!--
                        <button class="">Apply Now</button>
-->
                    </div>
                </div>
            </div>
            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="fa fa-angle-left" aria-hidden="true"></span>
                <!-- <span class="sr-only">Previous</span> -->
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="fa fa-angle-right" aria-hidden="true"></span>
                <!-- <span class="sr-only">Next</span> -->
            </a>
        </div>
    </div>
    <!-- Slider end-->
    <div class="aboutsection sectionpadding">
        <div class="container">
            <div class="row">
                <div class="col-sm-3 abouttxt-left">
                    <div class="headingstyle"><span class="db-underline">About Statroots</span></div>
                </div>
                <div class="col-sm-9 abouttxt-right">
                    <p>
                        StatRoots is a young startup company founded by a team of highly experienced and passionate data analytics professionals, providing best-in-class services on Training, Consultancy and Placements. We at StatRoots recognize the need for organizations to have all their decisions supported by data and analytics. We are committed to help organizations in their journey by providing talented pool of trained manpower and by adding value through our consulting services. Our core team brings an average of 25+ years of industry experience in providing data analysis and analytics as a service to custom & retail research and manufacturing domains. We have proficiency in understanding your business needs, handling large volume of data and recommending actionable insights. Our passion on training, people development and knowledge management combined with operations excellence have helped organizations grow exponentially by improving productivity and profitability.

                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="servicesection sectionpadding">
        <div class="container">
            <div class="col-sm-12">
                <div class="headingstyle"><span class="db-underline">Our Services</span></div>
                <div class="row">
                    <div class="col-sm-4">
                        <a href="">
                            <div class="servicebox" onclick="navigateTo('http://google.com')">
                                <div class="serviceimg"> <img class="img-responsive" src="/frontend/web/images/spring1.png">
                                    <!-- <div class="serviceimg-overlay"> <div class="btn btn-primary">VIEW</div> </div> -->
                                </div>
                                <div class="servicedes">
                                    <h4>Analytics Training</h4>
                                    <p>Our training programs is focused on skill enhancement and customized to suit diversed profiles amd education background.  You will develop an ability to understand business problems, identify and analyze data, build models, interpret and recommend actionable insights</p>
                                    <a href="#">
                                        <p class="readmore">Read More...</p>
                                    </a>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-4">
                        <a href="">
                            <div class="servicebox" onclick="navigateTo('http://google.com')">
                                <div class="serviceimg"> <img class="img-responsive" src="/frontend/web/images/spring2.png">
                                    <!-- <div class="serviceimg-overlay"> <div class="btn btn-primary">VIEW</div> </div> -->
                                </div>
                                <div class="servicedes">
                                    <h4>Career Guidance & Placements</h4>
                                    <p>Our highly experienced team has an average experience of 25+ years with the analytics industry and understands the needs of organizations very well. At StatRoots, we provide mentoring as you get trained and develop a customized skillset matrix to help you get placed.</p>
                                    <a href="#">
                                        <p class="readmore">Read More...</p>
                                    </a>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-4">
                        <a href="">
                            <div class="servicebox" onclick="navigateTo('http://google.com')">
                                <div class="serviceimg"> <img class="img-responsive" src="/frontend/web/images/spring3.png">
                                    <!-- <div class="serviceimg-overlay"> <div class="btn btn-primary">VIEW</div> </div> -->
                                </div>
                                <div class="servicedes">
                                    <h4>Consultancy</h4>
                                    <p>Our team at StatRoots has extensive experience in handling hi-volume primary, secondary, syndicated and enterprise data and has proficiency in recommending actionable insights using data analytics for Retail, CPG and Manufacturing domains.</p>
                                    <a href="#">
                                        <p class="readmore">Read More</p>
                                    </a>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="News&eventssection sectionpadding">
        <div class="container">
            <div class="col-sm-12">
                <div class="headingstyle"><span class="db-underline">News & Events</span></div>
                <div class="newsslider">
                    <?php
                    foreach ($events as $event){ ?>
                        <div class="col-sm-4">
                            <a href="">
                                <div class="servicebox">
                                    <div class="serviceimg"> <img class="img-responsive" src="frontend/web/<?php
                                        $event['display_image'] = str_replace("-120x80","",$event['display_image']);
                                        echo $event['display_image']?>">
                                    </div>
                                    <div class="servicedes">
                                        <h4><?php echo $event['title'] ?></h4>
                                        <p><?php echo $event['description'] ?></p>
                                        <a href="/event/view/<?php echo $event['id']?>">
                                            <p class="readmore">Read More</p>
                                        </a>
                                    </div>
                                </div>
                            </a>
                        </div>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>


    <div class="sectionpadding">
        <div  class="parallax-img">
            <div class="container marketing">
                <div class="col-md-8 col-sm-12">
                    <div class="headingstyle"><span class="db-underline">Testimonals</span></div>
                    <div class="multiple-items">
                        <div class="slide-item">
                            <div class="eventbg1 clearfix">
                                <div class="col-md-3 col-sm-3">
                                    <div class="row">
                                        <img class="img-responsive" src="/frontend/web/images/event1.png">
                                    </div>
                                </div>
                                <div class="col-md-9 col-sm-9">
                                    <div class="row">
                                        <div class="evntcont">
                                            <p class="evnt-txt1">The seminar on "Data Analytics" by Ravi, founder at Statroots was very useful to the students. It has created awareness among the students on this emerging area</p>
                                            <!--                                        <p class="evnt-date"><span class="datestyle">Date:</span> April 18, 2016</p>-->
                                            <p class="evnt-txt2">S. V. Narasimha Raju, Head of the Department of Statistics, D.N.R. College, Bhimavaram</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="eventbg2 clearfix">
                                <div class="col-md-3 col-sm-3">
                                    <div class="row">
                                        <img class="img-responsive" src="/frontend/web/images/event2.png">
                                    </div>
                                </div>
                                <div class="col-md-9 col-sm-9">
                                    <div class="row">
                                        <div class="evntcont">
                                            <p class="evnt-txt1">I'm thankful to Statroots for their effort in reaching out to students in rural areas. As a parent, I look forward to their training program to help my children acquiring additional skill on data analytics.</p>
                                            <!--                                        <p class="evnt-date"><span class="datestyle">Date:</span> April 18, 2016</p>-->
                                            <p class="evnt-txt2">P. V. Guru Prasad, LIC of India, Bhimavaram</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="eventbg3 clearfix">
                                <div class="col-md-3 col-sm-3">
                                    <div class="row">
                                        <img class="img-responsive" src="/frontend/web/images/event3.png">
                                    </div>
                                </div>
                                <div class="col-md-9 col-sm-9">
                                    <div class="row">
                                        <div class="evntcont">
                                            <p class="evnt-txt1">The seminar on Data Analytics was very interesting and we are waiting for the training to start in Bhimavaram</p>
                                            <!--                                        <p class="evnt-date"><span class="datestyle">Date:</span> April 18, 2016</p>-->
                                            <p class="evnt-txt2">Amulya, B.Tech CSE, C.R.Reddy college, Eluru</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="slide-item">
                            <div class="eventbg1 clearfix">
                                <div class="col-md-3 col-sm-3">
                                    <div class="row">
                                        <img class="img-responsive" src="/frontend/web/images/event1.png">
                                    </div>
                                </div>
                                <div class="col-md-9 col-sm-9">
                                    <div class="row">
                                        <div class="evntcont">
                                            <p class="evnt-txt1">Statroots has been doing a great job in upskilling the students on the emerging area of analytics and helping them placed in corporate jobs</p>
                                            <!--                                        <p class="evnt-date"><span class="datestyle">Date:</span> April 18, 2016</p>-->
                                            <p class="evnt-txt2">Harish, Sr. Vice President, Market Research, New Delhi</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-md-4 col-sm-12">
                    <div class="headingstyle"><span class="db-underline">Latest Videos</span></div>
                    <!-- <video src="https://youtu.be/6VwketjRan4" width="360" height="352" controls>
                    </video> -->
                    <!-- <video width="360" height="352" controls>
                        <source src="https://youtu.be/6VwketjRan4">
                        Your browser does not support the video tag.
                    </video> -->
                    <!-- <video width="320" height="240" controls src="https://youtu.be/6VwketjRan4">
                        Your browser does not support the video tag.
                    </video> -->
                    <iframe width="360" height="352" src="https://www.youtube.com/embed/XVsLOOqlWCU" frameborder="0" allowfullscreen></iframe>
                    <div class="pull-right pt-20 col-sm-12">
                        <a href="#">
                            <p class="readmore">Read More</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="sectionpartners sectionpadding">
        <div class="container">
            <div class="autoplay">
                <div><a href="#"><img class="img-responsive" src="/frontend/web/images/icon1.png"></a></div>
                <div><a href="#"><img class="img-responsive" src="/frontend/web/images/icon2.png"></a></div>
                <div><a href="#"><img class="img-responsive" src="/frontend/web/images/icon1.png"></a></div>
                <div><a href="#"><img class="img-responsive" src="/frontend/web/images/icon2.png"></a></div>
                <div><a href="#"><img class="img-responsive" src="/frontend/web/images/icon1.png"></a></div>
                <div><a href="#"><img class="img-responsive" src="/frontend/web/images/icon2.png"></a></div>
                <div><a href="#"><img class="img-responsive" src="/frontend/web/images/icon1.png"></a></div>
                <div><a href="#"><img class="img-responsive" src="/frontend/web/images/icon2.png"></a></div>
            </div>
        </div>
    </div>
<?php
$js = <<<JS
        $(".carousel-inner").swiperight(function() {
            $(this).parent().carousel('prev');
        });
        $(".carousel-inner").swipeleft(function() {
            $(this).parent().carousel('next');
        });
        
        $('.newsslider').slick({
            slidesToShow: 3,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 2000,
        });
        
         $('.multiple-items').slick({
            infinite: true,
            slidesToShow: 1,
            slidesToScroll: 1
        });

        $('.autoplay').slick({
            slidesToShow: 6,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 2000,
            responsive: [
                {
                    breakpoint: 1024,
                    settings: {
                        slidesToShow: 5,
                        slidesToScroll: 3,
                        infinite: true,
                        dots: true
                    }
                },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 2
                    }
                },
                {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 1
                    }
                }
                // You can unslick at a given breakpoint now by adding:
                // settings: "unslick"
                // instead of a settings object
            ]
        });
JS;

$this->registerJs($js, \yii\web\View::POS_READY);

?>
