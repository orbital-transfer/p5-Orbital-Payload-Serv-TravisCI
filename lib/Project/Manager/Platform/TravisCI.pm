package Project::Manager::Platform::TravisCI;

use strict;
use warnings;

use Net::Travis::API::Auth::GitHub;

use Moo;

has client => ( is => 'lazy' ); # _build_client

sub _build_client {
	...
	# Net::Travis::API::Auth::GitHub->get_authorised_ua_for( $github_token );
}


1;
