$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.8.msi'
$checksum   = 'd6b0d95383afca6b8edd75e86c4dcf797c109a3489a6583f0d1b71b406c5beca'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.8.msi'
$checksum64 = 'ac4d1c0694763b8700b86ac95f4d12d0ae0eddcaf65249f8b4ef8403ee043e78'
 
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
