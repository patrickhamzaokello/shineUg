<?php
include("includes/includedFiles.php");


if (isset($_GET['term'])) {
    $term = urldecode($_GET['term']);
} else {
    $term = "";
}

include("includes/queries/searchQuery.php")

?>
<!-- header ends -->

<script>
    $(".spinner img").css("visibility", "hidden");
    $(".lds-facebook").hide();
    $("#mainContent").show();
</script>

<?php if ($term == "") exit(); ?>

<div class="overview__albums">

    <div class="searchinfo">
        <p>Result Order</p>
        <p>Songs - Artists - Podcasts - Poems - DJ Mixes - Albums</p>
    </div>

    <?php if ($songIdArray) : ?>

        <div class="overview__albums__head">
            <span class="section-title">Songs</span>
        </div>
        <div class='album'>

            <div class='album__tracks'>

                <div class='tracks'>

                    <div class='tracks__heading'>

                        <div class='tracks__heading__number'>#</div>

                        <div class='tracks__heading__title'>Song</div>

                        <div class='tracks__heading__length'>

                            <i class='ion-ios-stopwatch-outline'></i>

                        </div>

                        <div class='tracks__heading__popularity'>

                            <i class='ion-thumbsup'></i>

                        </div>

                    </div>

                    <?php


                    $songIdArray = $songIdArray;

                    $i = 1;

                    foreach ($songIdArray as $songId) {

                        $albumSong = new Song($con, $songId);
                        $albumArtist = $albumSong->getArtist();

                    ?>
                        <div class='track'>

                            <div class='track__number'><?= $i ?></div>

                            <div class='track__added'>

                                <i class='ion-play playsong ' onclick='setTrack("<?= $albumSong->getId() ?>",tempPlaylist, true)'></i>

                            </div>

                            <div class='track__added'>

                                <input type='hidden' class='songId' value='<?= $albumSong->getId() ?>'>
                                <input type='hidden' class='artistId' value='<?= $albumArtist->getId() ?>'>


                                <i class='ion-heart' onclick='addSongLiked(this)'></i>

                            </div>

                            <div class='track__title featured'>

                                <span class='title' value="<?= $albumSong->getId() ?>" onclick='openPage("song?id=<?= $albumSong->getId() ?>")'><?= $albumSong->getTitle() ?></span>
                                <span class='feature' value="<?= $albumArtist->getId() ?>" onclick='openPage("artist?id=<?= $albumArtist->getId() ?>")'><?= $albumArtist->getName() ?></span>

                            </div>

                            <div class='track__more'>

                                <input type='hidden' class='songId' value='<?= $albumSong->getId() ?>'>

                                <i class='ion-more' onclick='showOptionsMenu(this)'></i>

                            </div>

                            <div class='track__length'><?= $albumSong->getDuration() ?></div>

                            <div class='track__popularity'>

                                <i class='ion-arrow-graph-up-right'></i>

                            </div>

                        </div>
                    <?php

                        $i = $i + 1;
                    }

                    ?>

                    <script>
                        var tempSongIds = '<?php echo json_encode($songIdArray); ?>';
                        tempPlaylist = JSON.parse(tempSongIds);
                        document.getElementById("mainContent").scrollIntoView({
                            behavior: "smooth",
                            block: "start",
                            inline: "nearest"
                        })
                    </script>

                </div>
            </div>


        </div>


    <?php else :  ?>

        <div class="notificationempty">
            Song not found
        </div>

    <?php endif ?>

    <?php if ($searchartistarray) : ?>

        <div class="overview__albums__head">

            <span class="section-title">Artists</span>

        </div>

        <div class="album">

            <div class="usercollection">

                <?php

                $i = 1;

                foreach ($searchartistarray as $artistid) {

                    $artist = new Artist($con, $artistid); ?>

                    <div class='friend'>

                        <div class='userdiv' onclick='openPage("artist?id=<?= $artist->getId() ?>")'>
                            <img src='<?= $artist->getProfilePath() ?>' alt='' />

                        </div>

                        <p><?= $artist->getName() ?></p>

                    </div>

                <?php
                    $i = $i + 1;
                }

                ?>

            </div>


        </div>

    <?php else :  ?>

        <div class="notificationempty">
            Artists not found
        </div>


    <?php endif ?>

    <?php if ($podcastsearchQueryhArray) : ?>

        <div class="overview__albums__head">
            <span class="section-title">Podcasts</span>
        </div>
        <div class='album'>

            <div class='album__tracks'>

                <div class='tracks'>

                    <div class='tracks__heading'>

                        <div class='tracks__heading__number'>#</div>

                        <div class='tracks__heading__title'>Episode</div>

                        <div class='tracks__heading__length'>

                            <i class='ion-ios-stopwatch-outline'></i>

                        </div>

                        <div class='tracks__heading__popularity'>

                            <i class='ion-thumbsup'></i>

                        </div>

                    </div>

                    <?php


                    $podcastsearchQueryhArray = $podcastsearchQueryhArray;

                    $i = 1;

                    foreach ($podcastsearchQueryhArray as $psongId) {

                        $palbumSong = new Song($con, $psongId);
                        $palbumArtist = $palbumSong->getArtist();

                    ?>

                        <div class='track'>

                            <div class='track__number'><?= $i ?></div>

                            <div class='track__added'>

                                <i class='ion-play playsong ' onclick='setTrack("<?= $palbumSong->getId() ?>",tempPlaylist, true)'></i>

                            </div>

                            <div class='track__added'>

                                <input type='hidden' class='songId' value='<?= $palbumSong->getId() ?>'>
                                <input type='hidden' class='artistId' value='<?= $palbumArtist->getId() ?>"'>


                                <i class='ion-heart' onclick='addSongLiked(this)'></i>

                            </div>

                            <div class='track__title featured'>
                                <span class='title' value="<?= $palbumSong->getId() ?>" onclick='openPage("song?id=<?= $palbumSong->getId() ?>")'><?= $palbumSong->getTitle() ?></span>
                                <span class='feature' value="<?= $palbumArtist->getId() ?>" onclick="openPage('artist?id=<?= $palbumArtist->getId() ?>')"><?= $palbumArtist->getName() ?></span>
                            </div>

                            <div class='track__more'>

                                <input type='hidden' class='songId' value='" . $albumSong->getId() . "'>

                                <i class='ion-more' onclick='showOptionsMenu(this)'></i>

                            </div>

                            <div class='track__length'><?= $palbumSong->getDuration() ?></div>

                            <div class='track__popularity'>

                                <i class='ion-arrow-graph-up-right'></i>

                            </div>

                        </div>
                    <?php

                        $i = $i + 1;
                    }

                    ?>


                </div>
            </div>


        </div>


    <?php else :  ?>

        <div class="notificationempty">
            Podcasts not found
        </div>

    <?php endif ?>

    <?php if ($poemsearchQueryhArray) : ?>

        <div class="overview__albums__head">
            <span class="section-title">Poems</span>
        </div>
        <div class='album'>

            <div class='album__tracks'>

                <div class='tracks'>

                    <div class='tracks__heading'>

                        <div class='tracks__heading__number'>#</div>

                        <div class='tracks__heading__title'>Episode</div>

                        <div class='tracks__heading__length'>

                            <i class='ion-ios-stopwatch-outline'></i>

                        </div>

                        <div class='tracks__heading__popularity'>

                            <i class='ion-thumbsup'></i>

                        </div>

                    </div>

                    <?php


                    $poemsearchQueryhArray = $poemsearchQueryhArray;

                    $i = 1;

                    foreach ($poemsearchQueryhArray as $posongId) {

                        $poalbumSong = new Song($con, $posongId);
                        $poalbumArtist = $poalbumSong->getArtist();

                    ?>

                        <div class='track'>

                            <div class='track__number'><?= $i ?></div>

                            <div class='track__added'>

                                <i class='ion-play playsong ' onclick='setTrack("<?= $poalbumSong->getId() ?>",tempPlaylist, true)'></i>

                            </div>

                            <div class='track__added'>

                                <input type='hidden' class='songId' value='<?= $poalbumSong->getId() ?>'>
                                <input type='hidden' class='artistId' value='<?= $poalbumArtist->getId() ?>"'>


                                <i class='ion-heart' onclick='addSongLiked(this)'></i>

                            </div>

                            <div class='track__title featured'>
                                <span class='title' value="<?= $poalbumSong->getId() ?>" onclick='openPage("song?id=<?= $poalbumSong->getId() ?>")'><?= $poalbumSong->getTitle() ?></span>
                                <span class='feature' value="<?= $poalbumArtist->getId() ?>" onclick="openPage('artist?id=<?= $poalbumArtist->getId() ?>')"><?= $poalbumArtist->getName() ?></span>
                            </div>

                            <div class='track__more'>

                                <input type='hidden' class='songId' value='" . $albumSong->getId() . "'>

                                <i class='ion-more' onclick='showOptionsMenu(this)'></i>

                            </div>

                            <div class='track__length'><?= $poalbumSong->getDuration() ?></div>

                            <div class='track__popularity'>

                                <i class='ion-arrow-graph-up-right'></i>

                            </div>

                        </div>
                    <?php

                        $i = $i + 1;
                    }

                    ?>


                </div>
            </div>


        </div>


    <?php else :  ?>

        <div class="notificationempty">
            Poems not available
        </div>

    <?php endif ?>


    <?php if ($djsearchQueryArray) : ?>

        <div class="overview__albums__head">
            <span class="section-title">DJ Mix Tapes</span>
        </div>
        <div class='album'>

            <div class='album__tracks'>

                <div class='tracks'>

                    <div class='tracks__heading'>

                        <div class='tracks__heading__number'>#</div>

                        <div class='tracks__heading__title'>Episode</div>

                        <div class='tracks__heading__length'>

                            <i class='ion-ios-stopwatch-outline'></i>

                        </div>

                        <div class='tracks__heading__popularity'>

                            <i class='ion-thumbsup'></i>

                        </div>

                    </div>

                    <?php


                    $djsearchQueryArray = $djsearchQueryArray;

                    $i = 1;

                    foreach ($djsearchQueryArray as $djsongId) {

                        $djalbumSong = new Song($con, $djsongId);
                        $djalbumArtist = $djalbumSong->getArtist();

                    ?>

                        <div class='track'>

                            <div class='track__number'><?= $i ?></div>

                            <div class='track__added'>

                                <i class='ion-play playsong ' onclick='setTrack("<?= $djalbumSong->getId() ?>",tempPlaylist, true)'></i>

                            </div>

                            <div class='track__added'>

                                <input type='hidden' class='songId' value='<?= $djalbumSong->getId() ?>'>
                                <input type='hidden' class='artistId' value='<?= $djalbumArtist->getId() ?>"'>


                                <i class='ion-heart' onclick='addSongLiked(this)'></i>

                            </div>

                            <div class='track__title featured'>
                                <span class='title' value="<?= $djalbumSong->getId() ?>" onclick='openPage("song?id=<?= $djalbumSong->getId() ?>")'><?= $djalbumSong->getTitle() ?></span>
                                <span class='feature' value="<?= $djalbumArtist->getId() ?>" onclick="openPage('artist?id=<?= $djalbumArtist->getId() ?>')"><?= $djalbumArtist->getName() ?></span>
                            </div>

                            <div class='track__more'>

                                <input type='hidden' class='songId' value='" . $albumSong->getId() . "'>

                                <i class='ion-more' onclick='showOptionsMenu(this)'></i>

                            </div>

                            <div class='track__length'><?= $djalbumSong->getDuration() ?></div>

                            <div class='track__popularity'>

                                <i class='ion-arrow-graph-up-right'></i>

                            </div>

                        </div>
                    <?php

                        $i = $i + 1;
                    }

                    ?>


                </div>
            </div>


        </div>


    <?php else :  ?>

        <div class="notificationempty">
            DJ Mixtapes not available
        </div>

    <?php endif ?>


    <div class="albumcontainer">
        <?php if ($albumSearchArray) : ?>

            <div class="hs__wrapper">
                <div class="hs__header">
                    <h2 class="hs__headline">Albums
                    </h2>
                    <div class="hs__arrows"><a class="arrow disabled arrow-prev"></a><a class="arrow arrow-next"></a></div>
                </div>

                <ul class="hs">

                    <?php
                    foreach ($albumSearchArray as $albumrow) :

                    ?>

                        <?php
                        $seahalbum = new Album($con, $albumrow);
                        $searchalumartist = $seahalbum->getArtist();
                        ?>


                        <li class="hs__item" role='link' tabindex='0' onclick="openPage('album?id=<?= $albumrow ?>')">
                            <div class="hs__item__image__wrapper">
                                <img class="hs__item__image" src="<?= $seahalbum->getArtworkPath() ?>" alt="" />
                            </div>
                            <div class="hs__item__description"><span class="hs__item__title"><?= $seahalbum->getTitle() ?></span><span class="hs__item__subtitle"><?= $searchalumartist->getName() ?></span></div>
                        </li>


                    <?php endforeach ?>




                </ul>

            </div>

        <?php else :  ?>
            <div class="notificationempty">
                Album not Found
            </div>
        <?php endif ?>

    </div>




    <script>
        // work in progress - needs some refactoring and will drop JQuery i promise :)
        var elmnt = document.getElementById("mainContent");
      
        elmnt.scrollTop = 0

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

</div>

<!-- options menu -->

<nav class="optionsMenu">
    <input type="hidden" class="songId">
    <?php echo Playlist::getPlaylistsDropdown($con, $userLoggedIn->getUsername()); ?>
    <!-- <div class="item">Add to Songs</div> -->
</nav>