package Project::Manager::Platform::TravisCI::Settings;

use Moo;
use MooX::TypeTiny;

# See <http://docs.travis-ci.com/api/?http#settings:-general>

# TODO
has builds_only_with_travis_yml => ( is => 'rw', isa => Bool );
# “builds only with .travis.yml” setting (true or false)
has build_pushes => ( is => 'rw', isa => Bool );
# “build pushes” setting (true or false)
has build_pull_request => ( is => 'rw', isa => Bool );
# “build pull requests” setting (true or false)
has maximum_number_of_builds => ( is => 'rw', isa => Int );
# “maximum number of concurrent builds” setting (integer)

1;
