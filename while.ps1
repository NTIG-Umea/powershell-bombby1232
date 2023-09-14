#while-loop:repeterar så länge någonting stämmer, slutar när det ändras.

$counter = 0;

while ($counter -lt 20) {
    $counter = $counter + 3;
    Write-Output $counter;
}