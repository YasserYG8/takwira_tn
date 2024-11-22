<?php
// Connect to the database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "takwira_tn_2";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Function to add a team
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['add_team'])) {
    $team_name = $_POST['team_name'];
    $players = explode(',', $_POST['players']); // Split players by comma

    if (count($players) > 11) {
        echo "A team cannot have more than 11 players.";
    } else {
        $stmt = $conn->prepare("INSERT INTO teams (team_name) VALUES (?)");
        if ($stmt) {
            $stmt->bind_param("s", $team_name);
            $stmt->execute();
            $team_id = $stmt->insert_id;

            // Add players
            foreach ($players as $player) {
                $player = trim($player);
                $player_stmt = $conn->prepare("INSERT INTO players (player_name, team_id) VALUES (?, ?)");
                if ($player_stmt) {
                    $player_stmt->bind_param("si", $player, $team_id);
                    $player_stmt->execute();
                } else {
                    echo "Error preparing player statement: " . $conn->error;
                }
            }

            
            $req = "SELECT team_id FROM teams WHERE team_name = '$team_name';";

            $res50 = mysqli_query($conn,$req);
                
            $t = mysqli_fetch_array($res50);

            $message = "Team and players added successfully!!";
            echo "<script>alert('$message');</script>";
            echo "<h1>Your team id : $t[0] !</h1>"; 
            echo "<center><button><a href='index.html' style='text-decoration:none;color:white;'>Go Back</a></button></center>";
            echo "<style>
            h1{
                color:#356DFF;
                text-align:center;
            }
            button{
                text-align:center;
                background-color: #356DFF;
                color: #fff;
                border: none;
                padding: 10px 20px;
                border-radius: 4px;
                cursor: pointer;
                font-size: 16px;
                margin-top: 15px;
                transition: background-color 0.3s;
            }

button:hover {
    background-color: #274bbd;
}</style>";


            
            
        } else {
            echo "Error preparing team statement: " . $conn->error;
        }
    }
}

$conn->close();
?>
