$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.25.37.msi'
$checksum   = 'a051864226624c2c7ee821c50d8c564ee42c988d4c30745d25bdf393c4760fbe'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.25.37.msi'
$checksum64 = 'e75e035d7cfdb958e41c126e52bcef92aefc8ef4e81cd55e6115c4ec2fec9ded'
 
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
