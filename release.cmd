@echo off
@echo "Gerando versão %1"
7z a -mmt=8 -xr@release_ignore.cfg "Manager %1.7z" @release_lst.cfg
@echo "Publicando a versão %1"
ftp -nv < release_ftp.cfg
del "Manager %1.7z"
