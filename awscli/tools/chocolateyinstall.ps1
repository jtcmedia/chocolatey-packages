$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/aws-cli/AWSCLI32PY3-1.16.230.msi'
$checksum   = '0899a8680cc4dfc2588911055258f9df3a99ab3c4b649e58776875ca95b8b682'
$url64      = 'https://s3.amazonaws.com/aws-cli/AWSCLI64PY3-1.16.230.msi'
$checksum64 = 'af2b4ad99f5701c7d60ac0a4a5cee0d88c93d10fac8f002729fc4506d77ef124'
 
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
