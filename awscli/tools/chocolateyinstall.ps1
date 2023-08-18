$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.29.29.msi'
$checksum   = '703a9937fe5239e72ef0629572e255e98003fa5b4bb07de5d1dd07e06e8b1e0f'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.29.29.msi'
$checksum64 = 'dd857b93930474d9043629e7c84a1218a0b3df5394566cb610b2cbd2e4a7a47f'
 
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
