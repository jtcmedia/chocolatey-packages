$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.162.msi'
$checksum   = '0ff352ccf35a55a5f394da8ef345b364cfa92c636511ab327dc2cfdb38de92e8'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.162.msi'
$checksum64 = 'a65ba6c6c566e4558b3be6a12f93ac103bbda135f16c65935317d13a830e6f9d'
 
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
