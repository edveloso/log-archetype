# Class: {{nome_cliente}}_{{nome_sistema}}
#
# This module manages {{nome_cliente}}_{{nome_sistema}}
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class {{nome_cliente}}_{{nome_sistema}}::params {

  $owner = ${{dependencia_1}}::params::owner
  $group = ${{dependencia_1}}::params::group
  $cliente = '{{nome_cliente}}'
  $sistema = '{{nome_sistema}}'
  $path_app = "${cliente}/${sistema}"

}
