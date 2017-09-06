# Ansible role `Update`
======================

Playbook para instalar o Command Line Tools.

## Requerimentos
---------------

Nenhum (exceto estar usando um Mac OS X).

## Variaveis
-----------------

`macos_src: macosupd10.12.6.dmg`
`mmacos_pkg: macOSUpd10.12.6.pkg`
`volume_osx_path: '/Volumes/macOS Sierra Update'`


## Dependencias
---------------

Nenhuma.

## Examplo de Playbook
-------------------

A simple playbook example:

    - hosts: servers
      roles:
         - { role: ansible-role-update }


## License
----------

[MIT][mit-link]
