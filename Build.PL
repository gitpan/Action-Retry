
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601",
    "Test::Most" => 0,
    "Test::Pretty" => 0
  },
  "configure_requires" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Module to try to perform an action, with various ways of retrying and sleeping between retries.",
  "dist_author" => [
    "Damien \"dams\" Krotkine"
  ],
  "dist_name" => "Action-Retry",
  "dist_version" => "0.14",
  "license" => "perl",
  "module_name" => "Action::Retry",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Math::Fibonacci" => 0,
    "Module::Runtime" => 0,
    "Moo" => 0,
    "Scalar::Util" => 0,
    "Time::HiRes" => 0,
    "namespace::autoclean" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
