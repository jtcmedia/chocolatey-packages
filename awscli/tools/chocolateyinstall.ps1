$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.25.3.msi'
$checksum   = 'bbf8b0b80f0c49317b723685a9a93ec501d299c6a0704386234d99e7d4cc80cf'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.25.3.msi'
$checksum64 = '0ddd2112a119578d319ee8c9d41fb98de32a0f1b37d3a7072492e622c2e616e6'
 
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
