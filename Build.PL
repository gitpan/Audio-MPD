
use strict;
use warnings;

use Module::Build 0.3601;

my %module_build_args = (
                       'dist_abstract' => 'class to talk to MPD (Music Player Daemon) servers',
                       'dist_author' => [
                                          'Jerome Quelin'
                                        ],
                       'dist_name' => 'Audio-MPD',
                       'script_files' => [
                                           'bin/mpd-dynamic'
                                         ],
                       'module_name' => 'Audio::MPD',
                       'requires' => {
                                       'MooseX::Has::Sugar' => 0,
                                       'Moose::Util::TypeConstraints' => 0,
                                       'Encode' => 0,
                                       'Audio::MPD::Common::Item' => 0,
                                       'File::Find' => 0,
                                       'Audio::MPD::Common::Status' => 0,
                                       'Audio::MPD::Common::Stats' => 0,
                                       'Moose' => 0,
                                       'MooseX::SemiAffordanceAccessor' => 0,
                                       'English' => 0,
                                       'Getopt::Euclid' => 0,
                                       'Data::Dumper' => 0,
                                       'DB_File' => 0,
                                       'Time::HiRes' => 0,
                                       'constant' => 0,
                                       'perl' => '5.008',
                                       'Test::More' => 0,
                                       'Test::Corpus::Audio::MPD' => '1.092920',
                                       'IO::Socket' => 0,
                                       'File::Temp' => 0,
                                       'Proc::Daemon' => 0
                                     },
                       'license' => 'perl'
                     );


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
