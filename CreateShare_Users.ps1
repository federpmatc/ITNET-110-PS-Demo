$password = ConvertTo-SecureString "Password01" -AsPlainText -Force
New-LocalUser -Name "Layne1" -Description "Created by PS" -Password $password -AccountNeverExpires 
New-LocalGroup -Name "Faculty"

Add-LocalGroupMember -Group "Faculty" -Member "Layne1"
Add-LocalGroupMember -Group "Administrators" -Member "Layne1"
Add-LocalGroupMember -Group "Users" -Member "Layne1"

Get-LocalUser -Name *
Get-LocalGroup -Name *

New-Item -Path C:\ -Name Demo -ItemType Directory
New-Item -Path C:\Demo -ItemType File -Name "test.txt" -Value "Hello"
New-SmbShare -Name "Demo" -Path "C:\Demo" -FullAccess Administrators -ReadAccess Users

2..5 | ForEach-Object {New-LocalUser -Name "Layne$_" -Description "Created by PS" -Password $password -AccountNeverExpires }
Get-LocalUser -Name "Layne*" | Add-LocalGroupMember -Name "Faculty" 
