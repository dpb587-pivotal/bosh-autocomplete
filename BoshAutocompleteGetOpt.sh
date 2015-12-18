_BoshComplete ()   #  By convention, the function name
{                 #+ starts with an underscore.
  local cur
  # Pointer to current completion word.
  # By convention, it's named "cur" but this isn't strictly necessary.

  COMPREPLY=()   # Array variable storing the possible completions.
  cur=${COMP_WORDS[COMP_CWORD]}

  case "${COMP_WORDS[1]}" in
    backup)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W '--force' -- $cur ) )
      ;;
    esac
    ;;
    add)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W 'blob' -- $cur ) )
      ;;
    esac
    ;;
    upload)
    case "${COMP_WORDS[2]}" in
      release)
      case "${COMP_WORDS[3]}" in
        *)
          COMPREPLY=( $( compgen -W '--rebase --skip-if-exists --dir --sha1 --name --version --fix' -- $cur ) )
        ;;
      esac
      ;;
      stemcell)
      case "${COMP_WORDS[3]}" in
        *)
          COMPREPLY=( $( compgen -W '--skip-if-exists --fix --sha1 --name --version' -- $cur ) )
        ;;
      esac
      ;;
      *)
        COMPREPLY=( $( compgen -W 'blobs release stemcell' -- $cur ) )
      ;;
    esac
    ;;
    sync)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W 'blobs' -- $cur ) )
      ;;
    esac
    ;;
    update)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W 'cloud-config' -- $cur ) )
      ;;
    esac
    ;;
    cloudcheck)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W '--auto --report' -- $cur ) )
      ;;
    esac
    ;;
    edit)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W 'deployment' -- $cur ) )
      ;;
    esac
    ;;
    deploy)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W '--recreate --redact-diff --skip-drain' -- $cur ) )
      ;;
    esac
    ;;
    delete)
    case "${COMP_WORDS[2]}" in
      deployment)
      case "${COMP_WORDS[3]}" in
        *)
          COMPREPLY=( $( compgen -W '--force' -- $cur ) )
        ;;
      esac
      ;;
      release)
      case "${COMP_WORDS[3]}" in
        *)
          COMPREPLY=( $( compgen -W '--force' -- $cur ) )
        ;;
      esac
      ;;
      stemcell)
      case "${COMP_WORDS[3]}" in
        *)
          COMPREPLY=( $( compgen -W '--force' -- $cur ) )
        ;;
      esac
      ;;
      *)
        COMPREPLY=( $( compgen -W 'deployment disk release snapshot snapshots stemcell user' -- $cur ) )
      ;;
    esac
    ;;
    validate)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W 'jobs' -- $cur ) )
      ;;
    esac
    ;;
    download)
    case "${COMP_WORDS[2]}" in
      public)
      case "${COMP_WORDS[3]}" in
        *)
          COMPREPLY=( $( compgen -W 'stemcell' -- $cur ) )
        ;;
      esac
      ;;
      *)
        COMPREPLY=( $( compgen -W 'manifest public' -- $cur ) )
      ;;
    esac
    ;;
    disks)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W '--orphaned' -- $cur ) )
      ;;
    esac
    ;;
    run)
    case "${COMP_WORDS[2]}" in
      errand)
      case "${COMP_WORDS[3]}" in
        *)
          COMPREPLY=( $( compgen -W '--download-logs --logs-dir --keep-alive' -- $cur ) )
        ;;
      esac
      ;;
      *)
        COMPREPLY=( $( compgen -W 'errand' -- $cur ) )
      ;;
    esac
    ;;
    help)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W '--all' -- $cur ) )
      ;;
    esac
    ;;
    instances)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W '--details --dns --vitals --ps --failing' -- $cur ) )
      ;;
    esac
    ;;
    generate)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W 'job package' -- $cur ) )
      ;;
    esac
    ;;
    start)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W '--force' -- $cur ) )
      ;;
    esac
    ;;
    stop)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W '--soft --hard --force --skip-drain' -- $cur ) )
      ;;
    esac
    ;;
    restart)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W '--force --skip-drain' -- $cur ) )
      ;;
    esac
    ;;
    recreate)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W '--force --skip-drain' -- $cur ) )
      ;;
    esac
    ;;
    rename)
    case "${COMP_WORDS[2]}" in
      job)
      case "${COMP_WORDS[3]}" in
        *)
          COMPREPLY=( $( compgen -W '--force' -- $cur ) )
        ;;
      esac
      ;;
      *)
        COMPREPLY=( $( compgen -W 'job' -- $cur ) )
      ;;
    esac
    ;;
    logs)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W '--agent --job --only --dir --all' -- $cur ) )
      ;;
    esac
    ;;
    cleanup)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W '--all ssh' -- $cur ) )
      ;;
    esac
    ;;
    status)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W '--uuid' -- $cur ) )
      ;;
    esac
    ;;
    target)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W '--ca-cert' -- $cur ) )
      ;;
    esac
    ;;
    set)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W 'property' -- $cur ) )
      ;;
    esac
    ;;
    unset)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W 'property' -- $cur ) )
      ;;
    esac
    ;;
    get)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W 'property' -- $cur ) )
      ;;
    esac
    ;;
    properties)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W '--terse' -- $cur ) )
      ;;
    esac
    ;;
    create)
    case "${COMP_WORDS[2]}" in
      release)
      case "${COMP_WORDS[3]}" in
        *)
          COMPREPLY=( $( compgen -W '--force --final --with-tarball --dry-run --name --version --dir --timestamp-version' -- $cur ) )
        ;;
      esac
      ;;
      *)
        COMPREPLY=( $( compgen -W 'release user' -- $cur ) )
      ;;
    esac
    ;;
    export)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W 'release' -- $cur ) )
      ;;
    esac
    ;;
    finalize)
    case "${COMP_WORDS[2]}" in
      release)
      case "${COMP_WORDS[3]}" in
        *)
          COMPREPLY=( $( compgen -W '--dry-run --name --version' -- $cur ) )
        ;;
      esac
      ;;
      *)
        COMPREPLY=( $( compgen -W 'release' -- $cur ) )
      ;;
    esac
    ;;
    init)
    case "${COMP_WORDS[2]}" in
      release)
      case "${COMP_WORDS[3]}" in
        *)
          COMPREPLY=( $( compgen -W '--git' -- $cur ) )
        ;;
      esac
      ;;
      *)
        COMPREPLY=( $( compgen -W 'release' -- $cur ) )
      ;;
    esac
    ;;
    inspect)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W 'release' -- $cur ) )
      ;;
    esac
    ;;
    releases)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W '--jobs' -- $cur ) )
      ;;
    esac
    ;;
    reset)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W 'release' -- $cur ) )
      ;;
    esac
    ;;
    verify)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W 'release stemcell' -- $cur ) )
      ;;
    esac
    ;;
    take)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W 'snapshot' -- $cur ) )
      ;;
    esac
    ;;
    ssh)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W '--gateway_host --gateway_user --gateway_identity_file --default_password --strict_host_key_checking --no_gateway' -- $cur ) )
      ;;
    esac
    ;;
    scp)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W '--download --upload --gateway_host --gateway_user --gateway_identity_file --no_gateway' -- $cur ) )
      ;;
    esac
    ;;
    public)
    case "${COMP_WORDS[2]}" in
      stemcells)
      case "${COMP_WORDS[3]}" in
        *)
          COMPREPLY=( $( compgen -W '--full --all' -- $cur ) )
        ;;
      esac
      ;;
      *)
        COMPREPLY=( $( compgen -W 'stemcells' -- $cur ) )
      ;;
    esac
    ;;
    task)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W '--event --cpi --debug --result --raw --no-filter' -- $cur ) )
      ;;
    esac
    ;;
    tasks)
    case "${COMP_WORDS[2]}" in
      recent)
      case "${COMP_WORDS[3]}" in
        *)
          COMPREPLY=( $( compgen -W '--no-filter' -- $cur ) )
        ;;
      esac
      ;;
      *)
        COMPREPLY=( $( compgen -W '--no-filter recent' -- $cur ) )
      ;;
    esac
    ;;
    cancel)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W 'task' -- $cur ) )
      ;;
    esac
    ;;
    vm)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W 'resurrection' -- $cur ) )
      ;;
    esac
    ;;
    vms)
    case "${COMP_WORDS[2]}" in
      *)
        COMPREPLY=( $( compgen -W '--details --dns --vitals' -- $cur ) )
      ;;
    esac
    ;;
    micro)
    case "${COMP_WORDS[2]}" in
      deploy)
      case "${COMP_WORDS[3]}" in
        *)
          COMPREPLY=( $( compgen -W '--update --update-if-exists' -- $cur ) )
        ;;
      esac
      ;;
      *)
        COMPREPLY=( $( compgen -W 'deployment status deploy delete deployments agent apply' -- $cur ) )
      ;;
    esac
    ;;
    aws)
    case "${COMP_WORDS[2]}" in
      bootstrap)
      case "${COMP_WORDS[3]}" in
        *)
          COMPREPLY=( $( compgen -W 'micro bosh' -- $cur ) )
        ;;
      esac
      ;;
      generate)
      case "${COMP_WORDS[3]}" in
        *)
          COMPREPLY=( $( compgen -W 'micro_bosh bosh bat' -- $cur ) )
        ;;
      esac
      ;;
      create)
      case "${COMP_WORDS[3]}" in
        route53)
        case "${COMP_WORDS[4]}" in
          *)
            COMPREPLY=( $( compgen -W 'records' -- $cur ) )
          ;;
        esac
        ;;
        *)
          COMPREPLY=( $( compgen -W '--trace s3 key_pairs route53 vpc' -- $cur ) )
        ;;
      esac
      ;;
      *)
        COMPREPLY=( $( compgen -W 'bootstrap generate create destroy' -- $cur ) )
      ;;
    esac
    ;;
    *)
      COMPREPLY=( $( compgen -W 'autocomplete backup diff blobs add upload sync cloud-config update cloudcheck complete deployment edit deploy delete validate deployments download disks errands run help instances generate start stop restart recreate rename locks logs login logout cleanup version status target targets alias aliases set unset get properties create export finalize init inspect releases reset verify snapshots take ssh scp stemcells public task tasks cancel vm vms micro aws' -- $cur ) )
    ;;
  esac

  return 0
}

complete -F _BoshComplete -o filenames bo bosh
