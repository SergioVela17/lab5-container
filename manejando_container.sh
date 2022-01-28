
#!/bin/bash

module load singularity/3.8.0

#Apartado a)
echo "Versión del sistema operativo de la imagen"
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif cat /etc/os-release

#Apartado b)
echo "Contenido del directorio que estamos viendo"
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ls -a

#Apartado c)
echo "Path del directorio"
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif pwd

#Apartado d)
echo "Versión de python que hay instalada"
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif python --version

#Apartado e)
echo "Versión del compilador de C++ instalada"
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif g++ --version

#Apartado f)
echo "La ejecución del k-mers de longitud 13 compilado de C++ tarda:"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./data/k-mer13

module unload singularity/3.8.0
