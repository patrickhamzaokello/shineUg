var currentPlaylist = [];
var shufflePlaylist = [];
var tempPlaylist = [];
var audioElement;
var mouseDown = false;
var currentIndex = 0;
var repeat = false;
var shuffle = false;
var userLoggedIn;
var userloggedInID;
var artistGot;
var currentuser;
var timer;
var isRegistered;
var sessionsonglistencount = 0;
var adfinished;
var confirmmix = false;

$(document).click(function (click) {
  var target = $(click.target);

  if (!target.hasClass("item") && !target.hasClass("ion-more")) {
    hideOptionsMenu();
  }

  if (target.hasClass("item") && target.hasClass("ion-more")) {
    hidetoggleclickedit();
  }
});

$(window).scroll(function () {
  hideOptionsMenu();
});

$(document).on("change", "select.playlistname", function () {
  var select = $(this);
  var playlistId = select.val();
  var songId = select.prev(".songId").val();

  $.post("includes/handlers/ajax/addToPlaylist.php", {
    playlistId: playlistId,
    songId: songId,
  }).done(function (error) {
    if (error != "") {
      alert(error);
      return;
    }

    hideOptionsMenu();
    select.val("");
  });
});

$(window).on("load", function () {
  $("#mainContent").show();
  // $("#loadingLoader").hide();
  $(".lds-facebook").hide();
  $("#playlists").load("includes/playlistlistings.php");
});

function hidetoggleclickedit() {
  var menu = $(".playlisteditaction");
  if (menu.css("display") != "none") {
    menu.css("display", "none");
  }
}

function toggleclickedit(event) {
  var div = $(".playlisteditaction");
  var playlistoption = $("#togglemore");
  div.css({
    position: "absolute",
    display: "block",
    top: event.pageY,
    left: event.pageX,
  });

  var delayTimer = setTimeout(function () {
    $that.fadeIn("slow");
  }, 100);

  div
    .mouseover(function (event) {
      if (delayTimer) clearTimeout(delayTimer);
    })
    .mouseout(function () {
      if (delayTimer) clearTimeout(delayTimer);
      var $that = $(this);
      delayTimer = setTimeout(function () {
        $that.fadeOut("slow");
      }, 500);
    });

  playlistoption.mouseout(function () {
    if (delayTimer) clearTimeout(delayTimer);
    var $that = $(div);
    delayTimer = setTimeout(function () {
      $that.fadeOut("slow");
    }, 400);
  });
}

function artistnavitem() {
  const artistnavitembtn = document.getElementById("artistnavitem");
  const albumnavitembtn = document.getElementById("albumnavitem");
  const podcastnavitembtn = document.getElementById("podcastnavitem");
  const poemnavitembtn = document.getElementById("poemnavitem");
  const djmixnavitembtn = document.getElementById("djmixnavitem");
  artistnavitembtn.classList.add("active__nav");
  albumnavitembtn.classList.remove("active__nav");
  podcastnavitembtn.classList.remove("active__nav");
  poemnavitembtn.classList.remove("active__nav");
  djmixnavitembtn.classList.remove("active__nav");
}

function albumnavitem() {
  const artistnavitembtn = document.getElementById("artistnavitem");
  const albumnavitembtn = document.getElementById("albumnavitem");
  const podcastnavitembtn = document.getElementById("podcastnavitem");
  const poemnavitembtn = document.getElementById("poemnavitem");
  const djmixnavitembtn = document.getElementById("djmixnavitem");
  artistnavitembtn.classList.remove("active__nav");
  albumnavitembtn.classList.add("active__nav");
  podcastnavitembtn.classList.remove("active__nav");
  poemnavitembtn.classList.remove("active__nav");
  djmixnavitembtn.classList.remove("active__nav");
}

function podcastnavitem() {
  const artistnavitembtn = document.getElementById("artistnavitem");
  const albumnavitembtn = document.getElementById("albumnavitem");
  const podcastnavitembtn = document.getElementById("podcastnavitem");
  const poemnavitembtn = document.getElementById("poemnavitem");
  const djmixnavitembtn = document.getElementById("djmixnavitem");
  artistnavitembtn.classList.remove("active__nav");
  albumnavitembtn.classList.remove("active__nav");
  podcastnavitembtn.classList.add("active__nav");
  poemnavitembtn.classList.remove("active__nav");
  djmixnavitembtn.classList.remove("active__nav");
}
function poemnavitem() {
  const artistnavitembtn = document.getElementById("artistnavitem");
  const albumnavitembtn = document.getElementById("albumnavitem");
  const podcastnavitembtn = document.getElementById("podcastnavitem");
  const poemnavitembtn = document.getElementById("poemnavitem");
  const djmixnavitembtn = document.getElementById("djmixnavitem");
  artistnavitembtn.classList.remove("active__nav");
  albumnavitembtn.classList.remove("active__nav");
  podcastnavitembtn.classList.remove("active__nav");
  poemnavitembtn.classList.add("active__nav");
  djmixnavitembtn.classList.remove("active__nav");
}
function djmixnavitem() {
  const artistnavitembtn = document.getElementById("artistnavitem");
  const albumnavitembtn = document.getElementById("albumnavitem");
  const podcastnavitembtn = document.getElementById("podcastnavitem");
  const poemnavitembtn = document.getElementById("poemnavitem");
  const djmixnavitembtn = document.getElementById("djmixnavitem");
  artistnavitembtn.classList.remove("active__nav");
  albumnavitembtn.classList.remove("active__nav");
  podcastnavitembtn.classList.remove("active__nav");
  poemnavitembtn.classList.remove("active__nav");
  djmixnavitembtn.classList.add("active__nav");
}

function updatePassword(
  oldPasswordClass,
  newPasswordClass1,
  newPasswordClass2
) {
  var oldPassword = $("." + oldPasswordClass).val();
  var newPassword1 = $("." + newPasswordClass1).val();
  var newPassword2 = $("." + newPasswordClass2).val();

  $.post("includes/handlers/ajax/updatePassword.php", {
    oldPassword: oldPassword,
    newPassword1: newPassword1,
    newPassword2: newPassword2,
    username: userLoggedIn,
  }).done(function (response) {
    $("." + oldPasswordClass)
      .nextAll(".message")
      .text(response);
  });
}

function updateEmail(emailClass) {
  var emailValue = $("." + emailClass).val();

  $.post("includes/handlers/ajax/updateEmail.php", {
    email: emailValue,
    username: userLoggedIn,
  }).done(function (response) {
    $("." + emailClass)
      .nextAll(".message")
      .text(response);
  });
}

function logout() {
  $.post("includes/handlers/ajax/logout.php", function () {
    document.cookie = "userID=; expires=Thu, 18 Dec 2030 12:00:00 UTC;";
    window.location.href = "register";
  });
}

function openPage(url) {
  if (timer != null) {
    clearTimeout(timer);
  }

  minimize();

  if (url.indexOf("?") == -1) {
    url = url + "?";
  }
  var encodedUrl = encodeURI(url + "&userLoggedIn=" + userLoggedIn);
  $("#mainContent").hide();
  $(".lds-facebook").show();
  $("#mainContent").load(encodedUrl);
  $("#mainContent").animate({ scrollTop: 0 }, "fast");

  history.pushState(null, null, url);
  document.getElementById("navmenu").classList.remove("change");
  document.getElementById("nav").classList.remove("navchange");
}

function removeFromYourSongs(button, username) {
  var songId = $(button).prevAll(".songId").val();

  $.post("includes/handlers/ajax/removeFromYourSongs.php", {
    username: username,
    songId: songId,
  }).done(function (error) {
    if (error != "") {
      alert(error);
      return;
    }

    //do something when ajax returns
    openPage("userSongs");
  });
}

function removeFromPlaylist(button, playlistId) {
  var songId = $(button).prevAll(".songId").val();

  $.post("includes/handlers/ajax/removeFromPlaylist.php", {
    playlistId: playlistId,
    songId: songId,
  }).done(function (error) {
    if (error != "") {
      alert(error);
      return;
    }

    //do something when ajax returns
    openPage("playlist?id=" + playlistId);
  });
}

function createPlaylist() {
  var popup = prompt("Playlist Name");

  if (popup != null) {
    $.post("includes/handlers/ajax/createPlaylist.php", {
      name: popup,
      username: userLoggedIn,
      userId: currentuser,
    }).done(function (error) {
      if (error != "") {
        alert(error);
        return;
      }

      //do something when ajax returns
      openPage("playlists");
      $("#playlists").load("includes/playlistlistings.php");
    });
  }
}

function dialogcancelbutton() {
  const dialogbox = document.querySelector("#DialogBox");
  dialogbox.style.display = "none";
  $("#overlay").css({
    opacity: 0,
    position: "absolute",
    top: 0,
    left: 0,
    "background-color": "black",
    width: "100%",
    "z-index": -10,
  });
}

function showRegisterDialog() {
  $(".showdialogbox").load("includes/dialogs/feature_user_prompt.php");
  $(function () {
    var docHeight = $(document).height();

    $("body").append("<div id='overlay'></div>");
    $("#overlay").height(docHeight).css({
      opacity: 0.4,
      position: "absolute",
      top: 0,
      left: 0,
      "background-color": "black",
      width: "100%",
      "z-index": 5000,
    });
  });

  return true;
}

function showMwonyaamixdialog(confirmmix) {
  $(".showdialogbox").load("includes/dialogs/mwonyaamixprompt.php");
  var docHeight = $(document).height();

  $("body").append("<div id='overlay'></div>");
  $("#overlay").height(docHeight).css({
    opacity: 0.4,
    position: "absolute",
    top: 0,
    left: 0,
    "background-color": "black",
    width: "100%",
    "z-index": 5000,
  });

  return confirmmix;
}

function mixstartbutton() {
  confirmmix = true;
  const mixconfirmbtn = document.querySelector("#confirmbuttonid");
  mixconfirmbtn.style.backgroundColor = "#D90416";
  mixconfirmbtn.innerHTML = "Confirmed!";
  nextSong();
  dialogcancelbutton();
}

function mixcancelbutton() {
  const dialogbox = document.querySelector("#DialogBox");
  dialogbox.style.display = "none";

  currentIndex = 0;
  var trackToPlay = shuffle
    ? shufflePlaylist[currentIndex]
    : currentPlaylist[currentIndex];
  setTrack(trackToPlay, currentPlaylist, true);

  $("#overlay").css({
    opacity: 0,
    position: "absolute",
    top: 0,
    left: 0,
    "background-color": "black",
    width: "100%",
    "z-index": -10,
  });

  return;
}

function showPreviewDialog() {
  $(".showdialogbox").load("includes/dialogs/feature_preview.php");
  $(function () {
    var docHeight = $(document).height();

    $("body").append("<div id='overlay'></div>");
    $("#overlay").height(docHeight).css({
      opacity: 0.4,
      position: "absolute",
      top: 0,
      left: 0,
      "background-color": "black",
      width: "100%",
      "z-index": 5000,
    });
  });
}

function showComingsoonDialog() {
  $(".showdialogbox").load("includes/dialogs/comingsoondialog.php");
  $(function () {
    var docHeight = $(document).height();

    $("body").append("<div id='overlay'></div>");
    $("#overlay").height(docHeight).css({
      opacity: 0.4,
      position: "absolute",
      top: 0,
      left: 0,
      "background-color": "black",
      width: "100%",
      "z-index": 5000,
    });
  });
}

function createAccount() {
  var fullpath;
  fullpath = window.location.pathname + window.location.search;
  window.location.href = "register?location=" + encodeURIComponent(fullpath);
}

function dialogBrowsepage() {
  const dialogbox = document.querySelector("#DialogBox");
  dialogbox.style.display = "none";
  $("#overlay").css({
    opacity: 0,
    position: "absolute",
    top: 0,
    left: 0,
    "background-color": "black",
    width: "100%",
    "z-index": -10,
  });
  openPage("browse");
}

function readimageURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function (e) {
      $("#blah").attr("src", e.target.result);
    };

    reader.readAsDataURL(input.files[0]);
  }
}

function improvedcreateplaylist() {
  const endPoint = "includes/handlers/ajax/createPlaylist.php";

  // hide messages
  $("#error").hide();
  $("#show_message").hide();

  // on submit...
  $("#error").hide();

  //First name required
  var playlistname = $("input#plname").val();
  if (playlistname == "") {
    $("#error").fadeIn().text("Playlist Name Required is required.");
    $("input#plname").focus();
    return false;
  }

  // last name required
  var playlistdescription = $("input#pldesc").val();
  if (playlistdescription == "") {
    $("#error").fadeIn().text("Short Description is required");
    $("input#pldesc").focus();
    return false;
  }

  // File upload required
  var formdata = new FormData();
  const inputfile = document.getElementById("file-input-createplaylist");

  if (inputfile.files["length"] == 0) {
    $("#error").fadeIn().text("Choose Cover Picture. Use 300 x 300 image");
    return false;
  }

  //check image size should be < 3.6M
  if (inputfile.files[0]["size"] > 3620127) {
    $("#error").fadeIn().text("Image is too large. Use 300 x 300 image");
    return false;
  }

  //check if file is added
  if (inputfile.files[0]["size"] < 0) {
    $("#error").fadeIn().text("Add Cover Image. Use 300 x 300 image");
    return false;
  }

  formdata.append("inputfile", inputfile.files[0]);
  formdata.append(
    "name",
    playlistname.replace(/['"]+/g, "").replace(/[^\w\s]/gi, "")
  );
  formdata.append("username", userLoggedIn);
  formdata.append("userId", currentuser);
  formdata.append(
    "playlistdescription",
    playlistdescription.replace(/['"]+/g, "").replace(/[^\w\s]/gi, "")
  );

  fetch(endPoint, {
    method: "post",
    body: formdata,
  })
    .then((response) => response.text())
    .then((id_playlist) => {
      if (id_playlist != "error") {
        openPage("playlist?id=" + id_playlist);
      }
      $("#show_message")
        .fadeIn()
        .text("Playlist " + playlistname + " Created Successfully");
      $("#playlists").load("includes/playlistlistings.php");
    })
    .catch(console.error);
}

function sharebutton(linktocopy) {
  if (isRegistered === "registered") {
    var inputc = document.body.appendChild(document.createElement("input"));
    inputc.value = linktocopy.split("&")[0];
    inputc.focus();
    inputc.select();
    inputc.setSelectionRange(0, 99999); /* For mobile devices */
    document.execCommand("copy");
    inputc.parentNode.removeChild(inputc);
    var copybutton = document.getElementById("songcopybutton");
    copybutton.style.backgroundColor = "#920022";
    copybutton.style.color = "#fff";
    copybutton.innerText = "Link Copied";
  } else {
    showPreviewDialog();
  }
}

function deletePlaylist(playlistId) {
  var prompt = confirm("are you sure you want to delete this playlist?");

  if (prompt == true) {
    $.post("includes/handlers/ajax/deletePlaylist.php", {
      playlistId: playlistId,
      userLoggedIn: userLoggedIn,
    }).done(function (error) {
      openPage("playlists");
      $("#playlists").load("includes/playlistlistings.php");
    });
  }
}

function renamePlaylist(playlistId) {
  var newname = prompt("Playlist New Name");

  newname = newname.replace(/[|&;$%@"<>()+,]/g, "");

  if (newname != null) {
    $.post("includes/handlers/ajax/renameplaylist.php", {
      newname: newname,
      playlistId: playlistId,
      userLoggedIn: userLoggedIn,
    }).done(function (error) {
      if (error != "") {
        alert(error);
        return;
      }

      //do something when ajax returns
      openPage("playlists");
      $("#playlists").load("includes/playlistlistings.php");
    });
  }
}

function sharePlaylist(playlistId, sharetag) {
  var prompt = confirm("Confirm to make Playlist Public?");

  if (prompt == true) {
    $.post("includes/handlers/ajax/shareplaylist.php", {
      playlistId: playlistId,
      userLoggedIn: userLoggedIn,
      sharetag: sharetag,
    }).done(function (error) {
      if (error != "") {
        alert(error);
        return;
      }

      //do something when ajax returns
      openPage("playlists");
      $("#playlists").load("includes/playlistlistings.php");
    });
  }
}

function shareOnlyFriends(playlistId, sharetag) {
  var prompt = confirm("Share Playlist with Only Your Friends Here");

  if (prompt == true) {
    $.post("includes/handlers/ajax/shareplaylist.php", {
      playlistId: playlistId,
      userLoggedIn: userLoggedIn,
      sharetag: sharetag,
    }).done(function (error) {
      if (error != "") {
        alert(error);
        return;
      }

      //do something when ajax returns
      openPage("playlists");
      $("#playlists").load("includes/playlistlistings.php");
    });
  }
}

function refreshing() {
  $("#playlists").load("includes/playlistlistings.php");
}

function hideOptionsMenu() {
  var menu = $(".optionsMenu");
  var navbug = $(".navchange");
  if (menu.css("display") != "none") {
    menu.css("display", "none");
  }

  // if (navbug.css("display") != "none") {
  //   navbug.css("display", "none");
  // }
}

function showOptionsMenu(button) {
  if (isRegistered === "registered") {
    var songId = $(button).prevAll(".songId").val();

    var menu = $(".optionsMenu");
    var menuWidth = menu.width();
    menu.find(".songId").val(songId);

    var scrollTop = $(window).scrollTop(); //distrance from top of window to top of document
    var elementOffset = $(button).offset().top; //distance from top of document

    var top = elementOffset - scrollTop;
    var left = $(button).position().left;

    menu.css({
      top: top + "px",
      left: left - menuWidth + "px",
      display: "inline",
    });
  } else {
    showPreviewDialog();
  }
}

// function showOptionsMenu(button) {
//   const img = document.querySelector(".ion-more");
//   const menu = document.querySelector(".optionsMenu");
//   img.addEventListener("mousedown", ({ offsetX, offsetY }) => {
//     menu.style.top = offsetY + "px";
//     menu.style.left = offsetX + "px";
//     menu.style.display = "inline";
//   });
// }

function addSongLiked(button) {
  if (isRegistered === "registered") {
    var artistId = $(button).prevAll(".artistId").val();
    var songId = $(button).prevAll(".songId").val();

    if (songId != null) {
      $.post("includes/handlers/ajax/addLikedSong.php", {
        songId: songId,
        artistId: artistId,
        username: userLoggedIn,
        currentuser: currentuser,
      }).done(function (error) {
        if (error != "") {
          alert(error);
          return;
        }

        //do something when ajax returns
        // openPage("playlists.php");
        // $("#playlists").load(location);
        $(button, ".ion-plus").css("color", "yellow");
      });
    }
  } else {
    showPreviewDialog();
  }
}

function followArtist(artistID, userID, tag) {
  if (isRegistered === "registered") {
    if (artistID != null && userID != null) {
      $.post("includes/handlers/ajax/artistFollowing.php", {
        artistID: artistID,
        userID: userID,
        tag: tag,
      }).done(function (error) {
        if (error != "") {
          alert(error);
          return;
        }

        //do something when ajax returns
        if (tag == 0) {
          $(".followbutton").css("background", "#4688d7");
          $(".followbutton").css("border", "#4688d7");
          $(".followbutton").css("color", "#fff");
        } else if (tag == 1) {
          $(".unfollowbutton").css("background", "#f44336");
          $(".unfollowbutton").css("border", "#f44336");
          $(".unfollowbutton").text("Follow");
          $(".unfollowbutton").css("color", "#fff");
        }

        $("#artistlogic").load("includes/artistfollowlogic.php?id=" + artistID);
      });
    }
  } else {
    showPreviewDialog();
  }
}

function followfriend(userID, userName, friendID, otheruserName, tag) {
  if (isRegistered === "registered") {
    if (userID != null && friendID != null) {
      $.post("includes/handlers/ajax/followfriend.php", {
        userID: userID,
        userName: userName,
        friendID: friendID,
        otheruserName: otheruserName,
        tag: tag,
      }).done(function (error) {
        if (error != "") {
          alert(error);
          return;
        }
        //do something after ajax returns
        $(".usercollection").load("includes/userfollowinglogic.php");
        $("#sharedplaylistshowing").load("includes/sharedPlaylistlogic.php");
      });
    }
  } else {
    showPreviewDialog();
  }
}

function formatTime(seconds) {
  var time = Math.round(seconds);
  var minutes = Math.floor(time / 60); //Rounds down
  var seconds = time - minutes * 60;

  var extrazero = seconds < 10 ? "0" : "";

  return minutes + ":" + extrazero + seconds;
}

function updateTimeProgressBar(audio) {
  $(".progressTime.current-track__progress__start").text(
    formatTime(audio.currentTime)
  );
  $(".progressTime.current-track__progress__finish").text(
    formatTime(audio.duration - audio.currentTime)
  );

  var progress = (audio.currentTime / audio.duration) * 100;
  $(".progressmade").css("width", progress + "%");
  // $("input[type=range]").val(progress); // sets value to 6
}

function updatecancelbutton(audio) {
  if (audio.duration == audio.currentTime) {
    dialogcancelbutton();
  }
}

function updateVolumeProgressBar(audio) {
  var volume = audio.volume * 100;
  $(".volumeprogress").css("width", volume + "%");
}

function playFirstSong() {
  setTrack(tempPlaylist[0], tempPlaylist, true);
  $(".ion-ios-play.mainplay").hide();
  $(".mainplaybutton").hide();

  $(".ion-ios-pause.mainpause").show();
  $(".mainpausebutton").show();

  $(".playmainbutton").css("background", "#5E0A86");
  $(".playmainbutton").css("color", "#fff");
}

function Audio() {
  this.currentlyPlaying;
  this.audio = document.createElement("audio");

  this.audio.addEventListener("ended", function () {
    nextSong();
  });

  this.audio.addEventListener("play", function () {
    $(".lds-dual-ring").css("display", "flex");
    $(".playing__art img").css("opacity", "40%");
  });

  this.audio.addEventListener("waiting", function () {
    $(".lds-dual-ring").css("display", "flex");
    $(".playing__art img").css("opacity", "40%");
  });

  this.audio.addEventListener("playing", function () {
    $(".lds-dual-ring").css("display", "none");
    $(".playing__art img").css("opacity", "100%");
    $(".songviewimage").addClass("spinitem");
  });

  this.audio.addEventListener("canplay", function () {
    //this refers to the object that the event was called on
    var duration = formatTime(this.duration);
    $(".current-track__progress__finish").text(duration);
  });

  this.audio.addEventListener("timeupdate", function () {
    if (this.duration) {
      updateTimeProgressBar(this);
      updatecancelbutton(this);
    }
  });

  this.audio.addEventListener("volumechange", function () {
    updateVolumeProgressBar(this);
  });

  this.setTrack = function (track) {
    this.currentlyPlaying = track;
    this.audio.src = track.path;

    // making song css tracker

    $("input[value=" + this.currentlyPlaying[0] + "]")
      .parent()
      .parent()
      .addClass("pkkkk");
    $(".pkkkk").css("border-left", "none");
    $(".pkkkk").css("background", "none");

    if (
      $("input[value=" + this.currentlyPlaying[0] + "]")
        .parent()
        .parent()
        .hasClass("pkkkk")
    ) {
      $(".track").removeClass("pkkkk");
      $("input[value=" + this.currentlyPlaying[0] + "]")
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
  };

  this.play = function () {
    this.audio.play();
  };

  this.pause = function () {
    this.audio.pause();
  };

  this.setTime = function (seconds) {
    this.audio.currentTime = seconds;
  };
}

function notifyMe(messagetext) {
  // Let's check if the browser supports notifications
  if (!("Notification" in window)) {
    alert("This browser does not support desktop notification");
  }

  // Let's check whether notification permissions have already been granted
  else if (Notification.permission === "granted") {
    // If it's okay let's create a notification

    var options = {
      body: messagetext,
      icon: "assets/images/artistprofiles/Wesley_profile_20210406163905_01978.jpg",
      badge:
        "assets/images/artistprofiles/Wesley_profile_20210406163905_01978.jpg",
      tag: "Welcome notification",
      image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu70PrXPkd7-hFULbCex5-n5dfR88z7hF1Ag&usqp=CAU",
    };

    var notification = new Notification((title = "Mwonyaa Music"), options);
  }

  // Otherwise, we need to ask the user for permission
  else if (Notification.permission !== "denied") {
    Notification.requestPermission().then(function (permission) {
      // If the user accepts, let's create a notification
      if (permission === "granted") {
        var notification = new Notification("Hi there!");
      }
    });
  }

  // At last, if the user has denied notifications, and you
  // want to be respectful there is no need to bother them any more.
}

function playerView() {
  // var rgb = getAverageRGB(document.getElementById("albumartworkbg"));

  $(".playing").css({
    position: "fixed",
    bottom: "0",
    height: "100%",
    "border-top": "none",
    left: "0",
    // backgroundColor: "rgb(" + rgb.r + "," + rgb.g + "," + rgb.b + ")",
    // backgroundColor: "rgb(" + (rgb.r)*(1/4) + "," + (rgb.g)*(1/2) + "," + (rgb.b)*(3/4) + ")",
    background: "#1f102d",
    width: "100%",
    "z-index": "100",
    // "border-radius": "25px 25px 0 0",
    display: "block",
    "box-shadow": "1px -4px 20px 0px #1f102d",
    overflow: "hidden",
    "	transition-property": "all",
    "transition-duration": "0.5s",
    "transition-timing-function": "cubic-bezier(0, 1, 0.5, 1)",
  });

  $(".minimize").css({
    /* color: white; */
    /* padding: 0.5em 0px; */
    /* margin: 0px auto; */
    display: "grid",
    "place-content": "center",
    top: "-195px",
    position: "relative",
    bottom: "0",
  });

  $(".maxidicator").css({
    display: "none",
  });
  $(".progressTime").css({
    display: "block",
  });

  $(".minimize p").css({
    border: "2px solid",
    width: "42px",
    "text-align": "center",
    margin: "0 auto",
    color: "#d1a7ff",
  });

  $(".current-track__actions .playbutton").css({
    border: "none",
    height: "60px",
    width: "60px",
    "border-radius": "50%",
    "align-items": "center",
    "justify-content": "center",
    cursor: "pointer",
    outline: "none",
    transition: "0.5s",
    background: "white",
    position: "relative",
  });

  $(".current-track__actions .pausebutton").css({
    border: "none",
    height: "60px",
    width: "60px",
    "border-radius": "50%",
    "align-items": "center",
    "justify-content": "center",
    cursor: "pointer",
    outline: "none",
    transition: "0.5s",
    background: "white",
    position: "relative",
  });

  $(".current-track__actions .play").css({
    position: "absolute",
    color: "#1f102d",
    top: "50%",
    left: "54%",
    transform: "translate(-50%, -50%)",
  });

  $(".current-track__actions .pause").css({
    position: "absolute",
    color: "#1f102d",
    top: "50%",
    left: "50%",
    transform: "translate(-50%, -50%)",
  });

  $(".playing__song").css({
    color: "#aaaaaa",
    display: "block",
    width: "100%",
    margin: "0",
    position: "absolute",
    bottom: "31%",
    padding: "0 2em",

    "	transition-property": "all",
    "transition-duration": "0.5s",
    "transition-timing-function": "cubic-bezier(0, 1, 0.5, 1)",
  });

  $(".progressBarBg").css({
    "background-color": "rgb(241 241 241 / 14%)",
    height: "4px",
    width: "100%",
    "	transition-property": "all",
    "transition-duration": "0.5s",
    "transition-timing-function": "cubic-bezier(0, 1, 0.5, 1)",
  });

  $(".progressmade").css({
    "background-color": "#fff",
    height: "4px",
    // width: "0",
    "max-width": "100%",
    "border-radius": "0",
  });

  $(".ion-icon-withborder").css({
    padding: "0.5em",
    "border-radius": "50%",
    border: "1px solid",
    transition: ".4s",
  });

  $(".playing__song__name").css({
    "white-space": "normal",
    "text-align": "center",
    "mix-blend-mode": "screen",
  });
  $(".playing__song__artist").css({
    padding: "0.5em 0",
    "text-align": "center",
  });
  $(".songplaying").css({
    position: "fixed",
    /* right: 0; */
    left: "0",
    right: "0",
    margin: " 0 auto",
    width: "244px",
    height: "234px",
    bottom: "48%",
    "border-radius": "50%",
    /* height: 8%; */
    "z-index": "101",
    /* display: none !important; */
    "	transition-property": "all",
    "transition-duration": "0.5s",
    "transition-timing-function": "cubic-bezier(0, 1, 0.5, 1)",
  });
  $(".playing__art img").css({
    /* border-radius: 50%; */
    "background-color": "none",
    "border-radius": "10px",
    // "box-shadow": "1px 0px 20px 8px rgb(" + rgb.r + "," + rgb.g + "," + rgb.b + ")",
    "box-shadow": "rgb(13, 20, 31)",
    padding: "0",
  });

  $(".playing__art").css({
    display: "unset",
    "	transition-property": "all",
    "transition-duration": "0.5s",
    "transition-timing-function": "cubic-bezier(0, 1, 0.5, 1)",
  });

  $(".current-track").css({
    width: "100%",
    /* height: 70px; */
    "z-index": "101",
    background: "none",
    position: "fixed",
    bottom: "17%",
    display: "block",
    "	transition-property": "all",
    "transition-duration": "0.5s",
    "transition-timing-function": "cubic-bezier(0, 1, 0.5, 1)",
  });
  $(".current-track__options .controls").css({
    /* width: 85%; */
    display: "flex",
    "flex-flow": "row wrap",
    /* justify-content: space-between; */
    "align-items": "center",
    "align-items": "center",
    "mix-blend-mode": "screen",

    /* justify-items: center; */
    margin: "0 auto",
    "	transition-property": "all",
    "transition-duration": "0.5s",
    "transition-timing-function": "cubic-bezier(0, 1, 0.5, 1)",
  });

  $(".current-track__options").css({
    width: "203px",
    margin: "0 auto",
    display: "grid",
    "mix-blend-mode": "screen",

    "	transition-property": "all",
    "transition-duration": "0.5s",
    "transition-timing-function": "cubic-bezier(0, 1, 0.5, 1)",
  });

  $(".playbackBar").css({
    display: "flex",
    width: "100%",
    /* min-width: 40%; */
    position: "unset",
    padding: "1em 0",
    "align-items": "center",
    "	transition-property": "all",
    "transition-duration": "0.5s",
    "transition-timing-function": "cubic-bezier(0, 1, 0.5, 1)",
  });

  $(".playbackBar .progressBar").css({
    padding: "0 10px",
  });
}

function minimize() {
  $(".playing").removeAttr("style");

  $(".playing").css({
    "	transition-property": "all",
    "transition-duration": "0.5s",
    "transition-timing-function": "cubic-bezier(0, 1, 0.5, 1)",
  });

  $(".maxidicator").removeAttr("style");

  $(".minimize").removeAttr("style");
  $("ion-icon").removeAttr("style");

  $(".current-track__actions .playbutton").css({
    border: "",
    height: "",
    width: "",
    "border-radius": "",
    "align-items": "",
    "justify-content": "",
    cursor: "",
    outline: "",
    transition: "",
    background: "",
    position: "",
    "box-shadow": "",
  });
  $(".current-track__actions .pausebutton").css({
    border: "",
    height: "",
    width: "",
    "border-radius": "",
    "align-items": "",
    "justify-content": "",
    cursor: "",
    outline: "",
    transition: "",
    background: "",
    position: "",
    "box-shadow": "",
  });

  $(".current-track__actions .pause").css({
    position: "",
    color: "",
    top: "",
    left: "",
    transform: "",
  });
  $(".current-track__actions .play").css({
    position: "",
    color: "",
    top: "",
    left: "",
    transform: "",
  });

  $(".progressTime").removeAttr("style");
  $(".minimize p").removeAttr("style");

  $(".playing__song").removeAttr("style");

  $(".progressBarBg").removeAttr("style");

  $(".progressmade").removeAttr("style");
  $(".playbackBar .progressBar").removeAttr("style");

  $(".circlepause").removeAttr("style");
  $(".circleplay").removeAttr("style");

  $(".playing__song__name").removeAttr("style");
  $(".playing__song__artist").removeAttr("style");
  $(".songplaying").removeAttr("style");
  $(".playing__art img").removeAttr("style");
  $(".playing__art img").css({
    "	transition-property": "all",
    "transition-duration": "0.5s",
    "transition-timing-function": "cubic-bezier(0, 1, 0.5, 1)",
  });

  $(".playing__art").removeAttr("style");

  $(".current-track").removeAttr("style");
  $(".current-track").css({
    "	transition-property": "all",
    "transition-duration": "0.5s",
    "transition-timing-function": "cubic-bezier(0, 1, 0.5, 1)",
  });

  $(".current-track__options .controls").removeAttr("style");

  $(".current-track__options").removeAttr("style");

  $(".playbackBar").removeAttr("style");
}

function getAverageRGB(imgEl) {
  var blockSize = 5, // only visit every 5 pixels
    defaultRGB = {
      r: 31,
      g: 16,
      b: 45,
    }, // for non-supporting envs
    canvas = document.createElement("canvas"),
    context = canvas.getContext && canvas.getContext("2d"),
    data,
    width,
    height,
    i = -4,
    length,
    rgb = {
      r: 0,
      g: 0,
      b: 0,
    },
    count = 0;

  if (!context) {
    return defaultRGB;
  }

  height = canvas.height =
    imgEl.naturalHeight || imgEl.offsetHeight || imgEl.height;
  width = canvas.width = imgEl.naturalWidth || imgEl.offsetWidth || imgEl.width;

  context.drawImage(imgEl, 0, 0);

  try {
    data = context.getImageData(0, 0, width, height);
  } catch (e) {
    /* security error, img on diff domain */
    // alert("x");
    return defaultRGB;
  }

  length = data.data.length;

  while ((i += blockSize * 4) < length) {
    ++count;
    rgb.r += data.data[i];
    rgb.g += data.data[i + 1];
    rgb.b += data.data[i + 2];
  }

  // ~~ used to floor values
  rgb.r = ~~(rgb.r / count);
  rgb.g = ~~(rgb.g / count);
  rgb.b = ~~(rgb.b / count);

  return rgb;
}
