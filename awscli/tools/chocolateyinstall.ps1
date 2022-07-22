$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.25.35.msi'
$checksum   = 'b66f4c93e82b343fac5e0dc56dbd2098fde8d1ef3b4c96b5748f089a8b64cae4'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.25.35.msi'
$checksum64 = '2f97a1efc21e635bb574e5fe85026cc07c2f364b3651f2c93033543ac150da63'
 
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
