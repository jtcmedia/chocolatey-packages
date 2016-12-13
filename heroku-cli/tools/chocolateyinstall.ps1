$ErrorActionPreference = 'Stop';

$packageName= 'heroku-cli'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://s3.amazonaws.com/assets.heroku.com/heroku-toolbelt/heroku-toolbelt.exe'
$checksum32 = 'f58a9473b02f843d09c651c2bcccc4bfe93f26187f7756ed422923334f8d3125'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'Heroku Toolbelt*'

  checksum      = $checksum32
  checksumType  = 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /COMPONENTS="*toolbelt,!toolbelt\git"'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
