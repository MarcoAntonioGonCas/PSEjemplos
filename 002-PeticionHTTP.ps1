<#
    Ejemplo de peticion GET HTTP 
    post/
    url -> https://jsonplaceholder.typicode.com/posts
#>

$url = "https://jsonplaceholder.typicode.com/posts"


Invoke-RestMethod -Uri $url -Method Get | Format-Table  -AutoSize -Wrap
<#
    Ejemplo de peticion GET HTTP Y guardarlo en un archivo
    post/
    url -> https://jsonplaceholder.typicode.com/posts
#>


Invoke-RestMethod -Uri $url -Method Get | ConvertTo-Json |Out-File -FilePath C:\salida\info.json -Encoding utf8 -Force

<#
    Ejemplo de peticion POST HTTP
    post/
    url -> https://jsonplaceholder.typicode.com/posts
#>
$title = Read-Host -Prompt "Ingresa un titulo del post"
$cuerpo = Read-Host -Prompt "Ingresa el cuerpo del post"
$datos = @{
    title =$title
    body =$cuerpo
    userId =1 
};

$rest = Invoke-RestMethod -Uri $url -Method Post -Body (ConvertTo-Json -InputObject $datos) -Headers @{Content='application/json'}


$rest