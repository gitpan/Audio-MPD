#!/usr/bin/perl
#
#

use Module::Build;
use Module::Build::Compat;


my $build = Module::Build->new
(
	module_name => 'Audio::MPD',
	license => 'gpl',
	build_requires => {
		'Module::Build' => '0.20'
	},
	requires => {
		'IO::Socket'	=> '1.00',
		'Test' 			=> '1.00',
	},
);

$build->create_build_script();


# This method writes a 'dummy' Makefile that will pass all commands
# through to the corresponding Module::Build actions.
Module::Build::Compat->write_makefile(
	build_class => 'Module::Build');
