use Orbital::Transfer::Common::Setup;
package Orbital::CLI::Container::TravisCI;
# ABSTRACT: Container for TravisCI

method commands() {
	return +{
		'service/travis-ci' => 'Orbital::CLI::Command::TravisCI',
	};
}

1;
