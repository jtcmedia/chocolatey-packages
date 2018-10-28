$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.43.msi'
$checksum   = '0fb396d124a04222f18c2ec1a9a5b7555fcc357724fdef8cb7f243e1758a605f'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.43.msi'
$checksum64 = 'ce4142ed69a4edc023bdbb7621756e10dc2b3683f7b00a08da51708da98e0cc8'
 
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
