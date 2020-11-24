$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.184.msi'
$checksum   = '0030bba7a30cfd92aca2ef6d07d57fd80d725921eb421030203089bf8c288edb'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.184.msi'
$checksum64 = 'edd93ec3e2978788c6ab15298f6187be0f42b528a0486e77cfc1b2b3e35a5963'
 
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
