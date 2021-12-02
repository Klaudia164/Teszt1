<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<?php

?>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <?php
      
        foreach($menupontok as $key => $value) {
            $active = '';
            if($_SERVER['REQUEST_URI'] == '/teszt/'.$key) $active = ' active';

            if($key == 'felhasznalo') $key.='&action='.$action;
            ?>
            <li class="nav-item<?php echo $active; ?>">
                <a class="nav-link" href="index.php?page=<?php echo $key; ?>"><?php echo $value; ?></a>
            </li>
            <?php            
        }

      ?>
    </ul>
  </div>
</nav>