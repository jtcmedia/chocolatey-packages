$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.15.msi'
$checksum   = 'd83bde402d17c9967cd5a7e04ae6f56bac2ccdc028d71f92cdc773c7e057142c'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.15.msi'
$checksum64 = 'f33ada6af37327f1ffb7385f35ffd7ca37673332fa699508db51f486ca9c860c'
 
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
