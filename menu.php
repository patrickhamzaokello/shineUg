<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        #ctxMenu {
            display: none;
            z-index: 100;
        }

        menu {
            position: absolute;
            display: block;
            left: 0px;
            top: 0px;
            height: 20px;
            width: 20px;
            padding: 0;
            margin: 0;
            border: 1px solid;
            background-color: white;
            font-weight: normal;
            white-space: nowrap;
        }

        menu:hover {
            background-color: #eef;
            font-weight: bold;
        }

        menu:hover>menu {
            display: block;
        }

        menu>menu {
            display: none;
            position: relative;
            top: -20px;
            left: 100%;
            width: 55px;
        }

        menu[title]:before {
            content: attr(title);
        }

        menu:not([title]):before {
            content: "\2630";
        }
    </style>

    <title>Document</title>
</head>

<body >

<div id="notepad" class="p"><button>Click ME</button></div>
    <menu id="ctxMenu">
        <menu title="File">
            <menu title="Save"></menu>
            <menu title="Save As"></menu>
            <menu title="Open"></menu>
        </menu>
        <menu title="Edit">
            <menu title="Cut"></menu>
            <menu title="Copy"></menu>
            <menu title="Paste"></menu>
        </menu>
    </menu>

    <script>
        var notepad = document.getElementById("notepad");
        notepad.addEventListener("contextmenu", function(event) {
            event.preventDefault();
            var ctxMenu = document.getElementById("ctxMenu");
            ctxMenu.style.display = "block";
            ctxMenu.style.left = (event.pageX - 10) + "px";
            ctxMenu.style.top = (event.pageY - 10) + "px";
        }, false);
        notepad.addEventListener("click", function(event) {
            var ctxMenu = document.getElementById("ctxMenu");
            ctxMenu.style.display = "";
            ctxMenu.style.left = "";
            ctxMenu.style.top = "";
        }, false);
    </script>
</body>

</html>