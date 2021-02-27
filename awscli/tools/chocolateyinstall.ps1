$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.17.msi'
$checksum   = '2be6b853df0c71071e2fc2a23bf380ce8fd899b6ddb3b1047dcab3f83b02e780'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.17.msi'
$checksum64 = '63cb05724ba5dd0147dd68d2dd6490fc263cbd0d4df37a4a3d420711e87fbc0b'
 
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
