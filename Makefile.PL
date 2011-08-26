use ExtUtils::MakeMaker;

WriteMakefile(
    AUTHOR  => 'Philip Gwyn',
    NAME	=> 'POE::Component::IKC',
    VERSION_FROM => 'IKC.pm', # finds $VERSION
    DISTNAME => 'POE-Component-IKC',
    dist=>{COMPRESS=>'gzip -9f', EXT=>'gz'},
    PREREQ_PM =>{
            POE          => 1.311,
            Scalar::Util => 1,
            Test::More   => 0.6
        },
    ABSTRACT => 'Inter-Kernel Communication for POE',
    LICENSE => 'perl'    
);
