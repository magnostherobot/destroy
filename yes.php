<?php
    if ( $_SERVER['REQUEST_METHOD'] == 'POST' ) {
        print(exec("sh yes.sh"));

    } else {
        header('Location: ./index.html');
        die();
    }
?>
