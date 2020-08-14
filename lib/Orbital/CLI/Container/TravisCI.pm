use Modern::Perl;
package Orbital::CLI::Container::TravisCI;
# ABSTRACT: Container for TravisCI

use Orbital::Transfer::Common::Setup;

method commands() {
	return +{
		'service/travis-ci' => 'Orbital::CLI::Command::TravisCI',
	};
}

1;
