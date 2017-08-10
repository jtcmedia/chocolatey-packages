$ErrorActionPreference = 'Stop';

$packageName= 'gnupg-modern'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.gnupg.org/ftp/gcrypt/binary/gnupg-w32-2.1.23_20170809.exe'
$checksum32 = '42045473336c0f20a2d4a2b6f4be5be263a55ccd3eb1f682976d94e9a3cff43f'

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
