$users = Import-Csv userlist.csv | select *,username,mail,password
$characters = "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m","n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "!", "#", "¤", "%", "&", "/", "(", ")", "=", "?", "@", "£", "$", "{", "[", "]", "}", "\", "+", "<", ">", ".", ","
$length = 10

for ($i = 0; $i -lt $length; $i++) {
    $randomnum = Get-Random -Maximum $characters.Length
    $password += $characters[$randomnum]
}

foreach($user in $users) {
    $password = ""
    for ($i = 0; $i -lt 8; $i++) {
        $randomnum = Get-Random -Maximum $characters.Length
        $password += $characters[$randomnum]
    }
    
    $user.username = $user.firstname + "." + $user.lastname
    $user.mail =  $user.firstname + "." + $user.lastname + "@gmail.com"
    $user.password = $password
 
}
$users