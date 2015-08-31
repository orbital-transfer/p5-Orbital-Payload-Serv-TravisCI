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

sub sync_with_github {
	my ($self) = @_;
	$self->client->post('/users/sync');
}

sub accounts {
	my ($self) = @_;
	$self->client->get('/accounts', {
			headers => {
					Accept => "application/json; chunked=true; version=2, application/json; version=2"
				},
		});
}

1;
