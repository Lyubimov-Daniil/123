<?php
class User{
      public $name;
      public $login;
      public $password;

      function showInfo(){
        echo "name: '{$this->name}'; login: '{$this->login}'; password: '{$this->password}';<br>\n";
      }

    }

    $user01 = new User;
    $user01 -> name = "Daniil";
    $user01 -> login = "Miggi";
    $user01 -> password =  "123" ;

    $user02 = new User;
    $user02 -> name = "Mark";
    $user02 -> login = "Zod";
    $user02 -> password = "456";

    $user03 = new User;
    $user03 -> name = "Civic";
    $user03 -> login = "EG6";
    $user03 -> password = "789";

    $content.=$user01 -> showInfo();
    $content.=$user02 -> showInfo();
    $content.=$user03 -> showInfo();

?>
