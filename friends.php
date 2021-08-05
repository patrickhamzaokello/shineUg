<?php include("includes/includedFiles.php"); ?>

<script>
    $(".lds-facebook").hide();
    $("#mainContent").show();
    $(".usercollection").load("includes/userfollowinglogic.php");
    $("#sharedplaylistshowing").load("includes/sharedPlaylistlogic.php");
</script>


<?php if ($userRegstatus === "registered") : ?>

    <div class="overview__albums">

    <div class="overview__albums__head">

        <h2 class="pageHeadingBig">Friends</h2>

    </div>

    <p class="plabel">Follow Other Users to get their Shared Playlists </p>

    <div class="usercollection">


        <!-- frends collection appear here -->

    </div>



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
        <img src="assets/images/livethumbnails/friendslive.png" alt="images">
    </div>

    <div class="dismissablecontentdesc">

        <div class="dismissablecontenttext">
            <h4>Mwonyaa Stream <span>Featured</span></h4>
            <h2>Better With Friends</h2>

            <p>Mwonyaa Stream is Built to allow you share Music and other content with your Friends easily. Signup to Access this feature</p>
        </div>

        <div class="dismissablecontentbutton">
            <button class="liveshowbtn" onclick="showPreviewDialog()">View & Find Friends</button>
        </div>

    </div>

</div>

</div>


<?php endif ?>


<script>
    var elmnt = document.getElementById("mainContent");
    elmnt.scrollTop = 0
</script>