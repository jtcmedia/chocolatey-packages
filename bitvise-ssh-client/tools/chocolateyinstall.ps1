$ErrorActionPreference = 'Stop';

$packageName= 'bitvise-ssh-client'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.bitvise.com/BvSshClient-Inst.exe'
$checksum32 = '0cb33f6927eb6932f2a20cc223380e249fbd6804620508337e6a0ada996ed016'

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
