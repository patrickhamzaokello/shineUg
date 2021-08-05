<?php
include("includes/includedFiles.php");


if (!isset($_COOKIE['nowsong_id'])) {
    echo "
    <div class='notificationempty'>
    <h5>We use Cookies to Store your Tracks</h5>
    <p>Allow cookies in settings</p>
</div>
    ";

    header("Location:browse");
    return;
}

$mixid = $_COOKIE['nowsong_id'];

$albumSong = new Song($con, $mixid);


$songgenre = $albumSong->getGenre();

if ($songgenre) {
    include("includes/queries/mwonyaamixquery.php");
} else {
?>

    <div>
        <p>Mix not Found. Checkout the Top Trending songs on Mwonyaa Here.
        <p>

        <div class="suggestions" onclick="openPage('weeklytopsongs')">Trending This Week</div>

    </div>

<?php
    exit;
}


?>
<!-- headerends -->
<script>
    $(".lds-facebook").hide();
    $("#mainContent").show();
</script>



<?php if ($mwonyaamixarray) : ?>

    <?php $albumSong = new Song($con, $mixid) ?>
    <?php $albumArtist = $albumSong->getArtist() ?>
    <?php $songAlbum = $albumSong->getAlbum() ?>
    <div class="mixcoverpage">

        <div class="imageandplaybtn">
            <img class="miximagecover" src="<?= $songAlbum->getArtworkPath() ?>" alt="mixpicture">

            <div class="playbuttondiv">
                <div class="mainplaybutton">
                    <a class="icon icon ion-ios-play mainplay" onclick="playFirstSong()"></a>
                </div>
                <div class="mainpausebutton">
                    <a class="icon icon ion-ios-pause mainpause" onclick="pauseSong()"></a>
                </div>
            </div>
        </div>


        <div class="mixdescription">
            <h2 class='trackbasedmix'><?= $albumSong->getTitle() ?> Mix</h2>

            <div class="artistsongmix">
                <p class='artistmix'>With <?= $albumArtist->getName() ?> and more...</p>
                <p>Mwonyaa Stream</p>

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

                    <div class='tracks__heading__number'>#</div>

                    <div class='tracks__heading__title'>Song</div>

                    <div class='tracks__heading__length'>

                        <i class='ion-ios-stopwatch-outline'></i>

                    </div>


                </div>
                
                "; ?>


                    <?php
                    $i = 1;

                    foreach ($mwonyaamixarray as $songid) :
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
                        var tempSongIds = '<?php echo json_encode($mwonyaamixarray); ?>';
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
    No Recommended songs
<?php endif ?>

<script>
    var elmnt = document.getElementById("mainContent");
    elmnt.scrollTop = 0
</script>