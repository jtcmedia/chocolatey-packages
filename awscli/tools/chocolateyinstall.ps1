$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.51.msi'
$checksum   = 'b927346d56be27a7d9aa41de3ef016be9a08dcb6378c6e98b511ce8f4bb09463'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.51.msi'
$checksum64 = 'db2b46926388900ff4c0f7cfd49af8c2bf0c4129970c19a30551847ac0dcaee5'
 
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64
  softwareName  = 'AWS Command Line Interface*'
  checksum      = $checksum
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
