$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.249.msi'
$checksum   = 'e04cb7a4eff1126a6b993a4a02317fedbbf83a8975c527093d5bf22d7a75ab1d'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.249.msi'
$checksum64 = '36272a9eb8baa83c8aaaffa90679de921dc9052aa96b0b331502d8a432762908'
 
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
