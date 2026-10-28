# .NET packages
dotnet nuget locals --clear all

# .NET temporary files from self-update apps
rm -fr ~/.net/Updates
 
# Go (golang) go/pkg cache

go clean -modcache
