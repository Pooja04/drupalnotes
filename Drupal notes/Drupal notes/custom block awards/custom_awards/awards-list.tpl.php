
<?php
global $base_url;
if (is_array($data) && count($data) > 0) {
  ?>
  <div class="awards_content" id="awardsList">
    <?php
    $i = 0;
    ?>
    <div class="awards_year_wrapper">
      <span class="year_pointer"></span>
      <ul class="awards_year clearfix">
        <?php
        foreach ($data as $year => $value) {
          $year = trim($year);
          ?>
          <li <?php if ($i == 0) { ?> class="Selected first" <?php } if ($i == sizeof($data) - 1) { ?> class="last" <?php } ?> id="awards<?php echo $year; ?>">
            <?php echo $year; ?>
          </li>
          <?php
          $i++;
        }
        ?>
      </ul>
    </div>

    <div class="awardsData clearfix">

      <?php
      $j = 0;
      foreach ($data as $year => $awards_content) {
        $year = trim($year);
        ?>
        <ul <?php if ($j == 0) { ?> style="display:block;" <?php } ?> id="awards<?php echo $year; ?>">
          <?php
          $li_cnt = 1;
          foreach ($awards_content as $key => $value) {
            $rand = rand(1, 4);
            $class = "color" . $rand;
            ?>
            <li <?php if ($li_cnt % 3 == 0) { ?>class="awards_block awards_block_last"  <?php } else { ?>class="awards_block"<?php } ?>>
              <div class="awards_image">
                <?php
                if ($value['image_uri'] != "") {
                  $image_thumbnail = image_style_url('awards-thumb-image', $value['image_uri']);
                } else {
                  $image_thumbnail = $base_url . "/" . drupal_get_path('theme', 'dgsl') . "/images/noimage_awards.png";
                }
                ?>
                <img src="<?php echo $image_thumbnail; ?>" alt="" title="" >
              </div>
              <div class="awards-title"><?php echo $value["body"]; ?></div>
              <div class="color-stripe <?php echo $class; ?>"></div>
            </li>
            <?php
            $li_cnt++;
          }
          ?>
        </ul>
        <?php
        $j++;
      }
      ?>

    </div>
  </div>
  <?php
} else {
  ?>
  <div>No data found</div>
  <?php
}
?>
