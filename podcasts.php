<?php
include("includes/includedFiles.php");


?>

<script>
  podcastnavitem();
  $(".lds-facebook").hide();
  $("#mainContent").show();
</script>
<!-- headerends -->
<div class="overview__albums">


  <div class="overview__albums__head" id="podcastsection">

    <h2 class="pageHeadingBig">Podcasts</h2>



  </div>

  <div class="album">


    <ul class="albumlisting">

      <?php

      $albumQuery = mysqli_query($con, "SELECT * FROM albums WHERE tag = \"podcast\" ORDER BY RAND() LIMIT 20");

      while ($row = mysqli_fetch_array($albumQuery)) {

        echo "<li class='albumlist'>

      <span role='link' tabindex='0' onclick='openPage(\"mediacollection?id=" . $row['id'] . "\")'>

        <img class='image' src='" . $row['artworkPath'] . "'>

        <div class='albumlistinfo'>"
          . $row['title'] .
          "</div> 
      </span>  
      
    </li>";
      }

      ?>

    </ul>

  </div>




  <div class="overview__albums__head">

    <h2 class="pageHeadingBig">Poems</h2>



  </div>

  <div class="album">


    <ul class="albumlisting">



      <?php

      $albumQuery = mysqli_query($con, "SELECT * FROM albums WHERE tag = \"poem\" ORDER BY RAND() LIMIT 20");

      while ($row = mysqli_fetch_array($albumQuery)) {

        echo
        "<li class='albumlist'>
            
                <span role='link' tabindex='0' onclick='openPage(\"mediacollection?id=" . $row['id'] . "\")'>

                    <img class='image' src='" . $row['artworkPath'] . "'>

                    <div class='albumlistinfo'>"
          . $row['title'] .
          "</div> 
                </span>  

            </li>";
      }

      ?>

    </ul>

  </div>

  <div class="overview__albums__head">

    <h2 class="pageHeadingBig">DJ Mixes</h2>



  </div>

  <div class="album">


    <ul class="albumlisting">

      <?php

      $albumQuery = mysqli_query($con, "SELECT * FROM albums WHERE tag = \"dj\" ORDER BY RAND() LIMIT 20");

      while ($row = mysqli_fetch_array($albumQuery)) {

        echo "<li class='albumlist'>

                <span role='link' tabindex='0' onclick='openPage(\"mediacollection?id=" . $row['id'] . "\")'>

                    <img class='image' src='" . $row['artworkPath'] . "'>

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

<script>
  var elmnt = document.getElementById("mainContent");
  elmnt.scrollTop = 0
</script>