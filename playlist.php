<?php
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

require "includes/includedFiles.php";

if (isset($_GET['id'])) {
  $playlistId =  $_GET['id'];
} else {
  header("Location:browse");
}

try {
  //code...
  $playlist = new Playlist($con, $playlistId);
  $owner = new User($con, $playlist->getOwner());
} catch (\Throwable $th) {
  //throw $th;
  echo $th->getMessage();
}



?>

<!-- headerends -->


<script>
  $(".lds-facebook").hide();
  $("#mainContent").show();
</script>

<div class="overview__albums">

  <div class="overview__albums__head">

    <span class="section-title">Playlist</span>



  </div>

  <div class="entityInfo">
    <div class="leftSection">
      <img src="<?= $playlist->getCoverimage() ?>">
    </div>

    <div class="rightSection">
      <h2><?php echo $playlist->getName(); ?></h2>

      <p><?php echo $playlist->getOwner(); ?></p>

      <p> <?php echo $playlist->getNumberOfSongs(); ?> Songs</p>


      <div class='buttonsgroup'>

        <button class="button-dark" onclick="playFirstSong()">
          <i class="ion-ios-play"></i>
          Play
        </button>

        <?php

        /***
         * get id of the playlist
         * get current user loggedin 
         */

        $idP = $playlist->getId();
        $username = $userLoggedIn->getUsername();

        /***
         * check for the playlist id, if the owner is the same as the current user 
         */
        $checkownership = mysqli_query($con, "SELECT * FROM playlists WHERE id='$idP' AND owner='$username'");

        if (mysqli_num_rows($checkownership) == 0) {
          echo "
              ";
        } else {
          echo "
                    <button id='togglemore' onclick='toggleclickedit(this)' class='button-light editplaylistmore'>
                        <i class='ion-ios-more'></i>
                    </button>

        </div>


                    <div id='toggleplaylistedit' class='playlisteditaction'>

                        <ul class='actioncollection'>

                        "; ?>


          <li class='actionitem' onclick="renamePlaylist('<?php echo $playlistId ?>')">Rename Playlist</li>
          <li class='actionitem' onclick="deletePlaylist('<?php echo $playlistId ?>')">Delete Playlist</li>
          <li class='separator'>Share Playlist</li>
          <?php

          if ($userrole == 'admin') {
          ?>
            <li class='actionitem' onclick="sharePlaylist('<?php echo $playlistId ?>', 1)">Featured Playlist</li>

          <?php
          } else {
          }
          ?>

          <li class='actionitem' onclick="shareOnlyFriends('<?php echo $playlistId ?>',2)">To Friends</li>


        <?php
          echo "
                        </ul>

                    </div>
                                     

         ";
        }

        ?>


      </div>
    </div>

  </div>


  <?php if ($playlist->getSongIds()) : ?>


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


          $songIdArray = $playlist->getSongIds();


          $i = 1;

          foreach ($songIdArray as $songId) {

            $playlistSong = new Song($con, $songId);
            $songArtist = $playlistSong->getArtist();

            echo "
                                <div class='track'>

                                  <div class='track__number'>$i</div>
        
                                  <div class='track__added'>
        
                                    <i class='ion-play playsong ' onclick='setTrack(\"" . $playlistSong->getId() . "\",tempPlaylist, true)'></i>

                                  </div>
        
                                  <div class='track__title featured'>
                                  
                                    <span class='title'>" . $playlistSong->getTitle() . "</span>
                                    <span class='feature' role='link' tabindex='0' onclick='openPage(\"artist?id=" . $songArtist->getId() . "\")'>" . $songArtist->getName() . "</span>
                                    
                                  </div>
        
                                  <div class='track__more'>
          
                                    <input type='hidden' class='songId' value='" . $playlistSong->getId() . "'>
            
                                    <i class='ion-more' onclick='showOptionsMenu(this)'></i>
          
                                  </div>
                                
                                  <div class='track__length'>" . $playlistSong->getDuration() . "</div>
                                  
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
            elmnt.scrollTop = 0


         
          </script>


        </div>

      </div>

    </div>

  <?php else :  ?>

    <div class="nocontentinplaylist">
      <h4>Empty Playlist! </h4>
      <p>Add Music to your Playlist Now <span onclick="openPage('browse')">Browse Music</span></p>
    </div>

  <?php endif ?>


  <!-- options menu -->

  <nav class="optionsMenu">
    <input type="hidden" class="songId">
    <?php

    if ($userrole == 'admin') {
    ?>
      <div class="item" onclick="removeFromPlaylist(this, '<?php echo $playlistId; ?>')">Remove from Playlist</div>

    <?php
    } else {
    }
    ?>

    <div class="item">Info</div>

  </nav>


  <script>
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