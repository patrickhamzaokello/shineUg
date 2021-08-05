<?php
include("includes/includedFiles.php");


?>

<script>
  poemnavitem();
  $(".lds-facebook").hide();
  $("#mainContent").show();
</script>

<?php if ($userRegstatus === "registered") : ?>

  <!-- headerends -->

  <div class="dismissable">

    <div class="dismissablecontent">

      <div class="previewimagecontainer">
      <img src="assets/images/livethumbnails/shoppreview.png" alt="images">
      </div>

      <div class="dismissablecontentdesc">

        <div class="dismissablecontenttext">
        <h4>Mwonyaa Shop <span>FEATURED</span></h4>
          <h2>Building a Greator Market Place for Artists and Creators to sell merchandise and gift cards</h2>

          <p>Discover the best selling items from your favourite artists on Mwonyaa shop</p>
        </div>

        <div class="dismissablecontentbutton">
          <button class="liveshowbtn" onclick="showComingsoonDialog()">View Shop Items</button>
        </div>

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
        <img src="assets/images/livethumbnails/shoppreview.png" alt="images">
      </div>

      <div class="dismissablecontentdesc">

        <div class="dismissablecontenttext">
          <h4>Mwonyaa Shop <span>FEATURED</span></h4>
          <h2>Building a Greator Market Place for Artists and Creators to sell merchandise and gift cards</h2>

          <p>Discover the best selling items from your favourite artists on Mwonyaa shop</p>
        </div>

        <div class="dismissablecontentbutton">
          <button class="liveshowbtn" onclick="showPreviewDialog()">View Shop Items</button>
        </div>

      </div>

    </div>


   






  </div>

<?php endif ?>

<script>
  var elmnt = document.getElementById("mainContent");
  elmnt.scrollTop = 0
</script>