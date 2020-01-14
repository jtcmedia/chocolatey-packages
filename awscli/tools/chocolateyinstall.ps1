$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.17.1.msi'
$checksum   = '38efb9851d205556a9a89128d0e5b94fbd30da9e9ed9b21a5d79120ad47d985a'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.17.1.msi'
$checksum64 = '9a0393661d63875d3bfa439dc090b63ad114a1787602257d7ff5805d082ebd6d'
 
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
