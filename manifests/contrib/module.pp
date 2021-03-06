define ejabberd::contrib::module {
    include ejabberd::params
    require ejabberd::contrib
    exec { "compile-${name}":
        cwd         => "/usr/local/src/ejabberd-modules/${name}/",
        command     => "/usr/local/src/ejabberd-modules/${name}/build.sh",
        creates     => "/usr/local/src/ejabberd-modules/${name}/ebin/${name}.beam",
        environment => 'HOME=/root',
        logoutput   => true,
    }
    file { "${ejabberd::params::lib_dir}/ebin/${name}.beam":
        ensure  => present,
        source  => "/usr/local/src/ejabberd-modules/${name}/ebin/${name}.beam",
        require => Exec["compile-${name}"],
    }
}
