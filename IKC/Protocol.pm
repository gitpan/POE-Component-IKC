package POE::Component::IKC::Protocol;

############################################################
# $Id$
# Copyright 2011 Philip Gwyn.  All rights reserved.
# This program is free software; you can redistribute it and/or modify
# it under the same terms as Perl itself.
#
# Contributed portions of IKC may be copyright by their respective
# contributors.  

use strict;
use Socket;


sub __build_setup
{
    my( $aliases, $freezers ) = @_;
    return 'SETUP '.join ';', 'KERNEL='.join( ',', @$aliases ), 
                              'FREEZER='.join( ',', @$freezers );
}        

sub __neg_setup
{
    my( $setup ) = @_;
    my( @kernel, @freezer, $bad );
    foreach my $bit ( split ';', $1 ) {
        if( $bit =~ m/KERNEL=(.+)/ ) {
            @kernel = split ',', $1;
        }
        elsif( $bit =~ m/FREEZER=(.+)/ ) {
            @freezer = split ',', $1;
        }
        else {
            warn "Server sent unknown setup '$bit' during negociation\n";
            $bad++;
        }
    }
    unless( @kernel ) {
        warn "Server didn't send KERNEL in $setup\n";
        $bad++;
    }
    return \@kernel, \@freezer, $bad;
}

1;
