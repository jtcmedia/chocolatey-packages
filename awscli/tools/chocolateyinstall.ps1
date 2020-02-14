$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.17.17.msi'
$checksum   = '3d902f7f06b2931dd80f606b3ff56a1b29684ffec13c46430d6308d793ead9a7'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.17.17.msi'
$checksum64 = 'fdb6c8a06f3422532ab4310077b2cadbe5e96c4072a92fa525ec5aab2aa557da'
 
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
