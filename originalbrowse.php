<?php

include("includes/includedFiles.php");
include("includes/queries/browsequery.php");



if (!isset($_SESSION['userLoggedIn'])) {
    // not logged in
    header('Location: register');
    return;
}




?>

<script>
    albumnavitem();
    $(".lds-facebook").hide();
    $("#mainContent").show();
</script>

<!-- headerends -->

<div class="overview__albums">

    <div class="overview__albums__head">
        <h2 class="pageHeadingBig">HandPicked Playlist Made For You</h2>
    </div>
    <?php if ($publicplaylistsarray) : ?>


        <div class="album">

            <ul class='albumlisting'>
                <?php
                foreach ($publicplaylistsarray as $row) :
                ?>

                    <?php $playlist = new Playlist($con, $row) ?>

                    <li class='albumlist' role='link' tabindex='0' onclick='openPage("playlist?id=<?= $playlist->getId() ?>")'>

                        <img class='image' src='<?= $row['coverurl'] ?>'>

                        <div class='albumlistinfo'><?= $playlist->getName() ?></div>

                    </li>

                <?php endforeach ?>

            </ul>

        </div>

    <?php else :  ?>
        Working on Playlist Curated for You
    <?php endif ?>
</div>



<div class="overview__albums">


    <?php

    $userLoggedIn = new User($con, $username);
    $username = $userLoggedIn->getUsername();
    $userId = $userLoggedIn->getUserId();

    ?>


    <div class='overview__albums__head'>

        <h2 class='pageHeadingBig'>Listening History for - <?= $username ?> </h2>

    </div>

    <div class='album'>


        <ul class='albumlisting'>


            <li class='albumlist scale-in-center' role='link' tabindex='0' onclick='openPage("recentlyplayed?id=<?= $userId ?>")'>


                <img src='assets/images/createdplaylist/recentlyplayed.png' />


                <div class='albumlistinfo'>

                    <span class='chartSongName'>Recently Played Songs</span>

                </div>


            </li>

            <li class='albumlist scale-in-center' role='link' tabindex='0' onclick='openPage("mostplayedsongs?id=<?= $userId ?>")'>


                <img src='assets/images/createdplaylist/mostplayed.png' />


                <div class='albumlistinfo'>

                    <span class='chartSongName'>Most Played</span>


                </div>



            </li>




            <li class='albumlist scale-in-center' role='link' tabindex='0' onclick='openPage("weeklytopsongs?id=<?= $userId ?>")'>


                <img src='assets/images/createdplaylist/weekly.png' />


                <div class='albumlistinfo'>

                    <span class='chartSongName'>Weekly Top Songs</span>


                </div>

            </li>

            <li class='albumlist scale-in-center' role='link' tabindex='0' onclick='openPage("recommendations?id=<?= $userId ?>")'>


                <img src='assets/images/createdplaylist/recommended.png' />


                <div class='albumlistinfo'>

                    <span class='chartSongName'>Recommended Songs</span>


                </div>

            </li>
        </ul>




    </div>


    <div class="albumcontainer">
        <div class="hs__wrapper">
            <div class="hs__header">
                <h2 class="hs__headline">Recently Added Albums
                </h2>
                <div class="hs__arrows"><a class="arrow disabled arrow-prev"></a><a class="arrow arrow-next"></a></div>
            </div>
            <?php if ($albumsarray) : ?>

                <ul class="hs">

                    <?php
                    foreach ($albumsarray as $row) :

                    ?>

                        <?php
                        $album = new Album($con, $row['id']);
                        $artist = $album->getArtist();
                        ?>


                        <li class="hs__item" role='link' tabindex='0' onclick="openPage('album?id=<?= $row['id'] ?>')">
                            <div class="hs__item__image__wrapper">
                                <img class="hs__item__image" src="<?= $row['artworkPath'] ?>" alt="" />
                            </div>
                            <div class="hs__item__description"><span class="hs__item__title"><?= $row['title'] ?></span><span class="hs__item__subtitle"><?= $artist->getName() ?></span></div>
                        </li>


                    <?php endforeach ?>




                </ul>




            <?php else :  ?>
                Working on Getting Music Albums Curated for You
            <?php endif ?>


        </div>
        <div class="hs__wrapper">
            <div class="hs__header">
                <h2 class="hs__headline">Recently Added Podcasts
                </h2>
                <div class="hs__arrows"><a class="arrow disabled arrow-prev"></a><a class="arrow arrow-next"></a></div>
            </div>

            <?php if ($albumsarray) : ?>

                <ul class="hs">

                    <?php
                    foreach ($albumsarray as $row) :

                    ?>

                        <?php
                        $album = new Album($con, $row['id']);
                        $artist = $album->getArtist();
                        ?>


                        <li class="hs__item" role='link' tabindex='0' onclick="openPage('album?id=<?= $row['id'] ?>')">
                            <div class="hs__item__image__wrapper">
                                <img class="hs__item__image" src="<?= $row['artworkPath'] ?>" alt="" />
                            </div>
                            <div class="hs__item__description"><span class="hs__item__title"><?= $row['title'] ?></span><span class="hs__item__subtitle"><?= $artist->getName() ?></span></div>
                        </li>


                    <?php endforeach ?>




                </ul>




            <?php else :  ?>
                Working on Getting Music Albums Curated for You
            <?php endif ?>

        </div>
        <div class="hs__wrapper">
            <div class="hs__header">
                <h2 class="hs__headline">Headline3
                </h2>
                <div class="hs__arrows"><a class="arrow disabled arrow-prev"></a><a class="arrow arrow-next"></a></div>
            </div>
            <?php if ($albumsarray) : ?>

                <ul class="hs">

                    <?php
                    foreach ($albumsarray as $row) :

                    ?>

                        <?php
                        $album = new Album($con, $row['id']);
                        $artist = $album->getArtist();
                        ?>


                        <li class="hs__item" role='link' tabindex='0' onclick="openPage('album?id=<?= $row['id'] ?>')">
                            <div class="hs__item__image__wrapper">
                                <img class="hs__item__image" src="<?= $row['artworkPath'] ?>" alt="" />
                            </div>
                            <div class="hs__item__description"><span class="hs__item__title"><?= $row['title'] ?></span><span class="hs__item__subtitle"><?= $artist->getName() ?></span></div>
                        </li>


                    <?php endforeach ?>



                </ul>




            <?php else :  ?>
                Working on Getting Music Albums Curated for You
            <?php endif ?>
        </div>
    </div>



    <script>
        // work in progress - needs some refactoring and will drop JQuery i promise :)
        var instance = $(".hs__wrapper");
        $.each(instance, function(key, value) {

            var arrows = $(instance[key]).find(".arrow"),
                prevArrow = arrows.filter('.arrow-prev'),
                nextArrow = arrows.filter('.arrow-next'),
                box = $(instance[key]).find(".hs"),
                x = 0,
                mx = 0,
                maxScrollWidth = box[0].scrollWidth - (box[0].clientWidth / 2) - (box.width() / 2);

            $(arrows).on('click', function() {

                if ($(this).hasClass("arrow-next")) {
                    x = ((box.width() / 2)) + box.scrollLeft() - 10;
                    box.animate({
                        scrollLeft: x,
                    })
                } else {
                    x = ((box.width() / 2)) - box.scrollLeft() - 10;
                    box.animate({
                        scrollLeft: -x,
                    })
                }

            });

            $(box).on({
                mousemove: function(e) {
                    var mx2 = e.pageX - this.offsetLeft;
                    if (mx) this.scrollLeft = this.sx + mx - mx2;
                },
                mousedown: function(e) {
                    this.sx = this.scrollLeft;
                    mx = e.pageX - this.offsetLeft;
                },
                scroll: function() {
                    toggleArrows();
                }
            });

            $(document).on("mouseup", function() {
                mx = 0;
            });

            function toggleArrows() {
                if (box.scrollLeft() > maxScrollWidth - 10) {
                    // disable next button when right end has reached 
                    nextArrow.addClass('disabled');
                } else if (box.scrollLeft() < 10) {
                    // disable prev button when left end has reached 
                    prevArrow.addClass('disabled')
                } else {
                    // both are enabled
                    nextArrow.removeClass('disabled');
                    prevArrow.removeClass('disabled');
                }
            }

        });
    </script>



    <div class="overview__albums__head">

        <h2 class="pageHeadingBig">Recently Added Albums</h2>

    </div>

    <div class="album">

        <?php if ($albumsarray) : ?>

            <ul class="albumlisting">


                <?php
                foreach ($albumsarray as $row) :

                ?>

                    <li class='albumlist'>

                        <span role='link' tabindex='0' onclick="openPage('album?id=<?= $row['id'] ?>')">

                            <img loading='lazy' class='image' src="<?= $row['artworkPath'] ?>">

                            <div class='albumlistinfo'><?= $row['title'] ?></div>
                        </span>

                    </li>

                <?php endforeach ?>



            </ul>

        <?php else :  ?>
            Working on Getting Music Albums Curated for You
        <?php endif ?>

    </div>

    <div class=" overview__albums__head" id="podcastsection">

        <h2 class="pageHeadingBig">Podcasts</h2>



    </div>

    <div class="album">


        <?php if ($podcastsarray) : ?>

            <ul class="albumlisting">


                <?php
                foreach ($podcastsarray as $row) :

                ?>

                    <li class='albumlist'>

                        <span role='link' tabindex='0' onclick="openPage('mediacollection?id=<?= $row['id'] ?>')">

                            <img loading='lazy' class='image' src="<?= $row['artworkPath'] ?>">

                            <div class='albumlistinfo'><?= $row['title'] ?></div>
                        </span>

                    </li>

                <?php endforeach ?>



            </ul>

        <?php else :  ?>
            Working on Getting Podcasts Curated for You
        <?php endif ?>

    </div>


    <div class="overview__albums__head">

        <h2 class="pageHeadingBig">Poems</h2>



    </div>

    <div class="album">

        <?php if ($poemsarray) : ?>

            <ul class="albumlisting">


                <?php
                foreach ($poemsarray as $row) :

                ?>

                    <li class='albumlist'>

                        <span role='link' tabindex='0' onclick="openPage('mediacollection?id=<?= $row['id'] ?>')">

                            <img loading='lazy' class='image' src="<?= $row['artworkPath'] ?>">

                            <div class='albumlistinfo'><?= $row['title'] ?></div>
                        </span>

                    </li>

                <?php endforeach ?>



            </ul>

        <?php else :  ?>
            Working on Getting Poems Collection Curated for You
        <?php endif ?>

    </div>






    <div class="overview__albums__head">

        <h2 class="pageHeadingBig">DJ Mixes</h2>



    </div>

    <div class="album">


        <?php if ($djmixesarray) : ?>

            <ul class="albumlisting">


                <?php
                foreach ($djmixesarray as $row) :

                ?>

                    <li class='albumlist'>

                        <span role='link' tabindex='0' onclick="openPage('mediacollection?id=<?= $row['id'] ?>')">

                            <img loading='lazy' class='image' src="<?= $row['artworkPath'] ?>">

                            <div class='albumlistinfo'><?= $row['title'] ?></div>
                        </span>

                    </li>

                <?php endforeach ?>



            </ul>

        <?php else :  ?>
            Working on Getting DJ Mixes Curated for You
        <?php endif ?>

    </div>



</div>