<?php
 abstract class UserAbstract{
    abstract function showInfo();
  }





  class User extends  UserAbstract{
    public $name;
    public $login;
    public $password;
	static public $countUser=0;

     function __construct($name,$login,$password){  // �����������
      $this->name=$name;
      $this->login=$login;
      $this->password=$password;
	  ++self::$countUser;

      echo "obiekt sozdan" .self::$countUser. " klassa '".__CLASS__."'.
      name: '{$this->name}';
      login: '{$this->login}';
      password: '{$this->password}';
      <br>\n";
    }

    function __clone(){  // ����
      echo "kopia klassa '".__CLASS__."'.
      name: '{$this->name}';
      login: '{$this->login}';
      password: '{$this->password}';
      <br>\n";
    }

   function __destruct(){  // ����������
      echo "klass ydalen '".__CLASS__."'. name: {$this->name};<br>\n";
    }

    function showInfo(){
      echo "obiekt klassa '".__CLASS__."'.
      name: '{$this->name}';
      login: '{$this->login}';
      password: '{$this->password}';
      <br>\n";
    }

  }







  class SuperUser extends User{
    public $role;
	static public $countSuperUser;

    function __construct($name,$login,$password,$role){
      parent::__construct($name,$login,$password);
      $this->role = $role;
	  ++self::$countSuperUser;

	  echo "obiekt klassa sozdan".self::$countSuperUser." klassa '".__CLASS__."'.
      role: '{$this->role}';
      <br>\n";
    }

    function showInfo(){
      echo "obiekt klassa '".__CLASS__."'.
      name: '{$this->name}';
      login: '{$this->login}';
      password: '{$this->password}';
      role: '{$this->role}';
      <br>\n";
    }
  }






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
