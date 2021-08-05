<?php
include("includes/includedFiles.php");

if (isset($_GET['id'])) {
    $albumId =  $_GET['id'];
} else {
    header("Location:browse");
}


$album = new Album($con, $albumId);
$artist = $album->getArtist();

?>
<!-- headerends -->
<script>
    $(".lds-facebook").hide();
    $("#mainContent").show();
</script>

<div class="overview__albums">

    <div class="overview__albums__head">

        <span class="section-title">Album</span>

        <!-- <a href="download.php?file=assets/music/Jay-Z, Kanye West - Illest Motherf  ker Alive (Album Version.mp3"
            target="_new">Download File</a> -->



    </div>

    <?php if ($album->getSongIds()) : ?>


        <div class="entityInfo">
            <div class="leftSection">
                <img src="<?php echo $album->getArtworkPath(); ?>">
            </div>

            <div class="rightSection">
                <h2><?php echo $album->getTitle(); ?></h2>

                <p>ARTIST: <?php echo $artist->getName(); ?></p>

                <p> <?php echo $album->getNumberOfSongs(); ?> Songs</p>
                <div class='buttonsgroup'>

                    <button class="button-dark" onclick="playFirstSong()">
                        <i class="ion-ios-play"></i>
                        Play All
                    </button>


                    <div class="figure" tabindex="-1">
                        <div class='button-light editplaylistmore'>
                            <i class='ion-ios-more'></i>
                        </div>

                        <nav class="menucontext">
                            <ul class='actioncollection'>
                                <li class='separator'>Share Playlist</li>
                                <li class='actionitem'>Twitter</li>
                                <li class='actionitem'>Whatsapp</li>
                                <li class='actionitem'>Facebook</li>
                                <li class='actionitem'>Copy Link</li>
                            </ul>
                        </nav>
                    </div>

                </div>


            </div>
        </div>


        <div class="album">

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


                    $songIdArray = $album->getSongIds();

                    $i = 1;

                    foreach ($songIdArray as $songId) {

                        $albumSong = new Song($con, $songId);
                        $albumArtist = $albumSong->getArtist();

                        echo "
                                <div class='track'>

                                  <div class='track__number'>$i</div>
        
                                  <div class='track__added'>
        
                                    <i class='ion-play playsong ' onclick='setTrack(\"" . $albumSong->getId() . "\",tempPlaylist, true)'></i>

                                  </div>

                                  <div class='track__added'>

                                    <input type='hidden' class='songId' value='" . $albumSong->getId() . "'>
                                    <input type='hidden' class='artistId' value='" . $albumArtist->getId() . "'>


                                    <i class='ion-heart' onclick='addSongLiked(this)'></i>
       
                                  </div>
        
                                  <div class='track__title featured' >
                                    <span class='title' value=\"" . $albumSong->getId() . "\" onclick='setTrack(\"" . $albumSong->getId() . "\",tempPlaylist, true)'>" . $albumSong->getTitle() . "</span>
                                    <span class='feature' value=\"" . $albumArtist->getId() . "\">" . $albumArtist->getName() . "</span>
                                  </div>
        
                                  <div class='track__more'>

                                     <input type='hidden' class='songId' value='" . $albumSong->getId() . "'>
          
                                    <i class='ion-more' onclick='showOptionsMenu(this)'></i>
          
                                  </div>
                                
                                  <div class='track__length'>" . $albumSong->getDuration() . "</div>
                                  
                                  <div class='track__popularity'>
                                  
                                    <i class='ion-arrow-graph-up-right'></i>
                                    
                                  </div>
        
                                </div> ";

                        $i = $i + 1;
                    }

                    ?>

                    <script>
                        var tempSongIds = '<?php echo json_encode($songIdArray); ?>';
                        tempPlaylist = JSON.parse(tempSongIds);

                        $(".track__title .feature").attr("onclick",
                            "openPage('artist?id=<?php echo $albumArtist->getId() ?>')");


                        var elmnt = document.getElementById("mainContent");
                        elmnt.scrollTop = 0;



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


                </div>

            </div>

        </div>


    <?php else :  ?>
        Media Content is Empty, Check Back soon when the Artist has uploaded Content
    <?php endif ?>

</div>

<!-- options menu -->

<nav class="optionsMenu">
    <input type="hidden" class="songId">
    <?php echo Playlist::getPlaylistsDropdown($con, $userLoggedIn->getUsername()); ?>
</nav>