package Orbital::Payload::Serv::TravisCI;
# ABSTRACT: Interface to TravisCI continuous integration service

# TODO
# - enable projects
# - get/set settings (e.g., concurrent builds)
# - show recent builds
# - encrypt file

use strict;
use warnings;

use Net::Travis::API::Auth::GitHub 0.002000;
use Net::Travis::API::UA;

use Moo;

has client => ( is => 'lazy' ); # _build_client

has github_token => ( is => 'ro' );

has token => ( is => 'lazy' );

sub _build_token {
	my $token_travis = `travis token --no-interactive`;
	chomp $token_travis;

	$token_travis;
}

sub _build_client {
	my ($self) = @_;
	my $ua = Net::Travis::API::UA->new(
		authtokens => [ $self->token ]
	);
	#my $ua = Net::Travis::API::Auth::GitHub->get_authorised_ua_for( $self->github_token );
	$ua;
}

sub fetch_settings_for_github_repo {
	# requires auth
	my ($self, $repo_id) = @_;
	Orbital::Payload::Serv::TravisCI::Settings->new(
		net_travis_response => $self->client->get("/repos/$repo_id/settings")
	);
}

sub fetch_user_permissions {
	# requires auth
	my ($self) = @_;
	$self->client->get("/users/permissions");
}

sub request_sync_with_github {
	# requires auth
	my ($self) = @_;
	$self->client->post('/users/sync');
}

sub fetch_accounts {
	# requires auth
	my ($self) = @_;
	$self->client->get('/accounts');
}

sub fetch_users {
	# requires auth
	my ($self, $user_id) = @_;
	my $endpoint = defined $user_id ? "/users/$user_id" : "/users";
	$self->client->get($endpoint);
}

1;
