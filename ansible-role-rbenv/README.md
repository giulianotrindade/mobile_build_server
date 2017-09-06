# Ansible Role `rbenv`
=====================
Role para instalar e habilitar o [`rbenv`](https://github.com/rbenv/rbenv).
Ele executa as seguintes tarefas:

- Instala rbenv.
- Adiciona rbenv ao path.
- (Opcionamente) instala [`ruby-build`](https://github.com/rbenv/ruby-build) com um plugin`rbenv`.

## Variaveis
------------

| Nome da variável | Valor Padrão | Descrição |
|---------------|---------------|-------------|
| `rbenv_users` | `[]`          | Usuarios-alvo que terão o `rbenv` instalado. Cada item deve incluir `user` e `group`.
| `rbenv_users_home_path_prefix` | `/Users` | Caminho (de `/`) para o diretório pai que contém usuários no sistema |
| `use_rbenv_extension` | `True` | Independentemente de "compilar a extensão bash dinâmica para acelerar o rbenv". |
| `rbenv_profile_file` | `.bashrc` | Nome do arquivo de perfil a ser usado ao adicionar `rbenv` ao caminho (por exemplo` .bash_profile`, `.bashrc`,` .zshrc etc.). |
| `rbenv_export_line` | ` 'export PATH="$HOME/.rbenv/bin:$PATH"'` | A linha para adicionar ao arquivo de perfil acima para adicionar rbenv ao caminho. |
| `install_ruby_build` | `True` | Caso deseje ou não instalar [`ruby-build`](https://github.com/rbenv/ruby-build) com um pulgin `rbenv`. |

## Exemplo de Playbook
----------------------

Segue um exemplo de como usar sua função (por exemplo, com as variáveis passadas como parâmetros):

```yml
- hosts: itau
  roles:
    - ansible-role-rbenv
  vars:
    rbenv_users_home_path_prefix: "/Users"
    rbenv_users:
      - {
        user: "itau-user",
        group: "itau-user"
      }
    rbenv_profile_file: ".bash_profile"
```

# Ansible Role: Ruby

[![Build Status](https://travis-ci.org/geerlingguy/ansible-role-ruby.svg?branch=master)](https://travis-ci.org/geerlingguy/ansible-role-ruby)

Instala o Ruby e a gemas no OSX.
## Requisitos

Nenhum.

## Variáveis

As variáveis ​​disponíveis estão listadas abaixo, juntamente com os valores padrão (veja o `defaults/main.yml`):

    ruby_path: ".rbenv/versions"

O local onde os arquivos temporários serão baixados em preparados para a instalação do Ruby.

    ruby_install_bundler: true

Confirmação de instalação da Role [Bundler](http://bundler.io/).

    ruby_install_gems: []

Uma lista de gemas Ruby para instalar (apenas o nome da gema a ser instalada). Isto é concebido como uma simples conveniência, e só instalará a versão mais recente da gema. Se você precisa instalar gemas com mais opções ou especificidade, você pode fazê-lo em outro lugar no seu playbook.

    ruby_install_gems_user: username

A conta de usuário sob a qual as gemas Ruby serão instaladas. Predefinições para o `ansible_ssh_user` caso nao esteja configurado.

    ruby_version: 2.3.0

A versão do ruby que será instalada

    ruby_rubygems_package_name: rubygems

## Dependências

Nenhum.

## Exemplo de Playbook

    - hosts: server
      roles:
        - { role: ansible-role-rbenv}

## License

MIT / BSD
[MIT][mit-link]

## Author Information
