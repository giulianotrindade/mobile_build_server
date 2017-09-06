# Ansible role `clt`
======================

Playbook para instalar o Command Line Tools.

## Requerimentos
---------------

Nenhum (exceto estar usando um Mac OS X).

## Variaveis
-----------------

`force_install`: Instala o Command Line Tools, mesmo que já esteja instalado (Default: `no`).

`clt_src: Command_Line_Tools_macOS_10.12_for_Xcode_8.3.dmg`
`clt_pkg: Command Line Tools (macOS Sierra version 10.12).pkg`
`volume_path: '/Volumes/Command Line Developer Tools'`

## Dependencias
---------------

Nenhuma.

## Examplo de Playbook
-------------------

A simple playbook example:

    - hosts: servers
      roles:
         - { role: ansible-role-clt }


## License
----------

[MIT][mit-link]
