
<h1>Hello PHP</h1>

        Keresés: <input type="text" name="nev" onkeyup="nevetKeres(this.value)">
        <div id="lista"></div>

        <script>
                function nevetKeres(betuk) {
                        if (betuk.length == 0) {
                                document.getElementById("lista").innerHTML = "";
                                return;
                        } else {
                                var xmlhttp = new XMLHttpRequest();
                                xmlhttp.onload = function() {
                        if (this.readyState == 4 && this.status == 200) {
                                document.getElementById("lista").innerHTML = this.responseText;
                        }
                }

                xmlhttp.open("GET", "ajax.php?keres=" + betuk);
                xmlhttp.send();
                 }
        }
        </script>
