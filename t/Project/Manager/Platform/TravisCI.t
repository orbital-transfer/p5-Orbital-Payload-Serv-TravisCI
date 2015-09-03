use strict;
use warnings;

use Modern::Perl;
use Test::More tests => 1;
use Test::Exception;

use Project::Manager::Platform::TravisCI;
use Project::Manager::Config;

my $token = Project::Manager::Config->github_token;
my $travis = Project::Manager::Platform::TravisCI->new( github_token => $token );

use DDP; p $travis->fetch_users->content_json;
#use DDP; p $travis->fetch_user_permissions->content_json;
#use DDP; p $travis->fetch_settings_for_github_repo('5824968')->content_json;

#use DDP; p $travis->fetch_accounts->content_json;
