class {{nome_cliente}}_{{nome_sistema}}::logs {

  $domain_name = ${{nome_cliente}}_{{nome_sistema}}::domain_name

  $xmlfiledir = "/u01/app/oracle/domains/${domain_name}/{{path_arquivo_log4j}}"

  exec{'teste-xmlfiledir-{{nome_sistema}}':
    command => "test -d ${xmlfiledir}",
    path    => ['/usr/bin','/bin'],
  }

  file{"${xmlfiledir}/log4j.xml":
    ensure  => file,
    owner   => ${{nome_cliente}}_{{nome_sistema}}::params::owner,
    group   => ${{nome_cliente}}_{{nome_sistema}}::params::group,
    mode    => '0644',
    source  => 'puppet:///modules/{{nome_cliente}}_{{nome_sistema}}/log4j.xml',
  }

  # esse padrao de log_dir utiliza * para o logstash detectar caso exista mais de uma instancia da aplicacao.
  # O titulo do recurso deve ser no formato cliente-sistema-categoria, conforme exemplificado abaixo.
  dtp_logapl::servidores::log4j_json {'{{nome_cliente}}-{{nome_sistema}}-geral':
    path => "/u01/app/oracle/domains/*{{domain_name}}*/log/{{path_log}}/{{nome_cliente}}-{{nome_sistema}}-geral.log"
  }


}
