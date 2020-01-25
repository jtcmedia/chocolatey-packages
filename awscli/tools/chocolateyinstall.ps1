$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.17.9.msi'
$checksum   = '5e95cac51468f824f9ef742d5261e8768cf9a1cb26f8eceacdbde9f7a7bd2799'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.17.9.msi'
$checksum64 = '8bb66f3919d77ca74f74b76fe10ab5ca44c8037ea46e715ed4715759cdea915b'
 
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
