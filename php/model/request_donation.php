<?php

require_once 'database.php';
require_once 'crud.php';
require_once 'donation_reason.php';
require_once 'payment_method.php';
require_once 'login.php';
require_once 'messages.php';
require_once 'manual_send.php';


$db = database::getInstance();

class request_donation implements crud
{

   public $id;
   public $userID;
   public $projectCategoryID;
   public $donationReasonID;
   public $paymentMethodID;
   public $donationValue;
   public $valueTaken;
   public $create_date;

   public function __construct($id)
   {
     $data = array();

     if ($id != NULL) {

       $data["id"] = $id;
       $row = database::select("tb_request_donation", $data, null);

       $this->id = $id;
       $this->userID = $row[0]["userID"];
       $this->projectCategoryID =  $row[0]["projectCategoryID"];
       $this->donationReasonID = $row[0]["donationReasonID"];
       $this->paymentMethodID =  $row[0]["paymentMethodID"];
       $this->donationValue = $row[0]["amount_donated"];
       $this->valueTaken =  $row[0]["valueTaken"];
       $this->create_date = $row[0]["create_date"];
    }
  }

    public function _create(array $data)
    {
        $data["userID"]=$this->userID;
        $data["projectCategoryID"]=$this->projectCategoryID;
        $data["donationReasonID"]=$this->donationReasonID;
        $data["paymentMethodID"]=$this->paymentMethodID;
        $data["amount_donated"]=$this->donationValue;

        $r = database::insert("tb_request_donation", $data);

        return $r;
    }

    public function _read(array $conditions, array $like)
    {
        $query = "SELECT * FROM tb_request_donation WHERE amount_donated > valueTaken and projectCategoryID = $conditions[0]
                  and status = $conditions[1]";
        $result = database::query($query);

        $all_rows = array();

        $i = 0;

        if($conditions[2] == 'paid'){
            while($i < sizeof($result)){

                $donationReasonID = $result[$i]['donationReasonID'];
                $paymentMethodID = $result[$i]['paymentMethodID'];
                $amount_donated = $result[$i]['amount_donated'];
                $valueTaken = $result[$i]['valueTaken'];

                $temp_row = array();

                $dr = new donation_reason($donationReasonID);
                $pm = new payment_method($paymentMethodID);

                array_push($temp_row, $result[$i]['id']);
                array_push($temp_row, $dr->reason);
                array_push($temp_row, $pm->method_name);
                array_push($temp_row, ($amount_donated - $valueTaken));

                array_push($all_rows, $temp_row);

                $i++;
            }
        }
        elseif ($conditions[2] == 'request'){
            while($i < sizeof($result)){

                $donationReasonID = $result[$i]['donationReasonID'];
                $paymentMethodID = $result[$i]['paymentMethodID'];
                $amount_donated = $result[$i]['amount_donated'];

                $temp_row = array();

                $dr = new donation_reason($donationReasonID);
                $pm = new payment_method($paymentMethodID);

                array_push($temp_row, $result[$i]['id']);
                array_push($temp_row, $dr->reason);
                array_push($temp_row, $pm->method_name);
                array_push($temp_row, $amount_donated);

                array_push($all_rows, $temp_row);

                $i++;
            }
        }
        else{

        }


        return $all_rows;
    }

    public function _update(array $data, array $condition)
    {
        // TODO: Implement _update() method.
    }

    public function _delete(array $data)
    {
        // TODO: Implement _delete() method.
    }

    public function insert_money(array $ids, $last_req, $lu_tm){

       $i = 0;

       if($last_req == 0 && $lu_tm == 0){

           while($i < sizeof($ids)){

               $sql = 'UPDATE tb_request_donation SET valueTaken = amount_donated WHERE id =' . $ids[$i];
               database::execute($sql);
               $i++;

           }

       }
       else{
           while($i < sizeof($ids)-1){

               $sql = 'UPDATE tb_request_donation SET valueTaken = amount_donated WHERE id =' .$ids[$i];
               database::execute($sql);
               $i++;

           }

           $data = array();
           $data['valueTaken'] = $lu_tm;

           $con = array();
           $con['id'] = $last_req;

           database::update('tb_request_donation', $data, $con);

       }
    }

    public function change_status($id){

       $con = array();
       $con['id']= $id;

       $data = array();
       $data['status'] = 1;

       database::update('tb_request_donation', $data, $con);

    }

    public function send_notifiy(array $ids, $project_name){

       $i = 0;
       while($i < sizeof($ids)){

           $data["id"] = $ids[$i];
           $row = database::select("tb_request_donation", $data, null);

           if(!empty($row)){
               $log = new login($row[0]['userID']);

               $msg = new messages(100);

               $the_Message = str_replace("__value__",$row[0]['valueTaken'],$msg->content);
               $the_Message = str_replace("__ProjectName__",$project_name,$the_Message);

               $sm = new manual_send();
               $sm->emails = array($log->email);

               $sm->massage_subject = $msg->subject;
               $sm->massage_content = $the_Message;

               $facade = new facade(null);

               $sm->deatch($facade->sms);
               $sm->deatch($facade->whatsapp);

               $sm->notify();
           }

           $i++;

       }

    }

    public function list_all()
    {
        $result = array();
        $data["status"] = 0;

        $rows = database::select("tb_request_donation", $data, null);

        for ($i=0; $i < sizeof($rows); $i++) {

            $result[$i] = new request_donation($rows[$i]["id"]);
        }

        return $result;
    }

    public function rd_pro(array $rd_ids, array $amounts, $projectID){

       $i = 0;

       while($i < sizeof($rd_ids)){

           $data = array();
           $data['req_donationID'] = $rd_ids[$i];
           $data['projectID'] = $projectID;
           $data['taken_amount'] = $amounts[$i];

           database::insert("rtb_req_donation_project", $data);

           $i++;


       }

    }

    public function get_userIDs(array $ids){

       $result = array();

       $i = 0;
       while($i < sizeof($ids)){

           $data = array();
           $data["id"] = $ids[$i];

           $row = database::select("tb_request_donation", $data, null);

           array_push($result, $row[0]['userID']);
           $i++;

       }

        return $result;
    }

    public function return_money(array $arr_data){

        foreach ($arr_data as $key => $value) {
            $sql = "UPDATE `tb_request_donation` SET `amount_donated` = `amount_donated` + $value, 
                      `valueTaken` = `valueTaken` - $value
                            WHERE `id` = $key";
            database::execute($sql);
        }
    }
}
