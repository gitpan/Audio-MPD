
# This file was automatically generated by Dist::Zilla::Plugin::ModuleBuild v5.019.
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "class to talk to MPD (Music Player Daemon) servers",
  "dist_author" => [
    "Jerome Quelin"
  ],
  "dist_name" => "Audio-MPD",
  "dist_version" => "2.000",
  "license" => "perl",
  "module_name" => "Audio::MPD",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Audio::MPD::Common::Item" => 0,
    "Audio::MPD::Common::Output" => 0,
    "Audio::MPD::Common::Stats" => 0,
    "Audio::MPD::Common::Status" => 0,
    "DB_File" => 0,
    "Encode" => 0,
    "Getopt::Euclid" => 0,
    "IO::Socket::IP" => 0,
    "Moose" => 0,
    "Moose::Util::TypeConstraints" => 0,
    "MooseX::Has::Sugar" => 0,
    "MooseX::SemiAffordanceAccessor" => 0,
    "Proc::Daemon" => 0,
    "Time::HiRes" => 0,
    "perl" => "5.010",
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => [
    "bin/mpd-dynamic",
    "bin/mpd-rate"
  ],
  "test_requires" => {
    "File::Spec" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "List::AllUtils" => 0,
    "Test::Corpus::Audio::MPD" => "1.113282",
    "Test::More" => "0.88"
  }
);


my %fallback_build_requires = (
  "File::Spec" => 0,
  "IO::Handle" => 0,
  "IPC::Open3" => 0,
  "List::AllUtils" => 0,
  "Module::Build" => "0.3601",
  "Test::Corpus::Audio::MPD" => "1.113282",
  "Test::More" => "0.88"
);


unless ( eval { Module::Build->VERSION(0.4004) } ) {
  delete $module_build_args{test_requires};
  $module_build_args{build_requires} = \%fallback_build_requires;
}

my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
