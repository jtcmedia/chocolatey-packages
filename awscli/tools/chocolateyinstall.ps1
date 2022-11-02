$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.27.0.msi'
$checksum   = '7162ed425369af4773e77a4df1610df7c101e01e0ab901e5ec4b9802521a94fc'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.27.0.msi'
$checksum64 = 'f5795e7073ad01d4d04fe9518c2e3fa4f91ace1ef60894a76d3317c39cd22db3'
 
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
