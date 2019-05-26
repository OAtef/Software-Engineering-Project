<?php
//echo password_hash('123', PASSWORD_DEFAULT);

$hash = '$2y$10$fOtoJ.9Betmhm.KoQJCCIOT.wBow8raEtK0X3FgNxnqa1HmP0gXsy';

if (password_verify('123', $hash)) {
    echo 'Password is valid!';
} else {
    echo 'Invalid password.';
}