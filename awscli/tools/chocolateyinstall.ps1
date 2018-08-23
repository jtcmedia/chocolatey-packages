$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.15.83.msi'
$checksum   = 'aee12d8775c446e836adeaed224a0777ef8b2028c1fcc5537a3b0ae954863ff5'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.15.83.msi'
$checksum64 = '962d2e7b11c019487c7a91043703d4a89e5fcd0d438aedd489d5beec9b18b6ad'
 
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
