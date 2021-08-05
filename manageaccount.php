<?php include("includes/includedFiles.php"); ?>
<script>
$(".lds-facebook").hide();
$("#mainContent").show();
</script>

<?php if ($userRegstatus === "registered") : ?>


<div class="overview__albums">

    <div class="userCenterSection">
        <div class="userInfo">
            <h3>ACCOUNT INFO</h3>

            <img src="assets/images/profile-pics/me.jpg" alt="">

            <p class="userlable">USER NAME </P>
            <P class="uservalue"><?php echo $userLoggedIn->getUsername(); ?></P>

            <p class="userlable">FULL NAME</P>
            <P class="uservalue"><?php echo $userLoggedIn->getFirstAndLastName(); ?></P>

            <p class="userlable">EMAIL </P>
            <P class="uservalue"><?php echo $userLoggedIn->getEmail(); ?></P>



            <div class="UserbuttonItems">
                <button class="userbuton" onclick="openPage('settings')">Update User Info</button>
                <button class="userbuton" onclick="logout()">Log Out</button>
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
            <img src="assets/images/livethumbnails/premium.svg" alt="images">
        </div>

        <div class="dismissablecontentdesc">

            <div class="dismissablecontenttext">
                <h4>Mwonyaa Stream</h4>
                <h2>Manage Account</h2>

                <p>Manage your Account and stay upto date with new Feature Releases on Mwonyaa. Get Monthly Mwonyaa Points and information on your listening history</p>
            </div>

            <div class="dismissablecontentbutton">
                <button class="liveshowbtn" onclick="createAccount();">Create Account</button>
            </div>

        </div>

    </div>

</div>


<?php endif ?>



<script>
var elmnt = document.getElementById("mainContent");
elmnt.scrollTop = 0
</script>