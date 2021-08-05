<?php include("includes/includedFiles.php"); ?>

<script>
    $(".lds-facebook").hide();
    $("#mainContent").show();
    $("#sharedplaylistshowing").load("includes/sharedPlaylistlogic.php");
</script>

<?php if ($userRegstatus === "registered") : ?>
    
    <?php
    $userplaylistsarray = array();
    $username = $userLoggedIn->getUsername();
    $playlistQuery = mysqli_query($con, "SELECT * FROM playlists where owner ='$username'");

    //pushing to publicplaylist array
    while ($row = mysqli_fetch_array($playlistQuery)) {
        array_push($userplaylistsarray, $row);
    }


    ?>

    <?php if ($userplaylistsarray) : ?>

        <div class="overview__albums">

            <div class="overview__albums__head">

                <h2 class="pageHeadingBig">Playlist</h2>

            </div>

            <div class="buttonItems">
                <button class="button green createplaylistbtn" onclick="openPage('createplaylist')"> Create NEW Playlist</button>
            </div>

            <div class="album">
                <div class="albumlisting">

                    <?php
                    foreach ($userplaylistsarray as $row) :
                        $playlist = new Playlist($con, $row);

                    ?>
                        <div class='albumlist' role='link' tabindex='0' onclick='openPage("playlist?id=<?= $playlist->getId() ?>")'>

                            <img class='image' src="<?= $playlist->getCoverimage() ?>">

                            <div class='albumlistinfo'><?= $playlist->getName() ?></div>
                        </div>
                    <?php endforeach ?>


                </div>

            </div>
        </div>


    <?php else :  ?>

        <div class="dismissable">

            <div class="dismissablecontent">

                <div class="previewimagecontainer">
                    <img src="assets/images/livethumbnails/createplaylistlive.png" alt="images">
                </div>

                <div class="dismissablecontentdesc">

                    <div class="dismissablecontenttext">
                        <h4>Mwonyaa Stream</h4>
                        <h2>Create New Playlist</h2>

                        <p>Create Playlists and Share with Your Friends or Let it be Featured on Mwonyaa to be view and Listened to by Everyone</p>
                    </div>

                    <div class="dismissablecontentbutton">
                        <button class="liveshowbtn" onclick="openPage('createplaylist')">Create New Playlist</button>
                    </div>

                </div>

            </div>

        </div>



    <?php endif ?>

    <div class="overview__albums">


        <div class="overview__albums__head">

            <h2 class="pageHeadingBig">Shared Playlists</h2>

        </div>


        <div class="album">
            <p class="plabel">Playlist shared by people you follow appear here</p>


            <div class="albumlisting" id="sharedplaylistshowing">

                <!-- where share playlists will show  -->
            </div>

        </div>


    </div>

<?php else :  ?>

    <script>
        showPreviewDialog();
    </script>

    <div class="dismissable">

        <div class="dismissablecontent">

            <div class="previewimagecontainer">
                <img src="assets/images/livethumbnails/createplaylistlive.png" alt="images">
            </div>

            <div class="dismissablecontentdesc">

                <div class="dismissablecontenttext">
                    <h4>Mwonyaa Stream</h4>
                    <h2>Create New Playlist</h2>

                    <p>Create Playlists and Share with Your Friends or Let it be Featured on Mwonyaa to be view and Listened to by Everyone</p>
                </div>

                <div class="dismissablecontentbutton">
                    <button class="liveshowbtn" onclick="openPage('createplaylist')">Create New Playlist</button>
                </div>

            </div>

        </div>

    </div>


<?php endif ?>



<script>
    var elmnt = document.getElementById("mainContent");
    elmnt.scrollTop = 0
</script>