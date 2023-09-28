$age = Read-Host("What's your age?")

if ($age -gt 69) {
    Write-Output "you are older than me"
}
elseif($age -lt 69) {
    Write-Output "you are younger than me"
}
else {
    Write-Output "we are the same age"
}