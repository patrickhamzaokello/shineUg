<?php
include("includes/includedFiles.php");


?>

<script>
  $(".lds-facebook").hide();
  $("#mainContent").show();
</script>

<?php if ($userRegstatus === "registered") : ?>

  <!-- headerends -->

  <div class="dismissable">

    <div class="dismissablecontent">

      <div class="previewimagecontainer">
        <img src="assets/images/livethumbnails/deedandshaylive.png" alt="images">
      </div>

      <div class="dismissablecontentdesc">

        <div class="dismissablecontenttext">
          <h4>Mwonyaa Stream <span>FEATURED</span></h4>
          <h2>Experience Live Artist Content and Performances as they happen</h2>

          <p>Discover the best new music and new artists every week on Mwonyaa Stream Recommedation Engine and RELEASED Playlists</p>
        </div>

        <div class="dismissablecontentbutton">
          <button class="liveshowbtn" onclick="showComingsoonDialog()">View Live Shows</button>
        </div>

      </div>





    </div>
    <div class="recommendedVideos__videos">
      <div class="videoCard" onclick="showComingsoonDialog();"><img class="videoCard__thumbnail" src="assets/images/livethumbnails/mornignshow.png" alt="">
        <div class="videoCard__info">
          <div class="MuiAvatar-root MuiAvatar-circle videoCard_avatar"><img alt="https://avatars2.githubusercontent.com/u/41443166?s=460&amp;u=794643de8ee050ee778fcc9fa713d68cbfcdf449&amp;v=4" src="assets/images/livethumbnails/liveuserprofile.png" class="MuiAvatar-img"></div>
          <div class="video__text">
            <h4>Mwonyaa Stream One on One Show</h4>
            <p>Pkasemer</p>
            <!-- <p>4.8M views.3 days ago</p> -->
            <p>15+ Views 5 hrs ago</p>
          </div><svg class="MuiSvgIcon-root VideoMore" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
            <path d="M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"></path>
          </svg>
        </div>
      </div>
      <div class="videoCard" onclick="showComingsoonDialog();"><img class="videoCard__thumbnail" src="assets/images/livethumbnails/hitmakersshow.png" alt="">
        <div class="videoCard__info">
          <div class="MuiAvatar-root MuiAvatar-circle videoCard_avatar"><img alt="https://i.pinimg.com/originals/6e/47/d4/6e47d4c46d49f0a19e42e4bd7c0ff060.jpg" src="assets/images/livethumbnails/liveuserprofile.png" class="MuiAvatar-img"></div>
          <div class="video__text">
            <h4>Hit Maker's Show on Mwonyaa Stream</h4>
            <p>Pkasemer</p>
            <!-- <p>4.8M views.3 days ago</p> -->
            <p>30+ Views 3 hrs ago</p>
          </div><svg class="MuiSvgIcon-root VideoMore" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
            <path d="M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"></path>
          </svg>
        </div>
      </div>
      <div class="videoCard" onclick="showComingsoonDialog();"><img class="videoCard__thumbnail" src="assets/images/livethumbnails/newfacesonmwonyaa.png" alt="">
        <div class="videoCard__info">
          <div class="MuiAvatar-root MuiAvatar-circle videoCard_avatar"><img alt="https://avatars2.githubusercontent.com/u/41443166?s=460&amp;u=794643de8ee050ee778fcc9fa713d68cbfcdf449&amp;v=4" src="assets/images/livethumbnails/liveuserprofile.png" class="MuiAvatar-img"></div>
          <div class="video__text">
            <h4>New Faces and Game changers</h4>
            <p>Mwonyaa</p>
            <!-- <p>4.8M views.3 days ago</p> -->
            <p>52+ Views 4 hrs ago</p>
          </div><svg class="MuiSvgIcon-root VideoMore" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
            <path d="M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"></path>
          </svg>
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
        <img src="assets/images/livethumbnails/deedandshaylive.png" alt="images">
      </div>

      <div class="dismissablecontentdesc">

        <div class="dismissablecontenttext">
          <h4>Mwonyaa Stream <span>FEATURED</span></h4>
          <h2>Experience Live Artist Content and Performances as they happen</h2>

          <p>Discover the best new music and new artists every week on Mwonyaa Stream Recommedation Engine and RELEASED Playlists</p>
        </div>

        <div class="dismissablecontentbutton">
          <button class="liveshowbtn" onclick="showPreviewDialog()">View Live Shows</button>
        </div>

      </div>

    </div>


    <div class="recommendedVideos__videos">
      <div class="videoCard" onclick="showPreviewDialog();"><img class="videoCard__thumbnail" src="assets/images/livethumbnails/mornignshow.png" alt="">
        <div class="videoCard__info">
          <div class="MuiAvatar-root MuiAvatar-circle videoCard_avatar"><img alt="https://avatars2.githubusercontent.com/u/41443166?s=460&amp;u=794643de8ee050ee778fcc9fa713d68cbfcdf449&amp;v=4" src="assets/images/livethumbnails/liveuserprofile.png" class="MuiAvatar-img"></div>
          <div class="video__text">
            <h4>Mwonyaa Stream One on One Show</h4>
            <p>Pkasemer</p>
            <!-- <p>4.8M views.3 days ago</p> -->
            <p>15+ Views 5 hrs ago</p>
          </div><svg class="MuiSvgIcon-root VideoMore" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
            <path d="M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"></path>
          </svg>
        </div>
      </div>
      <div class="videoCard" onclick="showPreviewDialog();"><img class="videoCard__thumbnail" src="assets/images/livethumbnails/hitmakersshow.png" alt="">
        <div class="videoCard__info">
          <div class="MuiAvatar-root MuiAvatar-circle videoCard_avatar"><img alt="https://i.pinimg.com/originals/6e/47/d4/6e47d4c46d49f0a19e42e4bd7c0ff060.jpg" src="assets/images/livethumbnails/liveuserprofile.png" class="MuiAvatar-img"></div>
          <div class="video__text">
            <h4>Hit Maker's Show on Mwonyaa Stream</h4>
            <p>Pkasemer</p>
            <!-- <p>4.8M views.3 days ago</p> -->
            <p>30+ Views 3 hrs ago</p>
          </div><svg class="MuiSvgIcon-root VideoMore" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
            <path d="M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"></path>
          </svg>
        </div>
      </div>
      <div class="videoCard" onclick="showPreviewDialog();"><img class="videoCard__thumbnail" src="assets/images/livethumbnails/newfacesonmwonyaa.png" alt="">
        <div class="videoCard__info">
          <div class="MuiAvatar-root MuiAvatar-circle videoCard_avatar"><img alt="https://avatars2.githubusercontent.com/u/41443166?s=460&amp;u=794643de8ee050ee778fcc9fa713d68cbfcdf449&amp;v=4" src="assets/images/livethumbnails/liveuserprofile.png" class="MuiAvatar-img"></div>
          <div class="video__text">
            <h4>New Faces and Game changers</h4>
            <p>Mwonyaa</p>
            <!-- <p>4.8M views.3 days ago</p> -->
            <p>52+ Views 4 hrs ago</p>
          </div><svg class="MuiSvgIcon-root VideoMore" focusable="false" viewBox="0 0 24 24" aria-hidden="true">
            <path d="M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"></path>
          </svg>
        </div>
      </div>

    </div>






  </div>

<?php endif ?>

<script>
  djmixnavitem();
  var elmnt = document.getElementById("mainContent");
  elmnt.scrollTop = 0
</script>