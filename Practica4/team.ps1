#Este scrip fue creado por Johan Abdhala Caldera Melendez y Angela Maria Rocha Valdez
Import-Module -Name Teams
$name=Read-Host -Prompt "¿cual es su correo?"
$sMessage=”Type your Office 365 credentials”
$TeamsCredentials=Get-Credential -UserName $name -Message $sMessage
Connect-MicrosoftTeams -Credential $TeamsCredentials
while ( 1 -eq 1){
Write-Host "Opciones [1] Ver Equipos [2] Crear Teams [3]Eliminar Teams [4]Agregar usuario [5]Cambiar imagen de un teams [6]Generar reporte [7]salir"
$a=Read-Host -Prompt "¿Que opcion elige?"
try{
switch($a){
1{
ver-teams
}
2{
 crear-teams
}
3{
eliminar-teams
}
4{
agregar-usuario
}
5{
cambiar-imagen
}
6{
generar-reporte
}
7{
exit
}
}
}catch{
continue
}
}