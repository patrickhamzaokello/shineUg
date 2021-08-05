<?php
include("includes/includedFiles.php");

if (isset($_GET['id'])) {
    $songid =  $_GET['id'];
    $song = new Song($con, $songid);
    $artist = $song->getArtist();
    $songalbum = $song->getAlbum();
    $songgenre = $song->getGenrelink();

    $songartistid = $artist->getId();
    $songGenreid = $song->getGenre();

    include("includes/queries/songviewquery.php");
} else {

    echo "
    <div class='notificationempty'>
    Song Not found
</div>
    ";
    exit;
}

$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";

$urlquery = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
$twitterusername = "@MwonyaaStream";


// $formated_songtitle = str_replace("&"," and ",$song->getTitle());
// $formated_songartist = str_replace("&"," and ",$artist->getName());

$formated_songtitle = preg_replace("/[^A-Za-z0-9 ]/", '', $song->getTitle());
$formated_songartist = preg_replace("/[^A-Za-z0-9 ]/", '', $artist->getName());


?>
<!-- headerends -->
<script>
    $(".lds-facebook").hide();
    $("#mainContent").show();
</script>

<div class="overview__albums">

    <div class="overview__albums__head">
        <span class="section-title">Song Details</span>
    </div>

    <?php if ($song->getTitle() != null) : ?>
        <div class="songviewlayout">
            <div class="songviewartwork">
                <img class="songviewimage" src="<?= $songalbum->getArtworkPath() ?>" alt="Album Path">
                <div class="songplaybuttondiv">
                    <div class="mainplaybutton">
                        <a class="icon icon ion-ios-play mainplay" onclick='setTrack("<?= $song->getId() ?>",tempPlaylist, true)'></a>
                    </div>
                    <div class="mainpausebutton">
                        <a class="icon icon ion-ios-pause mainpause" onclick="pauseSong()"></a>
                    </div>
                </div>
            </div>
            <div class="songviewdetails">
                <p><?= $song->getTitle() ?></p>
                <p><?= $artist->getName() ?></p>

                <div class="songviewdescription">
                    <p><span>Duration</span> <?= $song->getDuration() ?></p>
                    <p><span>Genre</span> <?= $songgenre->getGenre() ?></p>
                    <p><span>Plays</span> <?= $song->getPlays() ?></p>
                    <p><span>Weekly Plays </span> <?= $song->getWeeklyplays() ?></p>
                </div>

                <div class="songviewshareaction">

                    <button id="songcopybutton" class="sbutton" value="ok" onclick="sharebutton('<?= $urlquery ?>')">
                        Copy Link
                    </button>

                    <a class="twt" href="https://twitter.com/share?url=<?= $urlquery ?>%0A&text=Listen to <?= $formated_songtitle ?> by <?= $formated_songartist ?> on Mwonyaa Stream. Click the link below to Stream Content Created by <?= $formated_songartist ?> now.%0A&hashtags=mwonyaateam <?= $twitterusername ?> ,ugandanstreamingplatform%0A" onclick="javascript:(isRegistered != 'registered') ? showPreviewDialog() : window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;" target="_blank" title="Share on Twitter"> <button class="sbutton songtwitter" value="ok">
                            Twitter
                        </button></a>

                    <a class="wht" href="whatsapp://send?text=Listen to <?= $formated_songtitle ?> by <?= $formated_songartist ?> on Mwonyaa Stream. Click the link below to Stream Content Created by <?= $formated_songartist ?> now. <?= $urlquery ?>" data-action="share/whatsapp/share" onClick="javascript:(isRegistered != 'registered') ? showPreviewDialog() : window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;" target="_blank" title="Share on whatsapp"> <button class="sbutton songwhatsapp" value="ok">
                            WhatsApp
                        </button></a>
                </div>

            </div>
        </div>



    <?php else :  ?>

        <div class="notificationempty">
            Song with Query not found
        </div>

    <?php endif ?>


    <?php if ($songIdArray) : ?>

        <div class="overview__albums__head">
            <span class="section-title">Most Listened to From: <?= $artist->getName() ?></span>
        </div>
        <div class='album'>

            <div class='album__tracks'>

                <div class='tracks'>

                    <div class='tracks__heading'>

                        <div class='tracks__heading__number'>#</div>

                        <div class='tracks__heading__title'>Title</div>

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

                                <span class='title' value="<?= $albumSong->getId() ?>" onclick='setTrack("<?= $albumSong->getId() ?>",tempPlaylist, true)'><?= $albumSong->getTitle() ?></span>
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
            Most Streamed songs based on Search not Found
        </div>

    <?php endif ?>


    <?php if ($similarSongarray) : ?>

        <div class="overview__albums__head">
            <span class="section-title">Recommended Tracks</span>
        </div>
        <div class='album'>

            <div class='album__tracks'>

                <div class='tracks'>

                    <div class='tracks__heading'>

                        <div class='tracks__heading__number'>#</div>

                        <div class='tracks__heading__title'>Title</div>

                        <div class='tracks__heading__length'>

                            <i class='ion-ios-stopwatch-outline'></i>

                        </div>

                        <div class='tracks__heading__popularity'>

                            <i class='ion-thumbsup'></i>

                        </div>

                    </div>

                    <?php


                    $similarSongarray = $similarSongarray;

                    $i = 1;

                    foreach ($similarSongarray as $ssongId) {

                        $albumSong = new Song($con, $ssongId);
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

                                <span class='title' value="<?= $albumSong->getId() ?>" onclick='setTrack("<?= $albumSong->getId() ?>",tempPlaylist, true)'><?= $albumSong->getTitle() ?></span>
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


                </div>
            </div>


        </div>

    <?php else :  ?>

        <div class="notificationempty">
            Recommended Songs not Found
        </div>

    <?php endif ?>







</div>

<nav class="optionsMenu">
    <input type="hidden" class="songId">
    <?php echo Playlist::getPlaylistsDropdown($con, $userLoggedIn->getUsername()); ?>
</nav>


<script>
    var elmnt = document.getElementById("mainContent");
  
    elmnt.scrollTop = 0
</script>