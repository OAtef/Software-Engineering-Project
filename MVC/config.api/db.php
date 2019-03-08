<?php

class Database {

    private $servername;
	private $username;
	private $password;
	private $dbn;
    public $con;
    
    function __construct(){
		$this->servername="localhost";
		$this->username="root";
		$this->password="";
		$this->dbn="software-project";
		$this->con=$this->connect();
    }
    
    public function connect(){
        $this->con = mysqli_connect($this->servername,$this->username,$this->password,$this->dbn);

        if (mysqli_connect_errno())
                die("Failed to connect: ". mysqli_connect_error());
        else
                //	echo"Connected successfully";
                return $this->con;
    }

    public function disconnect(){
        return mysqli_close($$con);
    }

    public function insert($table, $cols, $data) {
        
        $columns = "";
        $values = "";
        $loop = 0;
        for($i = 0; $i < $cols/* size/length */; $i++){

            if($loop != 0 ){
                $columns += ", ";
                $values += ", ";
            }

            $columns += $cols[$i];
            $values +=  mysqli_escape_string($data[$i]);


        }
        
        $query = "INSERT $table (". $columns .") VALUES ($userID, $rowOU[0], '$form_vals[$i]')";
		return execute($query);
    }

    public function update($table, $col, $data, $whereArr) {
        
        $value = mysqli_escape_string($data);
        $where = where_statement($whereArr);

        $query = "UPDATE $table SET $col='$value'" . $where;
		return execute($query);
    }
    
    function select($table, $whereArr){

        // key = whereCol ,, val = whereVal

        $where = where_statement($whereArr);

        $query =" SELECT * FROM $table " . $where;
        return execute($query);
    }

    function delete($table, $whereArr){

        $where = where_statement($whereArr);

        $query = "UPDATE $table SET isdeleted=1" . $where;
        return execute($query);
    }
 
    function where_statement($whereArr){
        $where = "";
        $loop = 0;
        foreach ($whereArr as $key => $val) {
            
            if($loop != 0){
                $where . " AND ";
            }else{
                $where . "WHERE ";
            }
            
            $where += ($key . "=" . $val);
            $loop++;
                
        }

        return $where;
    }

    public function getAffectedRows(){
		return mysqli_affected_rows($this->con);
    }
    
    public function execute($query){	
		return mysqli_query($this->con, $query);
	}
}

?>
