<?php

$artistId = "martist6044f454b39d2pin";

include("includes/includedFiles.php");

$artist = new Artist($con, $artistId);
$userLoggedIn = new User($con,  $_SESSION['userLoggedIn']);
$username = $userLoggedIn->getUsername();
$userId = $userLoggedIn->getUserId();


$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";

$urlquery = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
$twitterusername = "@MwonyaaStream"


?>

<script>
    $(".lds-facebook").hide();
    $("#mainContent").show();
    $("#artistlogic").load("includes/artistfollowlogic.php?id=<?php echo $artistId ?>");
</script>


<!-- headerends -->

<div class="artist__header" style="background-image: url('<?php echo $artist->getArtistCoverPath(); ?>'); background-size:cover; background-position:center">

    <div class="artistoverlay">
    </div>

    <div id="popup1" class="overlay">
        <div class="popup">
            <p class="biotitle">Social Share Buttons </p>

            <div class="shareactionbuttons">


                <a>
                    <button id="songcopybutton" class="copybutton button-dark" value="ok" onclick="sharebutton('<?= $urlquery ?>')">
                        Copy Link
                    </button>
                </a>

                <a class="whatapponphone" href="whatsapp://send?text=I'm Listening to <?= $artist->getName(); ?> on Mwonyaa Stream. Click the link below to Stream Content Created by <?= $artist->getName(); ?> now. <?= $urlquery ?>" data-action="share/whatsapp/share" onClick="javascript:(isRegistered != 'registered') ? showPreviewDialog() : window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;" target="_blank" title="Share on whatsapp"> <button class="whatsappbutton button-dark" value="ok">
                        WhatsApp
                    </button></a>

                <a class="twitter-share-button" href="https://twitter.com/share?url=<?= $urlquery ?>%0A&text=I'm Listening to <?= $artist->getName(); ?> on Mwonyaa Stream. Click the link below to Stream Content Created by <?= $artist->getName(); ?> now.%0A&hashtags=mwonyaateam <?= $twitterusername ?> ,ugandanstreamingplatform%0A" onclick="javascript:(isRegistered != 'registered') ? showPreviewDialog() : window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;" target="_blank" title="Share on Twitter"> <button class="twitterbutton button-dark" value="ok">
                        Twitter
                    </button></a>

            </div>


            <p class="biotitle">Artist Bio </p>
            <h2><?php echo $artist->getName(); ?></h2>
            <a class="close" href="#">&times;</a>
            <div class="artistbio">
                <?php echo $artist->getArtistBio(); ?>
            </div>
        </div>
    </div>

    <div class="artist__info">

        <div class="profile__img">

            <img src="<?php echo $artist->getProfilePath(); ?>" />


        </div>

        <div class="artist__info__meta">

            <div class="artist__info__type">Artist</div>

            <div class="artist__info__name"><?php echo $artist->getName(); ?></div>

            <div class="artist__info__actions">

                <button class="button-dark playmainbutton" onclick="playFirstSong(this)">
                    <i class="ion-ios-play"></i>
                    Play
                </button>



                <div id="artistlogic">
                    <!-- unfollowing and folowing button loaded here -->
                </div>

                <a href="#popup1">
                    <button class="button-light more">
                        <i class="ion-ios-more"></i>
                    </button>
                </a>


                <div class="0"></div>


            </div>

        </div>


    </div>

    <div class="artist__listeners">

        <?php

        $totalplaysquery = mysqli_query($con, "SELECT SUM(`plays`) AS totalplays FROM songs where `artist` = '$artistId' and tag != 'ad'");
        $row = mysqli_fetch_array($totalplaysquery);


        echo " <div class='artist__listeners__count'>" . $row['totalplays'] . "</div>  ";


        ?>

        <div class=" artist__listeners__label">Monthly Listeners
        </div>

    </div>

   

</div>




<div class="artist__content">

    <div class="tab-content">

        <!-- Overview -->
        <div role="tabpanel" class="tab-pane active" id="artist-overview">

            <div class="overview">

                <div class="overview__artist">

                    <!-- Latest Release-->
                    <div class="section-title">Latest Release</div>

                    <div class="latest-release">
                        <?php


                        $albumQuery = mysqli_query($con, "SELECT * FROM albums where artist='$artistId' and tag != 'ad' ORDER BY datecreated DESC LIMIT 1");

                        while ($row = mysqli_fetch_array($albumQuery)) {
                            $phpdate = strtotime($row['datecreated']);
                            $mysqldate = date('d M Y', $phpdate);
                            // $mysqldate = date( 'd/M/Y H:i:s', $phpdate );


                            echo "
                              <div class='latest-release__art' role='link' tabindex='0' onclick='openPage(\"album?id=" . $row['id'] . "\")'>

                                <img src='" . $row['artworkPath'] . "'/>
                               
                              </div>

                              <div class='latest-release__song'>

                              <div class='latest-release__song__title'>" . $row['title'] . "</div>


                                <div class='latest-release__song__date'>

                                  <span class='day'>" . $mysqldate . "</span>

                                </div>

                              </div>

                            
                            ";
                        }
                        ?>

                    </div>
                    <!-- / -->

                    <!-- Popular-->
                    <div class="section-title">Popular</div>

                    <div class="tracks">

                        <?php


                        $songIdArray = $artist->getSongIds();

                        $i = 1;



                        foreach ($songIdArray as $songId) {

                            if ($i > 5) {
                                break;
                            }

                            $albumSong = new Song($con, $songId);
                            $albumArtist = $albumSong->getArtist();

                            echo "
                          <div class='track'>

                            <div class='track__number'>$i</div>

                            <div class='track__added'>

                              <i class='ion-play playsong ' onclick='setTrack(\"" . $albumSong->getId() . "\",tempPlaylist, true)'></i>

                            </div>

                            <div class='track__title featured'>
                            
                              <span class='title' onclick='setTrack(\"" . $albumSong->getId() . "\",tempPlaylist, true)'>" . $albumSong->getTitle() . "</span>
                              <span class='feature'>" . $albumArtist->getName() . "</span>
                              
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
                                $(".pkkkk").css("background", "#343d4e");
                            } else {
                                $(".pkkkk").css("border-left", "none");
                                $(".pkkkk").css("background", "none");

                                $(".track").removeClass("pkkkk");
                            }
                        </script>



                    </div>


                    <!-- options menu -->

                    <nav class="optionsMenu">
                        <input type="hidden" class="songId">

                        <?php echo Playlist::getPlaylistsDropdown($con, $userLoggedIn->getUsername()); ?>


                    </nav>

                    <!-- / -->

                </div>

               

                <div class="eoverview__albums">

                    <div class="overview__albums__head">

                        <span class="section-title">Browse Mixtapes</span>



                    </div>

                    <div class="album">

                        <ul class="albumlisting">

                            <?php

                            $albumQuery = mysqli_query($con, "SELECT * FROM albums where artist='$artistId' and tag != 'ad'");

                            while ($row = mysqli_fetch_array($albumQuery)) {




                                echo "<li class='albumlist'>

              <span role='link' tabindex='0' onclick='openPage(\"album?id=" . $row['id'] . "\")'>

                <img loading='lazy' class='image' src='" . $row['artworkPath'] . "'>

                <div class='albumlistinfo'>"
                                    . $row['title'] .
                                    "</div> 
              </span>  
              
            </li>";
                            }

                            ?>

                        </ul>

                    </div>

                </div>

            </div>

        </div>
        <!-- / -->



    </div>

</div>