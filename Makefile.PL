
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Audio-MPD',
  NAME      => 'Audio::MPD',
  AUTHOR    => 'Jerome\ Quelin',
  ABSTRACT  => 'class\ to\ talk\ to\ MPD\ \(Music\ Player\ Daemon\)\ servers',
  VERSION   => '1.092950',
  EXE_FILES => [ qw(bin/mpd-dynamic) ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Moose::Util::TypeConstraints" => '0',
    "Class::Accessor::Fast" => '0',
    "Encode" => '0',
    "Audio::MPD::Common::Item" => '0',
    "Audio::MPD::Common::Stats" => '0',
    "Audio::MPD::Common::Status" => '0',
    "File::Find" => '0',
    "MooseX::SemiAffordanceAccessor" => '0',
    "Moose" => '0',
    "Getopt::Euclid" => '0',
    "English" => '0',
    "Data::Dumper" => '0',
    "DB_File" => '0',
    "Time::HiRes" => '0',
    "constant" => '0',
    "perl" => '5.008',
    "Test::More" => '0',
    "Test::Corpus::Audio::MPD" => '1.092920',
    "IO::Socket" => '0',
    "Proc::Daemon" => '0',
  },
  test => {TESTS => 't/*.t'}
);

