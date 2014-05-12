<?php ?>
<div class="box manufacturerAbc">
  <div class="box-heading"><span><?php echo $heading_title; ?></span></div>
  <div class="box-content">

<?php
    $i=0;
    foreach ($categories as $category) {
        if($i == 0)
          echo "&nbsp;&nbsp;&nbsp;";
        else
          echo "<img class='divider' src='image/manufacturerPoint.png'/>";
        ?>
        <a href="<?php echo $href; ?>#<?php echo $category['name']; ?>"><b><?php echo $category['name']; ?></b></a>
        <?php
        $i++;
        } ?>

  </div>
</div>
