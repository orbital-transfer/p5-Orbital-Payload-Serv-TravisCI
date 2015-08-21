package Project::Manager::Platform::TravisCI;

use strict;
use warnings;

use Net::Travis::API::Auth::GitHub;

use Moo;

has client => ( is => 'lazy' ); # _build_client

has github_token => ( is => 'ro', required => 1 );

sub _build_client {
	my ($self) = @_;
	Net::Travis::API::Auth::GitHub->get_authorised_ua_for( $self->github_token );
}


1;
