<?php
include ("Function_Backup.php");

echo backup_tables("localhost","root","","mi_negocio");
$fecha=date("Y-m-d");
header("Content-disposition: attachment; filename=mi_negocio_backup".$fecha.".sql");
header("Content-type: MIME");
readfile("backups/db-backup-".$fecha.".sql");