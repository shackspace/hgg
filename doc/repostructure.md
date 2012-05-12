Repository folder structure
===========================

    github.com/shackspace/hgg
     |- doc
     |- applications
     |   |- gauss_lgslu
     |
     |- hgg
         |- testsuite
         |
         |- libs
         |   |- magic
         |   |- eagle
         | 
         |- modules
             |- obsolete
             |   |- dcf77
             |
             |- flutter
             |   |- doc
             |   |- firmware
             |   |   |- timing_fpga
             |   |   |- periphery_controller
             |   | 
             |   |- hardware
             |   |- software
             | 
             |- friendship
             |- dash
             |- braeburn
             |- celestia

Branching structure
===================
    master - active development head, the latest stuff that seems to work
    stable - specific stages of development selected as stable
    bugfix/issue<n>_<title> - a bugfix, will be merged into master
    feature/issue<n>_<title> - a new feature, will be merged into master
    <user>/<title> - here be dragons

Tagging
=======
Final versions of modules or software (ie flutter v0 will be tagged with 'flutter0')

