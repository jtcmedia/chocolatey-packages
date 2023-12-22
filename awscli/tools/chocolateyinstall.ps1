$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.32.6.msi'
$checksum   = '4f6a93404addefe9b681e1b8c3f7c8ef98c6bfc6219ce18b6be46b0d69f6c5f4'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.32.6.msi'
$checksum64 = '2b5b6bb7e92979cd24a142e0992561cd3c92fb921b25570f4c80108e9ff6bb84'
 
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
