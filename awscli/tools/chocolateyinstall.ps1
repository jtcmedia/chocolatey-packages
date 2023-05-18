$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.135.msi'
$checksum   = 'c97fb4486e883cd1082058534230639ea5b339cc28e264ed88bafbc66bb008b7'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.135.msi'
$checksum64 = '33ecd6ffb23b942db04b91ba3d132d7d1c697da0373d41e9f2ebf8f029abccd1'
 
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
