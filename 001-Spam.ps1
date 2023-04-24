function spam{
    param([long]$tamanio)
    $ran = New-Object System.Random
    for($i = 0; $i -lt $tamanio; $i++){
        Write-Host -NoNewline $ran.Next(0,2) -BackgroundColor "Black" -ForegroundColor "Green"
    }
}