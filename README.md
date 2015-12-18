To use this...

    $ . BoshAutocompleteGetOpt.sh
    $ bosh c[tab]
    cancel        cleanup       cloud-config  cloudcheck    complete      create

To create symbolic to allow the `bosh autocomplete` command:

    ln -sf $PWD/autocomplete.rb ~/workspace/bosh/bosh_cli/lib/cli/commands/autocomplete.rb
    bosh autocomplete > BoshAutocompleteGetOpt.sh
    . BoshAutocompleteGetOpt.sh
