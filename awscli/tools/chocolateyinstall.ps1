$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.20.27.msi'
$checksum   = '26d90e21e6b0d54e097d00b2fb4ce8fbd499903f5649f9ebce6cd01b811262cf'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.20.27.msi'
$checksum64 = '759acdfea44582c0c06235af6594d7a535b9d2f261b18ed97c4b20b630c5e063'
 
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
