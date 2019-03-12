<?php

class DbConnection {

    private $servername = "localhost";
		private $username = "root";
		private $password = "";
		private $db = "software";
    private $con;
    private $dbConnection;

    private function __construct(){
        $this->dbConnection = $this->connect();
		}
		
		public static function getInstance(){// create only one object for databse 
			if((!isset(self::$instance)){
				self::$instance = new DbConnection();
			}
			return self::$instance;
		}

    private function connect(){
        $this->con = mysqli_connect($this->servername,$this->username,$this->password);

        if ($this->con){
            mysql_select_db($this->db, $this->con);
            return $this->con;
        }      
        else{
            die("Failed to connect: ". mysqli_connect_error());
        }
    }

    private function query($query) {

			$result = mysqli_query($this->con, $query);
		
			if ($result === false) {
				die("Failed to query: ". mysqli_connect_error());
			}
			
			if (mysqli_num_rows($result) == 0) {
				return array();
			}
			
			$rows_vals = array();
			while ($row = mysqli_fetch_assoc($result)) {
				$rows_vals[] = $row;
			}

			mysqli_free_result($result);
			
			return $rows_vals;
    }

    private function where($conditions) {
			$where = "";
			if (!empty($conditions) && is_array($conditions)) {
				$where = array();
				foreach ($conditions as $field => $value) {
									$where[] = " $field = '".$this->escape($value)."' ";
				}
				if (!empty($where)) {
					$where = " WHERE " . join(" AND ", $where);
				}
			} else if (!empty($conditions)) {
				$where = " WHERE " . $conditions;
			}
			return $where;
		}

    public static function select($table, $whereArr) {
			$fields = "*";
      $where = '';	
		
			if (!empty($whereArr)) {
				$where = $this->where($whereArr);
			}
			
			$query = "SELECT $fields FROM $table $where";
			return $this->query($query);
    }

    public static function insert($table, $data) {
			$fields = $this->escapeArray(array_keys($data));
			$values = $this->escapeArray(array_values($data));
			
			foreach ($values as $k => $val) {
				if (is_null($val)) {
					$values[$k] = 'NULL';
				} else {
					$values[$k] = "'$val'";
				}
			}
			
			$query = "INSERT INTO $table(`".join("`,`",$fields)."`) VALUES(".join(",", $values).")";
					
			return mysqli_query($this->con, $query);
		}

    public static function lastId(){
			return mysqli_insert_id($this->con);
    }
    
    public static function delete($table, $whereArr){
      $where = where($whereArr);

      $query = "UPDATE $table SET isdeleted=1" . $where;
      return query($query);
    }

    public static function update($table, $data, $opts = array()) {
			$where = "";
			if (!empty($opts['where'])) {
				$where = $this->where($opts['where']);
			}
			
			$update = array();
			foreach ($data as $field => $value) {
				$update[] = "`$field` = '". mysqli_real_escape_string($this->con, $value) ."'";
			}
			
			$query = "UPDATE $table SET ".join(" , ", $update)." $where";
			
			return $this->execute($query);
		}
		
		public function getAffectedRows(){
			return mysqli_affected_rows($this->con);
    }
    
    public function disconnect(){
      return mysqli_close($con);
    }

}

?>
