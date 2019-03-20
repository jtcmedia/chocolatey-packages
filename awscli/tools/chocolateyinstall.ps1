$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.127.msi'
$checksum   = 'b32d136228ee3a586d0f4d984876b4f11eb87f86b99dfdcc48823718a2eb0ab2'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.127.msi'
$checksum64 = 'ee7a5d759d445621aa546c290d48e67e6d5ca93156f74682a4f7fbd7c079cbdd'
 
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
