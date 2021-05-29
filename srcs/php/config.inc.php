<?php
declare(strict_types=1);

/* YOU MUST FILL IN THIS FOR COOKIE AUTH! */
$cfg['blowfish_secret'] = 'khfkujhglikujyh987456736hgvhgchvkgghdgfdkhghgfg';

/* Servers configuration */
$i = 0;

/* First server */
$i++;

/* Authentication type */
$cfg['Servers'][$i]['auth_type'] = 'cookie';
/* Server parameters */
$cfg['Servers'][$i]['host'] = 'mysql';
$cfg['Servers'][$i]['port'] = '3306';
$cfg['Servers'][$i]['compress'] = false;
$cfg['Servers'][$i]['AllowNoPassword'] = true;
$cfg['Servers'][$i]['user'] = 'Rem';
$cfg['Servers'][$i]['password'] = '123';
$cfg['Servers'][$i]['compress'] = false;

$cfg['TempDir'] = '/var/tmp/phpmyadmin';
 /* Directories for saving/loading files from server */
$cfg['UploadDir'] = '';
$cfg['SaveDir'] = '';

?>