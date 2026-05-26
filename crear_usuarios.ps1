$password = ConvertTo-SecureString "Pssw0rd!" -AsPlainText -Force

New-ADUser -Name "off1user1" -AccountPassword $password -Enabled $true

1..50 | ForEach-Object {
    New-ADUser -Name "off2user$_" -AccountPassword $password -Enabled $true
}


1..30 | ForEach-Object {
    New-ADUser -Name "off3user$_" -AccountPassword $password -Enabled $true
}