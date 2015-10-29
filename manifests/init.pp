# Class: esocial_recepcao
# This module manages esocial_recepcao
# Parameters: none
# Actions:
# Requires: see Modulefile
# Sample Usage:
#
class {{nome_cliente}}_{{nome_sistema}} ( $domain_name = $::wls_domain ) {

  if empty($domain_name) {
    fail("É necessário definir o domínio weblogic")
  }

  include {{dependencia_1}}
  include {{nome_cliente}}_{{nome_sistema}}::params
  include {{nome_cliente}}_{{nome_sistema}}::config
  include {{nome_cliente}}_{{nome_sistema}}::logs

  Class['{{nome_cliente}}'] ->
  Class['{{nome_cliente}}_{{nome_sistema}}::params'] ->
  Class['{{nome_cliente}}_{{nome_sistema}}::config'] ->
  Class['{{nome_cliente}}_{{nome_sistema}}::logs']

}
