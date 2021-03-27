$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.19.39.msi'
$checksum   = 'a82aa40831b23db3b928cf9db877ffef0f35aff1a3596bb8b832d0bf4ac9bdaf'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.19.39.msi'
$checksum64 = '29c2a1d4de4237b973e414d1d3b4e7c0e71748e16c880e897d91477097b291bf'
 
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
