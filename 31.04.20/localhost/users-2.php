<?php

  class User{
    public $name;
    public $login;
    public $password;

    function __construct($name,$login,$password){  // �����������
      $this->name=$name;
      $this->login=$login;
      $this->password=$password;
      echo "Klass sozdan'".__CLASS__."'.
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

  $user01 = new User("Daniil","Miggi","123");
  $user02 = new User("Mark","Zod", "456");
  $user03 = new User("Civic","EG6","789");

  $user04 = clone $user01;  // ������������ User

  unset($user01,$user02,$user03,$user04);  //����� ����������� � ������� �������� ��������
  


?>
