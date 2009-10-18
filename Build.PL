
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
    "Scalar::Util" => '0',
    "base" => '0',
    "Getopt::Euclid" => '0',
    "English" => '0',
    "Data::Dumper" => '0',
    "ExtUtils::MakeMaker" => '0',
    "DB_File" => '0',
    "Time::HiRes" => '0',
    "constant" => '0',
    "Readonly" => '0',
    "Encode" => '0',
    "perl" => '5.008',
    "Test::More" => '0',
    "Test::Corpus::Audio::MPD" => '1.092900',
    "File::Find" => '0',
    "IO::Socket" => '0',
    "Proc::Daemon" => '0',
  },
  script_files => [ qw(bin/mpd-dynamic) ],
);

$build->create_build_script;
