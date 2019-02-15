<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

/*class Database
{
    private $hostdb = "localhost";
    private $userdb = "admin";
    private $passdb = "123";
    private $namedb = "fps_game";

    private $pdo;
    /*public function __construct(){
        
        $conn = new mysqli($hostdb, $userdb, $passdb, $namedb);
        if ($conn->connect_error) {
            die("Connection failed: ". $conn->connect_error);
        }
        else 
        {
            return $conn;
        }

    }

    public function __construct(){
        if(!isset($this->pdo)){
            try {
                $link = new PDO("mysql:host=".$this->hostdb.";dbname=".$this->namedb,$this->userdb,$this->passdb);
                $link->setAttribute(PDO::ATTR_ERRORMODE, PDO::ERRORMODE_EXCEPTION);
                $link->exec("SET CHARACTER SET utf8");
                $this->pdo = $link;

            } catch (PDOException $th) {
               die("Failed to connect with Database ".$th->getMessage());
            }

            return $pdo;
        }
    }
}*/

class AddProductController extends Controller
{
    public function submit(Request $request)
    {
        //$dbconn = new Database();

        $item_name=$request->input('itemname');
        $item_type=$request->input('itemtype');
        $file_link=$request->input('filelink');

        //echo $item_name;
        //echo $item_type;
        //echo $file_link;

        /*$sql = 'insert into game_items '.
      '(item_name,item_type, item_file) '.
      'VALUES ( ".$item_name.", .$item_type., ".$file_link." )';*/


        DB::table('game_items')->insert(
        ['item_name' => $item_name,
         'item_type' => $item_type,
         'item_file' => $file_link ]
        );

        /*mysql_select_db('fps_game');
        $retval = mysql_query( $sql, $conn );
        
        if(! $retval ) {
            die('Could not enter data: ' . mysql_error());
        }
        
        echo "Entered data successfully\n";
        
        mysql_close($conn);8*/
        
        //return $request->input('itemname');
    }
}
?>
