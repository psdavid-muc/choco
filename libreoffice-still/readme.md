# README

## helper-module
The helper module consists of two functions:
 * Get-URLStatus:
	* Returns "true", if the provided URL is available
	* Returns "false", if the provided URL is not available, thus indicates that the version you want to install is archived
 * Get-ArchiveURLs:
	* Needs the version and the 32 hash and 64 bit hash, then returns the archived download links

## chocolateyInstall
I've changed the installation script to the following extend:
 * Created and imported a module that checks for the download path and provides a archived download paths
 * Added a "version" variable to the packageArgs array; i need that to search for the archived download paths
 * If the "original" download path is still available, the install script runs the installation with the normal packageArgs
 * If the "original" download path is not available, the script tries to get the archived urls, that match the provided SHA256 values for the 32 and 64 bit installer, then starts the installation