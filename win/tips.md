# How to use rsync in windows from an to external drives

Example, from H:\Photography to I:\Photography

**Note** trailing slash at source is not present in destination

```powershell
rsync -avz --info=progress2 //localhost/H$/Photography/ //localhost/I$/Photography

```

Source: <https://superuser.com/a/1173027/733967https://superuser.com/a/1173027/733967>
