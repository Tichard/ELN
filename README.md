# ELN
## Emetteur pour Liaison Numérique (Digital Link Transmitter) 

Le composant à concevoir est un émetteur pour l’envoi de données sous forme de trames sur une liaison
numérique. Ce composant devra être intégrable dans un module système incluant un processeur NiosII
et une interface d’interconnexion Avalon.

---

### [Compte Rendu Projet](project_report.pdf)

### C source code :
- [main.c](DE0_CV/software/main.c)
- [API and registers definition](DE0_CV/software/BSP/Drivers)

### VHDL source code :
- [eln.vhd](DE0_CV/DE0_CV_QSYS/synthesis/submodules/eln.vhd)
- [FIFO_nMots_nBits.vhd](DE0_CV/DEO_CV_QSYS/synthesis/submodules/FIFO_nMots_nBits.vhd)
- [SerialData.vhd](DE0_CV/DEO_CV_QSYS/synthesis/submodules/SerialData.vhd)

---

Project académique "Conception SoC" S9 ENIB - 2017 Brest

TAUPIAC Richard
