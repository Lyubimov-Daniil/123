<?php

  spl_autoload_register(function($class){
    include "/domains/localhost/php/$class.class.php";
  });
 

  $user01 = new User("Daniil","Miggi","123");
  $user02 = new User("Mark","Zod", "456");
  $user03 = new User("Civic","EG6","789");

  echo "<br>\n";

  $user04 = new SuperUser("Miggi","Miggi","Miggi","main");
  echo "<br>\n";

  $user04->showInfo();
  echo "<br>\n";

  echo "sozdano ".User::$countUser." obiekt klassa User_be<br>\n";
  echo "sozdano ".SuperUser::$countSuperUser." obiekt klassa SuperUser_be<br>\n";
  echo "<br>\n";

  unset($user01,$user02,$user03,$user04);

?>
