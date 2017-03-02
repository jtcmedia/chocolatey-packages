$ErrorActionPreference = 'Stop';

$packageName= 'gnupg-modern'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.gnupg.org/ftp/gcrypt/binary/gnupg-w32-2.1.19_20170301.exe'
$checksum32 = 'c59014bc9087831688129f1367360c92552274fd4bfdc2000e23436db75344fc'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'GNU Privacy Guard*'

  checksum      = $checksum32
  checksumType  = 'sha256'

  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
