@echo off
@echo "Gerando vers�o %1"
7z a -mmt=8 -xr@release_ignore.cfg "Manager %1.7z" @release_lst.cfg
@echo "Publicando a vers�o %1"
ftp -nv < release_ftp.cfg
del "Manager %1.7z"
