#Este modulo fue creado por Johan Abdhala Caldera Melendez y Angela Maria Rocha Valdez
function ver-teams{
$name=read-host -Prompt "Vuelva a escribir su correo"
Get-Team -User $name
}
function crear-teams{
$TeamName=read-host -Prompt "¿Cual es el nombre del equipo?"
$team=New-Team -DisplayName $TeamName
Write-Host "Sea creado el teams con exito"
$team
}
function eliminar-teams{
$idgroup=read-host -Prompt "¿cual es el id del team?"
Remove-Team -GroupId $idgroup
Write-Host "EL team se elimino con exito"
}
function agregar-usuario{
 $ID = Read-Host 'Ingresa el ID del grupo en el que deseas agregar a un usuario: '
    $User = Read-Host 'Ingresa el correo del usuario: '
    try{
        Add-TeamUser -GroupId $ID -User $User -Role Member
        Write-Host "El usuario " $User "se agrego con exito"
    } catch{
        $_.Exception.Message
    }
}
function cambiar-imagen{
$idgroup=read-host -Prompt "¿cual es el id del team?"
$path=Read-Host -Prompt "¿Cual es el path de la imagen que desea poner ?"
Set-TeamPicture -GroupId $idgroup -ImagePath $path
Write-Host "Se actualizo la imagen del team con exito"
}
function generar-reporte{
$Z=Read-Host -Prompt "¿Como desea que se llame el archivo?"
$y=read-Host -Prompt "¿Ingrese el path Donde desea guardarlo?"
$x= $y + '\' + $Z
$s= Get-Team -User $name | Select-Object -Property DisplayName, GroupId, Archived
Set-Content -Path $x -Value $s
Write-Host "El reporte fue generado en" $x
}