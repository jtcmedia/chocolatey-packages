$ErrorActionPreference = 'Stop';
$packageName = 'heroku-cli'

#First need to uninstall old toolbelt pkg if installed
$softwareName = 'Heroku Toolbelt*'
$installerType = 'EXE' 
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)
$uninstalled = $false
[array]$key = Get-UninstallRegistryKey -SoftwareName $softwareName

if ($key.Count -eq 1) {
  $key | % { 
    $file = "$($_.UninstallString)"

    Uninstall-ChocolateyPackage -PackageName $packageName `
                                -FileType $installerType `
                                -SilentArgs "$silentArgs" `
                                -ValidExitCodes $validExitCodes `
                                -File "$file"
  }
}
# Remove heroku config file as requested https://blog.heroku.com/the-new-heroku-cli
Remove-Item $env:USERPROFILE\.config\heroku -Recurse -ErrorAction SilentlyContinue -Force

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://cli-assets.heroku.com/branches/stable/heroku-windows-386.exe'
$url64      = 'https://cli-assets.heroku.com/branches/stable/heroku-windows-amd64.exe'
$checksum32 = '8e533dca6b3516626da5147ce46ccc2f61aac65e44c0df6fc8251336e4f39861'
$checksum64 = 'dc84d9d737e764748a9175745e56cee4ee3ada9a25e0b83d452d014f656489db'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Heroku CLI*'

  checksum      = $checksum32
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
