Import-Module ActiveDirectory

$pass = ConvertTo-SecureString "P@ssword1" -AsPlainText -Force
$dominio = "DC=lea,DC=com"

# ─── offi1: 1 usuario ───
New-ADUser -Name "offi1user1" `
    -SamAccountName "offi1user1" `
    -AccountPassword $pass `
    -Enabled $true `
    -Path $dominio

# ─── offi2: 50 usuarios ───
1..50 | ForEach-Object {
    New-ADUser -Name "offi2user$_" `
        -SamAccountName "offi2user$_" `
        -AccountPassword $pass `
        -Enabled $true `
        -Path $dominio
}

# ─── offi3: 30 usuarios ───
1..30 | ForEach-Object {
    New-ADUser -Name "offi3user$_" `
        -SamAccountName "offi3user$_" `
        -AccountPassword $pass `
        -Enabled $true `
        -Path $dominio
}

Write-Host "✔ 81 usuarios creados correctamente." -ForegroundColor Green
