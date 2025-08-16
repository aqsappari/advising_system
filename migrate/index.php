<?php

use Core\Schema;

if (DEVELOPING_STATE) {

    Schema::migrate();
    // header("location: /logout");
    die();

}

header("location: /");
die();