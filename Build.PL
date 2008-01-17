use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Catalyst::Model::Estraier',
    license             => 'perl',
    dist_author         => 'Takeru INOUE <takeru.inoue _ gmail.com>',
    dist_version_from   => 'lib/Catalyst/Model/Estraier.pm',
    requires => {
        'Test::More' => 0,
        'version'    => 0,
        'Catalyst::Devel' => 0,
	'FindBin' => 0,
	'Search::Estraier' => 0,
    },
    build_requires => {
        'Test::More' => 0,
	'Test::Perl::Critic' => 0,
    },
    recommends => {},
    create_makefile_pl => 'traditional',
    add_to_cleanup      => [ 'Catalyst-Model-Estraier-*' ],
);

$builder->create_build_script();
