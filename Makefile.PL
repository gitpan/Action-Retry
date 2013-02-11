
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Module to try to perform an action, with various ways of retrying and sleeping between retries.",
  "AUTHOR" => "Damien \"dams\" Krotkine",
  "BUILD_REQUIRES" => {
    "Module::Build" => "0.3601",
    "Test::Most" => 0,
    "Test::Pretty" => 0
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.3601"
  },
  "DISTNAME" => "Action-Retry",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Action::Retry",
  "PREREQ_PM" => {
    "Math::Fibonacci" => 0,
    "Module::Runtime" => 0,
    "Moo" => 0,
    "Scalar::Util" => 0,
    "Time::HiRes" => 0,
    "namespace::autoclean" => 0
  },
  "VERSION" => "0.21",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



