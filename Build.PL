
use strict;
use warnings;

use Module::Build;

my $build = Module::Build->new(
  module_name   => 'Audio::MPD',
  license       => 'perl',
  dist_abstract => "class\ to\ talk\ to\ MPD\ \(Music\ Player\ Daemon\)\ servers",
  dist_name     => "Audio\-MPD",
  dist_author   => [
"Jerome\ Quelin",
  ],
  requires      => {
    "Moose::Util::TypeConstraints" => '0',
    "Class::Accessor::Fast" => '0',
    "Encode" => '0',
    "Audio::MPD::Common::Item" => '0',
    "Audio::MPD::Common::Stats" => '0',
    "Audio::MPD::Common::Status" => '0',
    "File::Find" => '0',
    "Moose" => '0',
    "MooseX::SemiAffordanceAccessor" => '0',
    "English" => '0',
    "Getopt::Euclid" => '0',
    "ExtUtils::MakeMaker" => '0',
    "Data::Dumper" => '0',
    "DB_File" => '0',
    "constant" => '0',
    "Time::HiRes" => '0',
    "Test::More" => '0',
    "perl" => '5.008',
    "Test::Corpus::Audio::MPD" => '1.092920',
    "IO::Socket" => '0',
    "Proc::Daemon" => '0',
  },
  script_files => [ qw(bin/mpd-dynamic) ],
);

$build->create_build_script;
