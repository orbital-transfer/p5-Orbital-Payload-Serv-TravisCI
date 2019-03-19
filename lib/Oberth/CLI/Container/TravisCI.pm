use Modern::Perl;
package Oberth::CLI::Container::TravisCI;
# ABSTRACT: Container for TravisCI

use Oberth::Manoeuvre::Common::Setup;

method commands() {
	return +{
		'service/travis-ci' => 'Oberth::CLI::Command::TravisCI',
	};
}

1;
