package Project::Manager::Command::TravisCI;

use strict;
use warnings;

# TODO get subcommands from Travis-CI CLI client
# <https://github.com/travis-ci/travis.rb>
# and other command-line tools
# <http://docs.travis-ci.com/user/apps/#commandline>
my @sub = qw/
accounts console endpoint login monitor raw report repos sync lint token
whatsup whoami branches cache cancel disable enable encrypt encrypt-file env
history init logs open pubkey requests restart settings setup show sshkey
status

/;


=head1 Commands

General API Commands

=over 4

=item * accounts - displays accounts and their subscription status

=item * console - interactive shell

=item * endpoint - displays or changes the API endpoint

=item * login - authenticates against the API and stores the token

=item * monitor - live monitor for what's going on

=item * raw - makes an (authenticated) API call and prints out the result

=item * report - generates a report useful for filing issues

=item * repos - lists repositories the user has certain permissions on

=item * sync - triggers a new sync with GitHub

=item * lint - display warnings for a .travis.yml

=item * token - outputs the secret API token

=item * whatsup - lists most recent builds

=item * whoami - outputs the current user


=back

Repository Commands

=over 4

=item * branches - displays the most recent build for each branch

=item * cache - lists or deletes repository caches

=item * cancel - cancels a job or build

=item * disable - disables a project

=item * enable - enables a project

=item * encrypt - encrypts values for the .travis.yml

=item * encrypt-file - encrypts a file and adds decryption steps to .travis.yml

=item * env - show or modify build environment variables

=item * history - displays a projects build history

=item * init - generates a .travis.yml and enables the project

=item * logs - streams test logs

=item * open - opens a build or job in the browser

=item * pubkey - prints out a repository's public key

=item * requests - lists recent requests

=item * restart - restarts a build or job

=item * settings - access repository settings

=item * setup - sets up an addon or deploy target

=item * show - displays a build or job

=item * sshkey - checks, updates or deletes an SSH key

=item * status - checks status of the latest build


=back

=cut

1;
