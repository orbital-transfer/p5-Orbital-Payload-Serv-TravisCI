use strict;
use warnings;

use Modern::Perl;
use Test::More tests => 1;
use Test::Exception;

use Project::Manager::Platform::TravisCI;
use Project::Manager::Config;

my $token = Project::Manager::Config->github_token;
my $travis = Project::Manager::Platform::TravisCI->new( github_token => $token );

# "Accept: application/json; chunked=true; version=2, application/json; version=2"
#my $repos_for_user = $travis->client->get('/users');;

use DDP; p $travis->accounts->content_json;
