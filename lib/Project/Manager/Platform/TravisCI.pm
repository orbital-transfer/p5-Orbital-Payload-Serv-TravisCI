package Project::Manager::Platform::TravisCI;
# TODO
# - enable projects
# - get/set settings (e.g., concurrent builds)
# - show recent builds
# - encrypt file

use strict;
use warnings;

use Net::Travis::API::Auth::GitHub;

use Moo;

has client => ( is => 'lazy' ); # _build_client

has github_token => ( is => 'ro', required => 1 );

sub _build_client {
	my ($self) = @_;
	my $ua = Net::Travis::API::Auth::GitHub->get_authorised_ua_for( $self->github_token );
	$ua->{default_headers}{Accept} = "application/vnd.travis-ci.2+json, application/json; chunked=true; version=2, application/json; version=2";
	$ua;
}

sub fetch_settings_for_github_repo {
	# requires auth
	my ($self, $repo_id) = @_;
	Project::Manager::Platform::TravisCI::Settings->new(
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
