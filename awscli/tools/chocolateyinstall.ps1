$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32-1.16.70.msi'
$checksum   = 'e82ec2dc24b6188187ec15ddb9abd76223eafe217c6ba5a995025b5e7031bf68'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64-1.16.70.msi'
$checksum64 = 'cd8bd78f12ecf330996c19bf97bac6b5b9672d753b4fb4463859337512e0ff9b'
 
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
