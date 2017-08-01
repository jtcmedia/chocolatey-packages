$ErrorActionPreference = 'Stop';

$packageName= 'gnupg-modern'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.gnupg.org/ftp/gcrypt/binary/gnupg-w32-2.1.22_20170728.exe'
$checksum32 = 'c5e65b55fed2b6f3e04565391a0ba1027acf32e5d9d61b1fec032b01b4e76a58'

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
