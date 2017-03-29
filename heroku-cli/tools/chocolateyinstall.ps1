$ErrorActionPreference = 'Stop';
$packageName = 'heroku-cli'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$installerFile = if ((Get-ProcessorBits 64) -and $env:chocolateyForceX86 -ne 'true') {
         Write-Host "Installing x64 bit version"; Get-Item "$toolsDir\*_x64.exe"
} else { Write-Host "Installing x32 bit version"; Get-Item "$toolsDir\*_x32.exe" }

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'EXE'
  file          = $installerFile
  softwareName  = 'Heroku CLI'
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs

Remove-Item ($toolsDir + '\*.' + $packageArgs.fileType)
