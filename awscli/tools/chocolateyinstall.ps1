$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.9.msi'
$checksum   = 'c3e3365717ab4ab2f24497471dec040f78f8f8fa37f677ca82afbb9b1fd4b0f9'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.9.msi'
$checksum64 = 'a9b9689beb17b967d80217e8b15b421669dc266679c81ef467a8eab6a4f5b8ed'
 
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
