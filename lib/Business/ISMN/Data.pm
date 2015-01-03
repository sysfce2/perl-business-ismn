package Business::ISMN::Data;
use strict;

our $VERSION  = '1.13';

=head1 NAME

Business::ISMN::Data - data pack for Business::ISMN

=head1 SYNOPSIS

see Business::ISMN

=head1 DESCRIPTION

See L<Business::ISMN>.

=head1 AUTHOR

brian d foy, C<< <bdfoy@cpan.org> >>

=head1 COPYRIGHT AND LICENSE

Copyright © 2005-2015, brian d foy <bdfoy@cpan.org>. All rights reserved.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

package Business::ISMN;
use strict;

use vars qw( %publisher_data @publisher_tuples );

%publisher_data = (
'AU' => [ ['075', undef], [2700, 2701], [67300, 67310], [720000, 720200], [9009500, 9009799] ],
'CA' => [ [53001, 53010], [706001, 706050], [9001301, 9001600] ],
'CY' => [ [720300, 720320], [9009800, 9009850] ],
'CZ' => [ [2600, 2605], [66050, 66100], [706500, 706600], [9004000, 9005000] ],
'DE' => [ ['000', '025'], [2000, 2150], [50000, 52000], [700000, 705000], [9000000, 9001000] ],
'DK' => [ [66130, 66140], [706750, 706800], [9001801, 9001900] ],
'ES' => [ [3500, 3507], [69200, 69224], [801200, 801219], [9013100, 9013119] ],
'FI' => [ ['042', undef], [55001, 55020], [706300, 706349], [9001601, 9001700] ],
'FR' => [ ['043', '048'], [2301, 2400], [56000, 56500] ],
'GB' => [ ['050', '060'], [2201, 2300], [57000, 57999], [708001, 709000], [9002000, 9002999] ],
'GH' => [ [9008000, 9008100] ],
'GR' => [ [69150, 69159], [801150, 801179], [9013030, 9013079] ],
'HR' => [ [706700, 706710], [9005201, 9005250] ],
'HU' => [ [55030, undef], [706251, 706260], [9005251, 9005260], ['080', undef] ],
'IT' => [ ['039', '041'], [2151, 2200], [52001, 53000], [705001, 706000], [9001001, 9001300] ],
'JP' => [ [65001, undef] ],
'LK' => [ [710000, 710100], [9006400, 9006500] ],
'LT' => [ [59995, 59999], [706201, 706250] ],
'LV' => [ [706650, 706660], [9005001, 9005100] ],
'NO' => [ ['065', undef], [2610, 2617], [66101, 66115], [706680, 706690], [9005101, 9005200] ],
'PT' => [ [3000, undef], [707700, 707750], [9007500, 9007600] ],
'RU' => [ [66000, 66055] ],
'SE' => [ ['070', undef], [66150, 66170], [706850, 706900], [9006000, 9006200] ],
'SI' => [ [709001, 709100], [9009000, 9009100] ],
'SK' => [ [68500, 68520], [9010001, 9010050] ],
'TR' => [ ['036', '037'], [3440, 3445], [69080, 69095], [801100, 801120], [9013000, 9013010] ],
'UA' => [ [707500, 707600], [9007000, 9007200] ],
'US' => [ ['081', '099'], [3005, 3205], [58000, 58199], [60001, 60002], [800000, 800199], [9012000, 9012099] ],
);

foreach my $key ( keys %publisher_data )
	{
	my @pairs = map { [ $key, @$_ ] } @{ $publisher_data{$key} };
	push @publisher_tuples, @pairs;
	}

@publisher_tuples = sort { $a->[1] <=> $b->[1] } @publisher_tuples;

1;
