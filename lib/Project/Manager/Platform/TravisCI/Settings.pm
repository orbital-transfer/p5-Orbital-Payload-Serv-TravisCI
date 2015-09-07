package Project::Manager::Platform::TravisCI::Settings;

use Moo;
use MooX::TypeTiny;

# TODO synopsis, description

=head1 SYNOPSIS

  use Project::Manager::Platform::TravisCI::Settings;

=cut

=head1 DESCRIPTION

See L<http://docs.travis-ci.com/api/?http#settings:-general>.

=cut

=attr builds_only_with_travis_yml 

A Boolean representing Travis-CI's "builds only with .travis.yml" setting. This
controls whether or not Travis-CI will only run builds with a C<.travis.yml>.

From L<http://blog.travis-ci.com/2014-03-05-repository-settings/>:

=over 4

By default we build all of the commits pushed to GitHub, but sometimes it's
not needed, branches not having .travis.yml file will most likely end up with
errored out builds. By checking this option, you change the default behaviour
to not build a commit if it does not contain a .travis.yml file.

=back

When creating a new repository, this defaults to C<false>.

=cut
has builds_only_with_travis_yml => ( is => 'rw', isa => Bool );

=attr build_pushes

A Boolean representing Travis-CI's "build pushes" setting.

From L<http://blog.travis-ci.com/2014-03-05-repository-settings/>:

=over 4

This option allows you to disable builds on pushes.

=back

When creating a new repository, this defaults to C<true>.

=cut
has build_pushes => ( is => 'rw', isa => Bool );

=attr build_pull_request

A Boolean representing Travis-CI's "build pull requests" setting.

From L<http://blog.travis-ci.com/2014-03-05-repository-settings/>:

=over 4

This option allows you to disable builds on pull requests

=back

When creating a new repository, this defaults to C<true>.

=cut
has build_pull_request => ( is => 'rw', isa => Bool );

=attr maximum_number_of_builds

An Integer representing Travis-CI's "maximum number of concurrent builds"
setting.

From L<http://docs.travis-ci.com/user/customizing-the-build/#Limiting-Concurrent-Builds>:

=over 4

The maximum number of concurrent builds depends on the total system load, but
one situation in which you might want to set a particular limit is:

=over 4

=item * if your build depends on an external resource and might run into a race
condition with concurrent builds.

=back

=back


=cut
has maximum_number_of_builds => ( is => 'rw', isa => Int );

1;
