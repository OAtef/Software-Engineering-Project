<?php

class database {

    public $servername = "localhost";
	public $username = "root";
	public $password = "";
	public $db = "software-project";
    public static $con;
    public $dbConnection;
    public static $instance;


    public static function getInstance(){// create only one object for DbConnection
    	if(!isset(self::$instance)){
    		self::$instance = new database();
    	}
    	return self::$instance;
    }

    public function __construct() {
        $GLOBALS['conn'] = $this->dbConnection = $this->connect();
	}

	public function connect(){
    	self::$con = mysqli_connect($this->servername, $this->username, $this->password);

    	if (self::$con){
    		mysqli_select_db(self::$con, $this->db);
    		return self::$con;
    	}
    	else{
    		die("Failed to connect: ". mysqli_connect_error());
    	}
    }



    public static function query($query) {

    	//echo $query;

		$result = mysqli_query(self::$con, $query);

		if ($result === false) {
			die("Failed to query: ". mysqli_connect_error() . $query);
		}

		if (mysqli_num_rows($result) == 0) {
			return array();
		}

		$rows_vals = array();
		$i = 0;
		while ($row = mysqli_fetch_assoc($result)) {

			$rows_vals[$i] = $row;
			$i++;
		}

		mysqli_free_result($result);

		return $rows_vals;
	}

	private static function where($conditions){
		$where = "";
		$loop = 0;
		foreach ($conditions as $key => $val) {

			if($loop != 0){
				$where .= " AND ";
			}else{
				$where .= "WHERE ";
			}

			if(!is_numeric($val)){

				$val = "'$val'";
			}

			$where .= ($key . "=" . $val);
			$loop++;
		}

		return $where;
    }

	private static function where_like($conditions){
		$where = "";
		$loop = 0;
		foreach ($conditions as $key => $val) {

			if($loop != 0){
				$where .= " AND ";
			}else{
				$where .= "WHERE ";
			}

			if(!is_numeric($val)){

				$val = "'$val'";

			}

			$where .= ($key . "LIKE" . $val);
			$loop++;

		}

		return $where;
	}

    public static function select($table, $conditions, $like){
    	$fields = "*";
    	$where = '';
    	$likee='';

    	if (!empty($conditions)) {
    		$where = self::where($conditions);
    	}

    	if (!empty($like)) {
    		$likee = self::where_like($like);
    	}

			$query = "SELECT $fields FROM $table $where $likee";
			
    	return self::query($query);
    }

    public static function insert($table, $data){

    	$fields = array_keys($data);
    	$values = array_values($data);

    	$i=0;
    	while($i < sizeof($values)){
    		if(!is_numeric($values[$i])){
    			$values[$i] = "'$values[$i]'";
    		}
    		$i++;
    	}

    	$query = "INSERT INTO $table(`".join("`,`",$fields)."`) VALUES(".join(",", $values).")";
    	return self::execute($query);
    }

    public static function lastId(){
			return mysqli_insert_id(self::$con);
    }

    public static function delete($table, $conditions){
      $where = self::where($conditions);

      $query = "UPDATE $table SET isdeleted=1 " . $where;
      return self::execute($query);
    }

    public static function update($table, $data, $conditions){
		$where = "";
		if (!empty($conditions)) {
			$where = self::where($conditions);
		}

		$update = array();
		foreach ($data as $field => $value) {
			$update[] = "`$field` = '". mysqli_real_escape_string(self::$con, $value) ."'";
		}

		$query = "UPDATE $table SET ".join(" , ", $update)." $where";

		return self::execute($query);
	}

	public static function execute($query){

        //echo $query;

		return mysqli_query(self::$con, $query);
	}

	public static function rand_number( $table ) {

    	$sql = "SELECT `rand_number` FROM ( SELECT FLOOR(RAND() * 99999999) AS `rand_number` UNION SELECT FLOOR(RAND() * 99999999) AS `rand_number` ) AS numbers_mst_plus_1 WHERE `rand_number` NOT IN (SELECT `rand_number` FROM $table) LIMIT 1 ";

    	$result = mysqli_query(self::$con, $sql);
		$row = mysqli_fetch_assoc($result);

    	return $row['rand_number'];



	}

}

