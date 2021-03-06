## Imports the default key to the local Windows Certificate Store
$password = Get-Content '.\AlwaysEncrypted.passphrase.txt'
$password = ConvertTo-SecureString $password -AsPlainText -Force

Import-PfxCertificate -FilePath '.\AlwaysEncrypted.pfx' `
	-CertStoreLocation 'cert:\LocalMachine\My' `
	-Password $password `
| Out-Null