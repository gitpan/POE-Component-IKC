#!/usr/bin/perl 

use strict;

use Test::More tests => 11;

use_ok( 'POE::Component::IKC' );
use_ok( 'POE::Component::IKC::Specifier' );
use_ok( 'POE::Component::IKC::ClientLite' );
use_ok( 'POE::Component::IKC::Freezer' );
use_ok( 'POE::Component::IKC::Proxy' );
use_ok( 'POE::Component::IKC::Channel' );
use_ok( 'POE::Component::IKC::LocalKernel' );
use_ok( 'POE::Component::IKC::Responder' );
use_ok( 'POE::Component::IKC::Server' );
use_ok( 'POE::Component::IKC::Timing' );

package other;
::use_ok( 'POE::Component::IKC::Client' );
