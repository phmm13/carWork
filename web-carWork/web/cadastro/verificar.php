<?php 
/* Verifies registered user email, the link to this page
   is included in the cadastro.php email message 
*/
require 'db.php';
session_start();

// Make sure email and hash variables aren't empty
if(isset($_GET['email']) && !empty($_GET['email']) AND isset($_GET['hash']) && !empty($_GET['hash']))
{
    $email = $mysqli->escape_string($_GET['email']); 
    $hash = $mysqli->escape_string($_GET['hash']); 
    
    // Select user with matching email and hash, who hasn't verified their account yet (active = 0)
    $result = $mysqli->query("SELECT * FROM users WHERE email='$email' AND hash='$hash' AND active='0'");

    if ( $result->num_rows == 0 )
    { 
        $_SESSION['message'] = "Conta ja ativada ou URL Invalida!";

        header("location: error.php");
    }
    else {
        $_SESSION['message'] = "Sua conta foi ativada com sucesso!";
        
        // Set the user status to active (active = 1)
        $mysqli->query("UPDATE users SET active='1' WHERE email='$email'") or die($mysqli->error);
        $_SESSION['active'] = 1;
        
        header("location: sucesso.php");
    }
}
else {
    $_SESSION['message'] = "Parametros incorretos para validar sua conta!";
    header("location: error.php");
}     
?>