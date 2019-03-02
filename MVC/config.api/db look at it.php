<?php 
class dbconnect{
	private $servername;
	private $username;
	private $password;
	private $dbn;
	public $con;
	
	
	function __construct(){
		$this->servername="localhost";
		$this->username="nurse";
		$this->password="nu123";
		$this->dbn="nursery";
		$this->con=$this->connect();
	}
	
	public function connect(){
			$this->con=new mysqli($this->servername,$this->username,$this->password,$this->dbn);
			if($this->con->connect_error){
				die("Failed to connect:".$this->con->connect_error);
			}
		else{
			//	echo"Connected successfully";
				return $this->con;
		}
	}
    public function disconnect(){
		return $this->$con->close();
	}
	public function execute($sql)
	{
        $result=$this->con->query($sql);
		return $result;
	}
}
$db=new dbconnect();
	
?>