$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.17.7.msi'
$checksum   = '7a271fdb08ed7fd249a2dd5f7ace2ce4e7c246d3064e24684953a1cab234e102'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.17.7.msi'
$checksum64 = '1251c651e07003370f9b26ba606484a73a2a876b2635af7ae2487f57f05a9778'
 
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
