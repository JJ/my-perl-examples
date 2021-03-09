#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;

use v5.14;

use Test::Output;

sub error {
  my $msg = shift;
  my $message= "foo";
  if ( $msg eq "bar") {
    $message .= "bar";
  }
  say "$message $msg";
}

sub setting_error {
  error('FOO');
}

stdout_is(\&setting_error,"foo FOO\n", "Sets error with FOO value" );


done_testing;
