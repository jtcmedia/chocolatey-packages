$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.20.15.msi'
$checksum   = 'ab3ea226536bd4db0fe8d9bdc4dfa470a4c413580d115cca6cc22dde7b540a69'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.20.15.msi'
$checksum64 = '6ec5fbd245555dd4b66f5ec359e0c6e5a7bac7675797da9c1ae9e8ca38aa4429'
 
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
