<title>Important Notices</title>
<?php
include_once '../head.php';
if (isset($_SESSION['uid'])) {
include 'inheader.php';
}
else if (isset($_SESSION['id'])) {
include 'inheader.php';
}else {
  header('Location: ../index.php');
  exit();
}
include '../footer.php';
 ?>
<div class="mid">
<p class="texttitle">Notices</p>
<form class="notice" action="../includes/notice.php" method="POST">
  <textarea name="notice"></textarea>
<button type="submit" name="submit">Publish</button>
</form>
</div>
