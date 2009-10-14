
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Audio-MPD',
  NAME      => 'Audio::MPD',
  AUTHOR    => 'Jerome\ Quelin',
  ABSTRACT  => 'class\ to\ talk\ to\ MPD\ \(Music\ Player\ Daemon\)\ servers',
  VERSION   => '0.19.8',
  EXE_FILES => [ qw(bin/mpd-dynamic) ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "base" => '0',
    "Scalar::Util" => '0',
    "English" => '0',
    "Getopt::Euclid" => '0',
    "FindBin" => '0',
    "Data::Dumper" => '0',
    "DB_File" => '0',
    "constant" => '0',
    "Time::HiRes" => '0',
    "Exporter" => '0',
    "Readonly" => '0',
    "Encode" => '0',
    "Test::More" => '0',
    "IO::Socket" => '0',
    "File::Find" => '0',
    "Proc::Daemon" => '0',
  },
  test => {TESTS => 't/*.t'}
);

