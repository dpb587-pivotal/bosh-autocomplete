# Copyright (c) 2009-2012 VMware, Inc.

module Bosh::Cli::Command
  class Autocomplete < Base

    # bosh help: shows either a high level help message or drills down to a
    # specific area (release, deployment etc)
    usage "autocomplete"
    desc "Generate autocompletion shell script"

    def autocomplete()
      wordtree = build_wordtree

      print_header
      print_wordtree(1, wordtree)
      print_footer
    end

    private

    def build_wordtree()
      wordtree = {}

      Bosh::Cli::Config.commands.values.each do | command |
        command.usage # "create release"

        link = wordtree

        command.keywords.each do | cmd |
          unless link.has_key?(cmd)
            link[cmd] = {}
          end

          link = link[cmd]
        end

        link[''] = {}

        command.options.each do | option |
          link[option[0].split(/\s/)[0]] = {}
        end
      end

      wordtree
    end


    def print_header()
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

    def print_wordtree(level, wordtree)
      indent = '  ' + ' ' * ((level - 1) * 2)

      if 1 == wordtree.keys.length && wordtree.has_key?('')
        puts indent + "return 0"

        return
      end

      puts indent + "case \"${COMP_WORDS[#{level}]}\" in"

      wordtree.each do | word, children |
        next if children.empty?

        puts indent + "  #{word})"
        print_wordtree(level + 1, children)
        puts indent + "  ;;"
      end

      puts indent + "  *)"
      puts indent + "    COMPREPLY=( $( compgen -W '#{wordtree.keys.join(' ').chomp}' -- $cur ) )"
      puts indent + "  ;;"

      puts indent + "esac"
    end

    def print_footer()
      puts <<EOF

  return 0
}

complete -F _BoshComplete -o filenames bo bosh
EOF
    end
  end
end
