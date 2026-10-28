# .NET packages
dotnet nuget locals --clear all

# .NET temporary files from self-update apps
rm -fr ~/.net/Updates

# NuGet
nuget locals all -clear

# Go (golang) go/pkg cache
go clean -modcache

# Homebrew caches ~/Lirabry/Caches/Homebrew
rm -rf $(brew --cache)

# Java Maven caches
rm -fr ~/.m2/repository
