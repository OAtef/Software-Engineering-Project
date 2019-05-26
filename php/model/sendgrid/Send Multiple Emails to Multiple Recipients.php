<?php
require 'vendor/autoload.php'; // If you're using Composer (recommended)
// Comment out the above line if not using Composer
// require("<PATH TO>/sendgrid-php.php");
// If not using Composer, uncomment the above line and
// download sendgrid-php.zip from the latest release here,
// replacing <PATH TO> with the path to the sendgrid-php.php file,
// which is included in the download:
// https://github.com/sendgrid/sendgrid-php/releases

$from = new \SendGrid\Mail\From("test@example.com", "Example User");
$tos = [
    new \SendGrid\Mail\To(
        "test+test1@example.com",
        "Example User1",
        [
            '-name-' => 'Example User 1',
            '-github-' => 'http://github.com/example_user1'
        ],
        "Subject 1 -name-"
    ),
    new \SendGrid\Mail\To(
        "test+test2@example.com",
        "Example User2",
        [
            '-name-' => 'Example User 2',
            '-github-' => 'http://github.com/example_user2'
        ],
        "Subject 2 -name-"
    ),
    new \SendGrid\Mail\To(
        "test+test3@example.com",
        "Example User3",
        [
            '-name-' => 'Example User 3',
            '-github-' => 'http://github.com/example_user3'
        ]
    )
];
$subject = new \SendGrid\Mail\Subject("Hi -name-!"); // default subject 
$globalSubstitutions = [
    '-time-' => "2018-05-03 23:10:29"
];
$plainTextContent = new \SendGrid\Mail\PlainTextContent(
    "Hello -name-, your github is -github- sent at -time-"
);
$htmlContent = new \SendGrid\Mail\HtmlContent(
    "<strong>Hello -name-, your github is <a href=\"-github-\">here</a></strong> sent at -time-"
);
$email = new \SendGrid\Mail\Mail(
    $from,
    $tos,
    $subject, // or array of subjects, these take precendence
    $plainTextContent,
    $htmlContent,
    $globalSubstitutions
);

$sendgrid = new \SendGrid(getenv('SENDGRID_API_KEY'));
try {
    $response = $sendgrid->send($email);
    print $response->statusCode() . "\n";
    print_r($response->headers());
    print $response->body() . "\n";
} catch (Exception $e) {
    echo 'Caught exception: '.  $e->getMessage(). "\n";
}