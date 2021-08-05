<?php

$songQuery = mysqli_query($con, "SELECT id FROM songs WHERE tag='music' ORDER BY RAND() LIMIT 10");

$resultArray = array();

while ($row = mysqli_fetch_array($songQuery)) {

    array_push($resultArray, $row['id']);
}

if ($userRegstatus != "registered") {
    $adresultArray = array();
    $adsQuery = mysqli_query($con, "SELECT id FROM songs WHERE tag='ad' ORDER BY RAND() LIMIT 10");
    while ($row = mysqli_fetch_array($adsQuery)) {

        array_push($adresultArray, $row['id']);
    }
    $jsonAdsArray = json_encode($adresultArray);
} else {
    // userregistered
    $adresultArray = array();
    $jsonAdsArray = json_encode($adresultArray);
}




$jsonArray = json_encode($resultArray);


if (isset($_SESSION['userLoggedIn'])) {
    $userLoggedIn = new User($con,  $_SESSION['userLoggedIn']);
    $currentuserID = $userLoggedIn->getUserId();
    $userrole = $userLoggedIn->getUserrole();

    echo "
    <script>
    currentuser = '$currentuserID';
    </script>";
} else {
    // header("Location: register");
    // header("Location:register?location=" . urlencode($_SERVER['REQUEST_URI']));

}


?>





<script>
    $(document).ready(function() {
        var newPlaylist = <?php echo $jsonArray; ?>;
        audioElement = new Audio();
        setTrack(newPlaylist[0], newPlaylist, false);


        updateVolumeProgressBar(audioElement.audio);

        // $(".current-track").on("mousedown touchstart mousemove touchmove ", function(e) {
        //     e.preventDefault();
        // });

        var audioitem = audioElement.audio;


        // if (audioitem) {
        //     window.addEventListener("keydown", function(event) {
        //         var key = event.which || event.keyCode;

        //         if (key === 32) {
        //             // spacebar  pause and play
        //             // eat the spacebar, so it does not scroll the page
        //             event.preventDefault();
        //             audioitem.paused ? playSong() : pauseSong();
        //         }
        //         if (key === 77) {
        //             // m - mute key
        //             event.preventDefault();
        //             audioitem.paused ? setMute() : setMute();
        //         }
        //         if (key === 78) {
        //             // n - next key
        //             event.preventDefault();
        //             audioitem.paused ? nextSong() : nextSong();
        //         }
        //         if (key === 80) {
        //             // p -  previous key
        //             event.preventDefault();
        //             audioitem.paused ? prevSong() : prevSong();
        //         }

        //         if (key === 82) {
        //             // r - repeat key
        //             event.preventDefault();
        //             audioitem.paused ? setRepeat() : setRepeat();
        //         }
        //         if (key === 83) {
        //             // s - shuffle key
        //             event.preventDefault();
        //             audioitem.paused ? setShuffle() : setShuffle();
        //         }

        //     });
        // }


        $(".playbackBar .progressBar").mousedown(function() {
            mouseDown = true;
        });

        $(".playbackBar .progressBar").mousemove(function(e) {
            if (mouseDown) {
                timeFromOffset(e, this);
            }
        });


        $(".playbackBar .progressBar").mouseup(function(e) {
            timeFromOffset(e, this);

        });

        // volume bar updater when dragging.
        $(".control.volume .progressBar").mousedown(function() {
            mouseDown = true;
        });

        $(".control.volume  .progressBar").mousemove(function(e) {
            if (mouseDown) {
                var percentage = e.offsetX / $(this).width();

                if (percentage >= 0 && percentage <= 1) {
                    audioElement.audio.volume = percentage;
                }

            }
        });

        $(".control.volume  .progressBar").mouseup(function(e) {
            var percentage = e.offsetX / $(this).width();

            if (percentage >= 0 && percentage <= 1) {
                audioElement.audio.volume = percentage;
            }
        });

        $(document).mouseup(function() {
            mouseDown = false;
        });

    });

    function timeFromOffset(mouse, progressBar) {

        var percentage = mouse.offsetX / $(progressBar).width() * 100;

        var seconds = audioElement.audio.duration * (percentage / 100);
        audioElement.setTime(seconds);
    }

    function prevSong() {
        if (audioElement.audio.currentTime >= 3 || currentIndex == 0) {
            audioElement.setTime(0);

        } else {
            currentIndex = currentIndex - 1;
            setTrack(currentPlaylist[currentIndex], currentPlaylist, true);
        }
    }

    function serializeQuery(params, prefix) {
        const query = Object.keys(params).map((key) => {
            const value = params[key];

            if (params.constructor === Array)
                key = `${prefix}[]`;
            else if (params.constructor === Object)
                key = (prefix ? `${prefix}[${key}]` : key);

            if (typeof value === 'object')
                return serializeQuery(value, key);
            else
                return `${key}=${encodeURIComponent(value)}`;
        });

        return [].concat.apply([], query).join('&');
    }


    serialize = function(obj) {
        var str = [];
        for (var p in obj)
            if (obj.hasOwnProperty(p)) {
                str.push(encodeURIComponent(p) + "=" + encodeURIComponent(obj[p]));
            }
        return str.join("&");
    }



    function songQueue() {
        //check if user is Registered
        var currentplayinglist = shuffle ? shufflePlaylist : currentPlaylist;

        //set cookie of current queue
        document.cookie = "track_queue=" + currentplayinglist.slice(currentIndex);
        //localway of passing values via the browser
        openPage("queue");
        return;

    }

    function songMixers() {

        //check if user is Registered
        if (isRegistered === "registered") {
            var currentsongplaying = shuffle ? shufflePlaylist[currentIndex] : currentPlaylist[currentIndex];
            let lasttrackid = currentsongplaying;
            //set cookie of current songid
            document.cookie = "nowsong_id=" + lasttrackid;
            openPage("mwonyaamix?");
            return;
        } else {
            showPreviewDialog();
        }


    }



    function nextSong() {

        if (repeat == true) {
            audioElement.setTime(0);
            playSong();
            return;
        }

        if (currentIndex == currentPlaylist.length - 1) {

            if (confirmmix != true) {
                showMwonyaamixdialog(confirmmix);
                console.log("showmix not true");
                return;
            } else {
                console.log("showmix true");
                if (confirmmix == true) {

                    var lasttrackid = currentPlaylist[currentIndex];
                    pauseSong();
                    $.post("includes/handlers/ajax/getSimilarSongJson.php", {
                        songId: lasttrackid
                    }, function(data) {

                        var recommededsongsarray = JSON.parse(data);

                        currentIndex = 0;

                        if (recommededsongsarray != "") {
                            shufflePlaylist = recommededsongsarray;
                            currentPlaylist = recommededsongsarray;

                            // let song mixer
                            // openPage("mwonyaamix?mix=" + lasttrackid);
                            // songMixers();

                            var trackToPlay = shuffle ? shufflePlaylist[currentIndex] : currentPlaylist[currentIndex];
                            setTrack(trackToPlay, currentPlaylist, true);

                            return
                        } else {
                            var trackToPlay = shuffle ? shufflePlaylist[currentIndex] : currentPlaylist[currentIndex];
                            setTrack(trackToPlay, currentPlaylist, true);
                        }


                    });

                    confirmmix = false;

                    return
                } else {
                    currentIndex = 0;

                    var trackToPlay = shuffle ? shufflePlaylist[currentIndex] : currentPlaylist[currentIndex];
                    setTrack(trackToPlay, currentPlaylist, true);

                    return
                }
            }

        } else {
            if (isRegistered != "registered") {

                if (sessionsonglistencount % 5 == 0) {
                    showRegisterDialog();
                    var adsPlaylist = <?php echo $jsonAdsArray; ?>;
                    var songsPlaylist = shuffle ? shufflePlaylist : currentPlaylist;
                    var adsID = random_songid(adsPlaylist);
                    songsPlaylist.splice(currentIndex, 0, adsID);
                    setTrack(songsPlaylist[currentIndex], songsPlaylist, true);

                    const index = songsPlaylist.indexOf(adsID);
                    if (index > -1) {
                        songsPlaylist.splice(index, 1);
                    }

                } else {
                    currentIndex++;
                    var trackToPlay = shuffle ? shufflePlaylist[currentIndex] : currentPlaylist[currentIndex];
                    setTrack(trackToPlay, currentPlaylist, true);
                }

            } else {
                currentIndex++;
                var trackToPlay = shuffle ? shufflePlaylist[currentIndex] : currentPlaylist[currentIndex];
                setTrack(trackToPlay, currentPlaylist, true);

            }

        }


    }


    function setRepeat() {
        repeat = !repeat;
        var imageName = repeat ? "ion-loop" : "ion-refresh";
        $(".control.repeat i").attr("class", imageName);
    }

    function settings() {}


    function setMute() {
        audioElement.audio.muted = !audioElement.audio.muted;
        var imageName = audioElement.audio.muted ? "ion-volume-mute" : "ion-volume-high";
        $(".control.volume i").attr("class", imageName);
    }

    function setShuffle() {
        shuffle = !shuffle;
        var imageName = shuffle ? "ion-shuffle" : "ion-ios-shuffle";
        $(".control.shuffle i").attr("class", imageName);


        if (shuffle == true) {
            //randomize playlist
            shuffleArray(shufflePlaylist);
            currentIndex = shufflePlaylist.indexOf(audioElement.currentlyPlaying.id);

        } else {
            //shuffle is off and go back to regular playlist
            currentIndex = currentPlaylist.indexOf(audioElement.currentlyPlaying.id);

        }


    }

    function shuffleArray(a) {
        var j, x, i;
        for (i = a.length; i; i--) {
            j = Math.floor(Math.random() * i);
            x = a[i - 1];
            a[i - 1] = a[j];
            a[j] = x;
        }
    }


    function setTrack(trackId, newPlaylist, play) {


        if (newPlaylist != currentPlaylist) {
            currentPlaylist = newPlaylist;
            shufflePlaylist = currentPlaylist.slice();
            shuffleArray(shufflePlaylist);
        }

        if (shuffle == true) {
            currentIndex = shufflePlaylist.indexOf(trackId);
        } else {
            currentIndex = currentPlaylist.indexOf(trackId);
        }

        sessionsonglistencount++;

        pauseSong();

        $.post("includes/handlers/ajax/getSongJson.php", {
            songId: trackId
        }, function(data) {

            var track = JSON.parse(data);
            $(".playing__song__name").text(track.title);

            //queue songname
            $("#queuesongtitle").text(track.title);


            $.post("includes/handlers/ajax/getArtistJson.php", {
                artistId: track.artist
            }, function(data) {
                var artist = JSON.parse(data);
                $(".playing__song__artist").text(artist.name);
                $(".playing__song__artist").attr("onclick", "openPage('artist?id=" + artist.id + " ')");

                //queue songArtist
                $("#queuesongArtist").text(artist.name);


            });

            $.post("includes/handlers/ajax/getAlbumJson.php", {
                albumId: track.album
            }, function(data) {
                var album = JSON.parse(data);
                $(".playing__art img").attr("src", album.artworkPath);
                $(".playing__art img").attr("onclick", "openPage('album?id=" + album.id + "')");
                $(".playing__song__name").attr("onclick", "openPage('song?id=" + trackId + "')");

                //updatequeue
                $("#queueimage").attr("src", album.artworkPath);


            });

            audioElement.setTrack(track);

            if (play == true) {
                playSong();

            }

        });

    }


    function playSong() {

        if (audioElement.audio.currentTime == 0) {

            $.post("includes/handlers/ajax/updatePlays.php", {
                songId: audioElement.currentlyPlaying.id,
                userId: currentuser,
                userregstatus: isRegistered ? isRegistered : "notregistered"

            });

        }

        $(".ion-ios-play.play").hide();
        $(".current-track__actions .playbutton").hide();
        $(".ion-ios-pause.pause").show();
        $(".current-track__actions .pausebutton").show();

        $(".ion-ios-play.mainplay").hide();
        $(".mainplaybutton").hide();

        $(".ion-ios-pause.mainpause").show();
        $(".mainpausebutton").show();


        audioElement.play();
    }

    function pauseSong() {
        $(".ion-ios-play.play").show();
        $(".current-track__actions .playbutton").show();
        $(".ion-ios-pause.pause").hide();
        $(".current-track__actions .pausebutton").hide();
        $(".songviewimage").removeClass("spinitem");
        $(".ion-ios-play.mainplay").show();
        $(".mainplaybutton").show();

        $(".ion-ios-pause.mainpause").hide();
        $(".mainpausebutton").hide();

        audioElement.pause();
    }


    function random_songid(items) {

        return items[Math.floor(Math.random() * items.length)];

    }
</script>



<section class="current-track">

    <div class="current-track__actions">

        <!-- <a class="icon icon ion-ios-skipbackward" onclick="prevSong()"></a> -->
        <ion-icon class="ion-icon-withborder" name="play-skip-back-outline" onclick="prevSong()"></ion-icon>
        <div class="playbutton">
            <a class="icon icon ion-ios-play play" onclick="playSong()"></a>
        </div>
        <div class="pausebutton">
            <a class="icon icon ion-ios-pause pause" onclick="pauseSong()"></a>
        </div>
        <ion-icon class="ion-icon-withborder" name="play-skip-forward-outline" onclick="nextSong()"></ion-icon>
        <!-- <a class="icon ion-ios-skipforward" onclick="nextSong()"></a> -->

    </div>


    <div class="playbackBar">

        <span class="progressTime current-track__progress__start">0.00</span>

        <div class="progressBar">

            <div class="progressBarBg">

                <div class="progressmade"></div>

            </div>

        </div>

        <span class="progressTime current-track__progress__finish">0.00</span>

    </div>


    <div class="current-track__options">


        <span class="controls">

            <a href="#" class="control" onclick="songQueue()">
                <ion-icon class="songqueueicon noborder" name="list-sharp"></ion-icon>
            </a>

            <a href="#" class="control" onclick="songMixers()">
                <ion-icon class="songmixicon noborder" name="radio-outline"></ion-icon>
            </a>

            <a href="#" class="control shuffle" onclick="setShuffle()">
                <i class="ion-ios-shuffle"></i>
                <!-- <ion-icon name="shuffle-sharp"></ion-icon> -->
            </a>

            <a href="#" class="control repeat" onclick="setRepeat()">
                <i class="ion-refresh"></i>
            </a>
            <a href="#" class="control settings" onclick="openPage('settings')">
                <i class="icon ion-settings"></i>
            </a>

            <a href="#" class="control volume">

                <i class="ion-volume-high" onclick="setMute()"></i>

                <div class="progressBar">

                    <div class="progressBarBg">

                        <div class="volumeprogress"></div>

                    </div>

                </div>

            </a>

        </span>

    </div>

</section>