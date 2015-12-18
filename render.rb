#!/usr/bin/env ruby

wordtree =
{
  'create' => {
    'release' => {
      '--force' => {},
      '--with-tarball' => {},
    },
    'user' => {}
  },
  'vms' => {
    '--details' => {},
    '--dns' => {},
    '--vitals' => {},
  }
}

def header()
  puts <<EOF
_BoshComplete ()   #  By convention, the function name
{                 #+ starts with an underscore.
  local cur
  # Pointer to current completion word.
  # By convention, it's named "cur" but this isn't strictly necessary.

  COMPREPLY=()   # Array variable storing the possible completions.
  cur=${COMP_WORDS[COMP_CWORD]}

EOF
end

def rendertree(level, wordtree)
  indent = '  ' + ' ' * (level * 2)
  puts indent + "case \"${COMP_WORDS[#{level}]}\" in"

  thislevel = []

  wordtree.each do | word, children |

      if children.empty?
        # ignore
        next
      end

      puts indent + "  #{word})"
      rendertree(level + 1, children)
      puts indent + "  ;;"
  end

  puts indent + "  *)"
  puts indent + "    COMPREPLY=( $( compgen -W '#{wordtree.keys.join(' ')}' -- $cur ) )"
  puts indent + "  ;;"

  puts indent + "esac"
end

def footer()
  puts <<EOF

  return 0
}

complete -F _BoshComplete -o filenames bo bosh
EOF
end

simple_template = <<EOF
# bosh parameter-completion

_BoshComplete ()   #  By convention, the function name
{                 #+ starts with an underscore.
  local cur
  # Pointer to current completion word.
  # By convention, it's named "cur" but this isn't strictly necessary.

  COMPREPLY=()   # Array variable storing the possible completions.
  cur=${COMP_WORDS[COMP_CWORD]}

  case "${COMP_WORDS[1]}" in
    <% for key in commands: -%>
    create)
      case "${COMP_WORDS[2]}" in
        release)
          COMPREPLY=( $( compgen -W '--force --with-tarball --final' -- $cur ) )
          ;;
        *)
          COMPREPLY=( $( compgen -W 'release user' -- $cur ) )
          ;;
      esac
      ;;
    vms)
      COMPREPLY=( $( compgen -W '--details --dns --vitals' -- $cur ) )
      ;;
    *)
      # top level commands
      COMPREPLY=( $( compgen -W 'add alias aliases aws backup blobs cancel cleanup cloud-config cloudcheck complete create delete deploy deployment deployments diff disks download edit errands export finalize generate get help init inspect instances locks login logout logs micro properties public recreate releases rename reset restart run destination_directory] scp set snapshots ssh start status stemcells stop sync take target targets task tasks unset update upload validate verify version vm vms' -- $cur ) )
      ;;
  esac

  return 0
}

complete -F _BoshComplete -o filenames bo bosh
EOF

#renderer = ERB.new(simple_template)
#puts output = renderer.result()

header
rendertree(1, wordtree)
footer
