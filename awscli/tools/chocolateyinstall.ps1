$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.132.msi'
$checksum   = '02311aea77d09a089d6976ca9a45f01f0fe11baf0b20a0995cd18bc9d85ad4ed'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.132.msi'
$checksum64 = '85d9b81676bb7c658c13c9b4e0b5dcc5b439f5992ac5569cc2c268d4891b02d3'
 
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
