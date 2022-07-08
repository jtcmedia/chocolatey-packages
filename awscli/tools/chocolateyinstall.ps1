$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.25.25.msi'
$checksum   = 'bfe0e1245ad8703665588b480ee239537786d2eb5e6d25c9bbbd51dd1c32c5f2'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.25.25.msi'
$checksum64 = '6e446840e933606324aa7289bd31a876d61e9e5e85251895bd1e77bbd71b9eff'
 
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
