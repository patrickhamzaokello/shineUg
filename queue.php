<?php
include("includes/includedFiles.php");


if (!isset($_COOKIE['track_queue'])) {
    echo "
    <div class='notificationempty'>
    <h5>We use Cookies to Store your Tracks</h5>
    <p>Allow cookies in settings</p>
</div>
    ";

    header("Location:browse");
    return;
}

// $tracks = explode(",", $tracks);
$tracks = explode(",", $_COOKIE['track_queue']);

?>
<!-- headerends -->
<script>
    $(".lds-facebook").hide();
    $("#mainContent").show();
</script>


<?php if ($tracks) : ?>

    <?php $albumSong = new Song($con, $tracks[0]) ?>
    <?php $albumArtist = $albumSong->getArtist() ?>
    <?php $songAlbum = $albumSong->getAlbum() ?>
    <div class="mixcoverpage">

        <div class="imageandplaybtn">
            <img id="queueimage" class="miximagecover" src="<?= $songAlbum->getArtworkPath() ?>" alt="mixpicture">

            <div class="playbuttondiv">
                <div class="mainplaybutton">
                    <a class="icon icon ion-ios-play mainplay" onclick="playSong()"></a>
                </div>
                <div class="mainpausebutton">
                    <a class="icon icon ion-ios-pause mainpause" onclick="pauseSong()"></a>
                </div>
            </div>
        </div>


        <div class="mixdescription">
            <h2 class='trackbasedmix'> Current Track Queue</h2>
            <div class="artistsongmix">
                <p class="nowplayinglabel">Now Playing</p>

                <p id="queuesongtitle" class='artistmix'><?= $albumSong->getTitle() ?></p>
                <p id="queuesongArtist" class='artistmixname'><?= $albumArtist->getName() ?></p>

            </div>

        </div>

    </div>

    <div class="overview__albums">



        <div class="album">

            <div class='album__tracks'>

                <div class='tracks'>

                    <?php




                    echo "
                <div class='tracks__heading'>


                    <div style='font-weight:bold'>Next</div>


                </div>
                
                "; ?>


                    <?php
                    $i = 1;

                    // slice the first element off
                    $choptrackhead = array_slice($tracks, 1);

                    foreach ($choptrackhead as $songid) :
                    ?>



                        <?php $albumSong = new Song($con, $songid) ?>
                        <?php $albumArtist = $albumSong->getArtist() ?>
                        <?php $songAlbum = $albumSong->getAlbum() ?>


                        <div class='track'>

                            <div class='track__number'><?= $i ?></div>

                            <div class='track__added'>

                                <i class='ion-play playsong ' onclick='setTrack(<?= $albumSong->getId() ?>,tempPlaylist, true)'></i>

                            </div>

                            <div class='track__added'>

                                <input type='hidden' class='songId' value='<?= $albumSong->getId() ?>'>
                                <input type='hidden' class='artistId' value='<?= $albumArtist->getId() ?>'>


                                <i class='ion-heart' onclick='addSongLiked(this)'></i>

                            </div>

                            <div class='track__title featured'>

                                <span class='title' onclick='setTrack(<?= $albumSong->getId() ?>,tempPlaylist, true)'><?= $albumSong->getTitle() ?></span>
                                <span class='feature' onclick="openPage('artist?id=<?= $albumArtist->getId() ?>')"><?= $albumArtist->getName() ?></span>

                            </div>

                            <div class='track__more'>

                                <input type='hidden' class='songId' value='<?= $albumSong->getId() ?>'>

                                <i class='ion-more' onclick='showOptionsMenu(this)'></i>

                            </div>

                            <div class='track__length'><?= $albumSong->getDuration() ?> </div>



                        </div>



                    <?php
                        $i = $i + 1;
                    endforeach
                    ?>



                    <script>
                        var tempSongIds = '<?php echo json_encode($tracks); ?>';
                        tempPlaylist = JSON.parse(tempSongIds);



                        // $("#mainContent").animate({ scrollTop: 0 }, "fast");
                        document.getElementById("mainContent").scrollIntoView({
                            behavior: "smooth",
                            block: "start",
                            inline: "nearest"
                        })
                    </script>

                </div>

            </div>

        </div>

    </div>

    <!-- options menu -->

    <nav class="optionsMenu">
        <input type="hidden" class="songId">
        <?php echo Playlist::getPlaylistsDropdown($con, $userLoggedIn->getUsername()); ?>
    </nav>

<?php else :  ?>
    Queue is empty songs
<?php endif ?>

<script>
    var elmnt = document.getElementById("mainContent");
    elmnt.scrollTop = 0

    $("input[value=" + currentPlaylist[currentIndex] + "]")
        .parent()
        .parent()
        .addClass("pkkkk");
    $(".pkkkk").css("border-left", "none");
    $(".pkkkk").css("background", "none");

    if (
        $("input[value=" + currentPlaylist[currentIndex] + "]")
        .parent()
        .parent()
        .hasClass("pkkkk")
    ) {
        $(".track").removeClass("pkkkk");
        $("input[value=" + currentPlaylist[currentIndex] + "]")
            .parent()
            .parent()
            .addClass("pkkkk");
        $(".pkkkk").css("border-left", "2px solid yellow");
        $(".pkkkk").css("background", "#2c093a");
    } else {
        $(".pkkkk").css("border-left", "none");
        $(".pkkkk").css("background", "none");

        $(".track").removeClass("pkkkk");
    }
</script>