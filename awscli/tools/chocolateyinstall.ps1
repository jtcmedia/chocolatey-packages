$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.207.msi'
$checksum   = 'd658cc6fb683766782ef8d2172081e0a24f6c108497dadb508b35180ce7c2f55'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.207.msi'
$checksum64 = 'ba4d7e6ee0cc9ab7ad83e7a2820fbfeb70ea08c66a8bead52b04d212ba49e521'
 
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
