$ErrorActionPreference = 'Stop';

$packageName= 'gnupg-modern'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.gnupg.org/ftp/gcrypt/binary/gnupg-w32-2.2.4_20171220.exe'
$checksum32 = '2030f00548ec175cac4996a8128ed71393c156429d95f3e6c2f53194b2f4d885'

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
