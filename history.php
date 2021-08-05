<?php

include("includes/includedFiles.php");
// include("includes/queries/browsequery.php");

$userId = $userLoggedIn->getUserId();

$username = $userLoggedIn->getUsername();


?>

<script>
    albumnavitem();
    $(".lds-facebook").hide();
    $("#mainContent").show();
</script>


<?php if ($userRegstatus === "registered") : ?>


    <div class="overview__albums">

        <div class="overview__albums__head">
            <h2 class='pageHeadingBig'>Listening History for - <?= $username ?> </h2>

        </div>

        <div class='album'>


            <ul class='albumlisting'>

                <li class='albumlist scale-in-center' role='link' tabindex='0' onclick='openPage("weeklytopsongs")'>


                    <img src='assets/images/createdplaylist/weekly.png' />


                    <div class='albumlistinfo'>

                        <span class='chartSongName'>Weekly Top Songs</span>


                    </div>

                </li>


                <li class='albumlist scale-in-center' role='link' tabindex='0' onclick='openPage("recentlyplayed")'>


                    <img src='assets/images/createdplaylist/recentlyplayed.png' />


                    <div class='albumlistinfo'>

                        <span class='chartSongName'>Recently Played Songs</span>

                    </div>


                </li>

                <li class='albumlist scale-in-center' role='link' tabindex='0' onclick='openPage("mostplayedsongs")'>


                    <img src='assets/images/createdplaylist/mostplayed.png' />


                    <div class='albumlistinfo'>

                        <span class='chartSongName'>Most Played</span>


                    </div>



                </li>


                <li class='albumlist scale-in-center' role='link' tabindex='0' onclick='openPage("recommendations")'>


                    <img src='assets/images/createdplaylist/recommended.png' />


                    <div class='albumlistinfo'>

                        <span class='chartSongName'>Recommended Songs</span>


                    </div>

                </li>
            </ul>




        </div>
    </div>



<?php else :  ?>

    <script>
        showPreviewDialog();
    </script>

    <div class="overview__albums">

        <div class="overview__albums__head">
            <h2 class='pageHeadingBig'>Listening History for - <?= $username ?> </h2>
        </div>

        <div class='album'>


            <ul class='albumlisting'>

                <li class='albumlist scale-in-center' role='link' tabindex='0' onclick='openPage("weeklytopsongs")'>


                    <img src='assets/images/createdplaylist/weekly.png' />


                    <div class='albumlistinfo'>

                        <span class='chartSongName'>Weekly Top Songs</span>


                    </div>

                </li>


                <li class='albumlist scale-in-center' role='link' tabindex='0' onclick='openPage("recentlyplayed")'>


                    <img src='assets/images/createdplaylist/recentlyplayed.png' />


                    <div class='albumlistinfo'>

                        <span class='chartSongName'>Recently Played Songs</span>

                    </div>


                </li>

                <li class='albumlist scale-in-center' role='link' tabindex='0' onclick='openPage("mostplayedsongs")'>


                    <img src='assets/images/createdplaylist/mostplayed.png' />


                    <div class='albumlistinfo'>

                        <span class='chartSongName'>Most Played</span>


                    </div>



                </li>


                <li class='albumlist scale-in-center' role='link' tabindex='0' onclick='openPage("recommendations")'>


                    <img src='assets/images/createdplaylist/recommended.png' />


                    <div class='albumlistinfo'>

                        <span class='chartSongName'>Recommended Songs</span>


                    </div>

                </li>
            </ul>




        </div>
    </div>


<?php endif ?>



<script>
    var elmnt = document.getElementById("mainContent");
    elmnt.scrollTop = 0
</script>