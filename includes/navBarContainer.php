<?php
include("includes/classes/Playlist.php");


?>
<div class="content__left">

    <section id="nav" class="navigation">

        <div class="navigation__list">
            <div class="navigation__list__header" role="button" data-toggle="collapse" href="#yourHome"
                aria-expanded="true" aria-controls="yourHome">
                <i class="ion-social-buffer"></i>

                Shine Ug
            </div>

            <div class="collapse in" id="yourHome">


                <span class="navigation__list__item" role="link" tabindex="0" onclick="openPage('browse')">
                    <i class="ion-ios-albums-outline"></i>
                    <span>Featured</span>
                </span>
                <span class="navigation__list__item" role="link" tabindex="0" onclick="openPage('artistbrowse')">
                    <i class="ion-social-buffer"></i>
                    <span>Browse</span>
                </span>

                <span class="navigation__list__item" role="link" tabindex="0" onclick="openPage('manageaccount')">
                    <i class="ion-pricetags"></i>
                    <span>Merch</span>
                </span>

                <span class="navigation__list__item" role="link" tabindex="0" onclick="openPage('manageaccount')">
                    <i class="ion-android-contact"></i>
                    <span>Contact</span>
                </span>


            </div>


        </div>

  



    </section>


    <div class="songplaying">

        <div class="lds-dual-ring"> </div>

        <div class="playing__art">

            <img id="albumartworkbg" role='link' tabindex='0' src="" alt="Album Art" />

        </div>

    </div>


    <section class="playing">

        <div class="minimize heartbeat" onclick="minimize()">
            <svg width="449" height="449" viewBox="0 0 449 449" fill="none" xmlns="http://www.w3.org/2000/svg">
                <circle cx="224.5" cy="224.5" r="224.5" fill="#C4C4C4" />
                <path
                    d="M215.454 346.528C220.726 351.8 229.274 351.8 234.546 346.528L320.459 260.615C325.732 255.342 325.732 246.795 320.459 241.523C315.187 236.251 306.64 236.251 301.368 241.523L225 317.89L148.632 241.523C143.36 236.251 134.813 236.251 129.541 241.523C124.268 246.795 124.268 255.342 129.541 260.615L215.454 346.528ZM211.5 111L211.5 336.982H238.5L238.5 111H211.5Z"
                    fill="#310D6C" />
            </svg>
        </div>

        <div class="maxidicator heartbeat" onclick="playerView()">
            <svg width="449" height="449" viewBox="0 0 449 449" fill="none" xmlns="http://www.w3.org/2000/svg">
                <circle cx="224.5" cy="224.5" r="224.5" fill="#C4C4C4" />
                <path
                    d="M296.707 155.815C294.948 148.57 287.649 144.122 280.403 145.881L162.332 174.543C155.087 176.302 150.639 183.601 152.398 190.847C154.157 198.092 161.456 202.54 168.702 200.781L273.654 175.304L299.131 280.256C300.89 287.501 308.189 291.949 315.435 290.19C322.68 288.431 327.128 281.132 325.369 273.886L296.707 155.815ZM177.528 359.004L295.116 166.025L272.06 151.975L154.472 344.955L177.528 359.004Z"
                    fill="#310D6C" />
            </svg>
        </div>

        <div class="playing__song">

            <span role='link' tabindex='0' class=" marquee playing__song__name"></span>

            <span role='link' tabindex='0' class="playing__song__artist"></span>

        </div>

    </section>

</div>