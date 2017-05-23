use strict;
use warnings;

use Modern::Perl;
use Test::More tests => 1;
use Test::Exception;

use Oberth::Service::TravisCI;
use Oberth::Config;

my $token = Oberth::Config->github_token;
my $travis = Oberth::Service::TravisCI->new( github_token => $token );

#use DDP; p $travis->fetch_users->content_json;
#use DDP; p $travis->fetch_user_permissions->content_json;
#use DDP; p $travis->fetch_settings_for_github_repo('5824968')->content_json;

#use DDP; p $travis->fetch_accounts->content_json;

use DDP; p $travis->client->get('/repos/PDLPorters')->content_json;
use DDP; p $travis->client->get('/repos/?member=zmughal')->content_json;
