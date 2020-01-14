$ErrorActionPreference = 'Stop';

$packageName= 'bitvise-ssh-client'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bitvise.com/BvSshClient-Inst.exe'
$checksum32 = '8364527e936317dcc324f935a964cf8a04f022f1fdb639c99bd94b3fb4deb2a6'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  silentArgs	= '-acceptEULA -force -noDesktopIcon'
  validExitCodes= @(0)

  softwareName  = 'Bitvise SSH Client*'
  checksum      = $checksum32
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
