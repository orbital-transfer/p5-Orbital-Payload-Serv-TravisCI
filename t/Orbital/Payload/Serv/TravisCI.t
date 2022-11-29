use strict;
use warnings;

use Orbital::Transfer::Common::Setup;
use Test::More tests => 1;
use Test::Exception;

use Orbital::Payload::Serv::TravisCI;

my $travis = Orbital::Payload::Serv::TravisCI->new();

#use DDP; p $travis->fetch_users->content_json;
#use DDP; p $travis->fetch_user_permissions->content_json;
#use DDP; p $travis->fetch_settings_for_github_repo('5824968')->content_json;

#use DDP; p $travis->fetch_accounts->content_json;

use DDP; p $travis->client->get('/repos/PDLPorters')->content_json;
#use DDP; p $travis->client->get('/repos/?member=zmughal')->content_json;
