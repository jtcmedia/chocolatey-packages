$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.74.msi'
$checksum   = '7c8cf0a1057d980685ea8ec1128c2f98002abdbad86fa941103c3380eb616e93'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.74.msi'
$checksum64 = 'daebf2d694581bc1544f7efd0d7df8a8ae5b2cea8b0e022e1033c88521fc82d6'
 
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
