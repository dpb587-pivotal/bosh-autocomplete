
# bosh parameter-completion

_BoshComplete ()   #  By convention, the function name
{                 #+ starts with an underscore.
  local cur
  # Pointer to current completion word.
  # By convention, it's named "cur" but this isn't strictly necessary.

  COMPREPLY=()   # Array variable storing the possible completions.
  cur=${COMP_WORDS[COMP_CWORD]}

  case "$cur" in
    *)
      # top level commands
    COMPREPLY=( $( compgen -W 'add alias aliases aws backup blobs cancel cleanup cloud-config cloudcheck complete create delete deploy deployment deployments diff disks download edit errands export finalize generate get help init inspect instances locks login logout logs micro properties public recreate releases rename reset restart run destination_directory] scp set snapshots ssh start status stemcells stop sync take target targets task tasks unset update upload validate verify version vm vms' -- $cur ) );;
#   Generate the completion matches and load them into $COMPREPLY array.
#   xx) May add more cases here.
#   yy)
#   zz)
  esac

  return 0
}

complete -F _BoshComplete -o filenames bo bosh
