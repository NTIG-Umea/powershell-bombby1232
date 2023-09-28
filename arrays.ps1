$rooms = "Athena", "Troja", "Aristoteles", "Platon"

write-host $rooms.Count
write-host $rooms[0]
write-host $rooms[0,2]
write-host $rooms[0..3]
write-host $rooms[-1]

$rooms[2] = "Sapfo"
write-host $rooms