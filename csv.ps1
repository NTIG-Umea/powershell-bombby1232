$names = Import-Csv names.csv

foreach($name in $names) {
   write-host $name.firstname $name.lastname
}