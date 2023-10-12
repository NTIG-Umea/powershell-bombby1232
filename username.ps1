$names = Import-Csv names.csv

foreach($name in $names) {
   write-host $name.firstname $name.lastname
   $start = $name.firstname.Substring(0,2)
   $end = $name.lastname.Substring(0,2)
   write-host $start$end
}