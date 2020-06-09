$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.18.75.msi'
$checksum   = 'e90b0ac064fad300d84bdcc42c90dcdf0e6b281642c5c93d840687f20dc1687f'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.18.75.msi'
$checksum64 = '43f2e9cb239830dda48ac2f716b205f1f7669cbaf56f644cc2786a26ced05abb'
 
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
