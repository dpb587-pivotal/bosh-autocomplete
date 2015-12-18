_BoshComplete ()
{
  local cur opts

  COMPREPLY=()
  cur=${COMP_WORDS[COMP_CWORD]}

  case "${COMP_WORDS[1]}" in
    autocomplete)
    ;;
    backup)
    case "${COMP_WORDS[2]}" in
      *)
        opts=" --force "
      ;;
    esac
    ;;
    diff)
    ;;
    blobs)
    ;;
    add)
    case "${COMP_WORDS[2]}" in
      blob)
      ;;
      *)
        opts=" blob "
      ;;
    esac
    ;;
    upload)
    case "${COMP_WORDS[2]}" in
      blobs)
      ;;
      release)
      case "${COMP_WORDS[3]}" in
        *)
          opts=" --rebase --skip-if-exists --dir --sha1 --name --version --fix "
        ;;
      esac
      ;;
      stemcell)
      case "${COMP_WORDS[3]}" in
        *)
          opts=" --skip-if-exists --fix --sha1 --name --version "
        ;;
      esac
      ;;
      *)
        opts=" blobs release stemcell "
      ;;
    esac
    ;;
    sync)
    case "${COMP_WORDS[2]}" in
      blobs)
      ;;
      *)
        opts=" blobs "
      ;;
    esac
    ;;
    cloud-config)
    ;;
    update)
    case "${COMP_WORDS[2]}" in
      cloud-config)
      ;;
      *)
        opts=" cloud-config "
      ;;
    esac
    ;;
    cloudcheck)
    case "${COMP_WORDS[2]}" in
      *)
        opts=" --auto --report "
      ;;
    esac
    ;;
    complete)
    ;;
    deployment)
    ;;
    edit)
    case "${COMP_WORDS[2]}" in
      deployment)
      ;;
      *)
        opts=" deployment "
      ;;
    esac
    ;;
    deploy)
    case "${COMP_WORDS[2]}" in
      *)
        opts=" --recreate --redact-diff --skip-drain "
      ;;
    esac
    ;;
    delete)
    case "${COMP_WORDS[2]}" in
      deployment)
      case "${COMP_WORDS[3]}" in
        *)
          opts=" --force "
        ;;
      esac
      ;;
      disk)
      ;;
      release)
      case "${COMP_WORDS[3]}" in
        *)
          opts=" --force "
        ;;
      esac
      ;;
      snapshot)
      ;;
      snapshots)
      ;;
      stemcell)
      case "${COMP_WORDS[3]}" in
        *)
          opts=" --force "
        ;;
      esac
      ;;
      user)
      ;;
      *)
        opts=" deployment disk release snapshot snapshots stemcell user "
      ;;
    esac
    ;;
    validate)
    case "${COMP_WORDS[2]}" in
      jobs)
      ;;
      *)
        opts=" jobs "
      ;;
    esac
    ;;
    deployments)
    ;;
    download)
    case "${COMP_WORDS[2]}" in
      manifest)
      ;;
      public)
      case "${COMP_WORDS[3]}" in
        stemcell)
        ;;
        *)
          opts=" stemcell "
        ;;
      esac
      ;;
      *)
        opts=" manifest public "
      ;;
    esac
    ;;
    disks)
    case "${COMP_WORDS[2]}" in
      *)
        opts=" --orphaned "
      ;;
    esac
    ;;
    errands)
    ;;
    run)
    case "${COMP_WORDS[2]}" in
      errand)
      case "${COMP_WORDS[3]}" in
        *)
          opts=" --download-logs --logs-dir --keep-alive "
        ;;
      esac
      ;;
      *)
        opts=" errand "
      ;;
    esac
    ;;
    help)
    case "${COMP_WORDS[2]}" in
      *)
        opts=" --all "
      ;;
    esac
    ;;
    instances)
    case "${COMP_WORDS[2]}" in
      *)
        opts=" --details --dns --vitals --ps --failing "
      ;;
    esac
    ;;
    generate)
    case "${COMP_WORDS[2]}" in
      job)
      ;;
      package)
      ;;
      *)
        opts=" job package "
      ;;
    esac
    ;;
    start)
    case "${COMP_WORDS[2]}" in
      *)
        opts=" --force "
      ;;
    esac
    ;;
    stop)
    case "${COMP_WORDS[2]}" in
      *)
        opts=" --soft --hard --force --skip-drain "
      ;;
    esac
    ;;
    restart)
    case "${COMP_WORDS[2]}" in
      *)
        opts=" --force --skip-drain "
      ;;
    esac
    ;;
    recreate)
    case "${COMP_WORDS[2]}" in
      *)
        opts=" --force --skip-drain "
      ;;
    esac
    ;;
    rename)
    case "${COMP_WORDS[2]}" in
      job)
      case "${COMP_WORDS[3]}" in
        *)
          opts=" --force "
        ;;
      esac
      ;;
      *)
        opts=" job "
      ;;
    esac
    ;;
    locks)
    ;;
    logs)
    case "${COMP_WORDS[2]}" in
      *)
        opts=" --agent --job --only --dir --all "
      ;;
    esac
    ;;
    login)
    ;;
    logout)
    ;;
    cleanup)
    case "${COMP_WORDS[2]}" in
      ssh)
      ;;
      *)
        opts=" --all ssh "
      ;;
    esac
    ;;
    version)
    ;;
    status)
    case "${COMP_WORDS[2]}" in
      *)
        opts=" --uuid "
      ;;
    esac
    ;;
    target)
    case "${COMP_WORDS[2]}" in
      *)
        opts=" --ca-cert "
      ;;
    esac
    ;;
    targets)
    ;;
    alias)
    ;;
    aliases)
    ;;
    set)
    case "${COMP_WORDS[2]}" in
      property)
      ;;
      *)
        opts=" property "
      ;;
    esac
    ;;
    unset)
    case "${COMP_WORDS[2]}" in
      property)
      ;;
      *)
        opts=" property "
      ;;
    esac
    ;;
    get)
    case "${COMP_WORDS[2]}" in
      property)
      ;;
      *)
        opts=" property "
      ;;
    esac
    ;;
    properties)
    case "${COMP_WORDS[2]}" in
      *)
        opts=" --terse "
      ;;
    esac
    ;;
    create)
    case "${COMP_WORDS[2]}" in
      release)
      case "${COMP_WORDS[3]}" in
        *)
          opts=" --force --final --with-tarball --dry-run --name --version --dir --timestamp-version "
        ;;
      esac
      ;;
      user)
      ;;
      *)
        opts=" release user "
      ;;
    esac
    ;;
    export)
    case "${COMP_WORDS[2]}" in
      release)
      ;;
      *)
        opts=" release "
      ;;
    esac
    ;;
    finalize)
    case "${COMP_WORDS[2]}" in
      release)
      case "${COMP_WORDS[3]}" in
        *)
          opts=" --dry-run --name --version "
        ;;
      esac
      ;;
      *)
        opts=" release "
      ;;
    esac
    ;;
    init)
    case "${COMP_WORDS[2]}" in
      release)
      case "${COMP_WORDS[3]}" in
        *)
          opts=" --git "
        ;;
      esac
      ;;
      *)
        opts=" release "
      ;;
    esac
    ;;
    inspect)
    case "${COMP_WORDS[2]}" in
      release)
      ;;
      *)
        opts=" release "
      ;;
    esac
    ;;
    releases)
    case "${COMP_WORDS[2]}" in
      *)
        opts=" --jobs "
      ;;
    esac
    ;;
    reset)
    case "${COMP_WORDS[2]}" in
      release)
      ;;
      *)
        opts=" release "
      ;;
    esac
    ;;
    verify)
    case "${COMP_WORDS[2]}" in
      release)
      ;;
      stemcell)
      ;;
      *)
        opts=" release stemcell "
      ;;
    esac
    ;;
    snapshots)
    ;;
    take)
    case "${COMP_WORDS[2]}" in
      snapshot)
      ;;
      *)
        opts=" snapshot "
      ;;
    esac
    ;;
    ssh)
    case "${COMP_WORDS[2]}" in
      *)
        opts=" --gateway_host --gateway_user --gateway_identity_file --default_password --strict_host_key_checking --no_gateway "
      ;;
    esac
    ;;
    scp)
    case "${COMP_WORDS[2]}" in
      *)
        opts=" --download --upload --gateway_host --gateway_user --gateway_identity_file --no_gateway "
      ;;
    esac
    ;;
    stemcells)
    ;;
    public)
    case "${COMP_WORDS[2]}" in
      stemcells)
      case "${COMP_WORDS[3]}" in
        *)
          opts=" --full --all "
        ;;
      esac
      ;;
      *)
        opts=" stemcells "
      ;;
    esac
    ;;
    task)
    case "${COMP_WORDS[2]}" in
      *)
        opts=" --event --cpi --debug --result --raw --no-filter "
      ;;
    esac
    ;;
    tasks)
    case "${COMP_WORDS[2]}" in
      recent)
      case "${COMP_WORDS[3]}" in
        *)
          opts=" --no-filter "
        ;;
      esac
      ;;
      *)
        opts=" --no-filter recent "
      ;;
    esac
    ;;
    cancel)
    case "${COMP_WORDS[2]}" in
      task)
      ;;
      *)
        opts=" task "
      ;;
    esac
    ;;
    vm)
    case "${COMP_WORDS[2]}" in
      resurrection)
      ;;
      *)
        opts=" resurrection "
      ;;
    esac
    ;;
    vms)
    case "${COMP_WORDS[2]}" in
      *)
        opts=" --details --dns --vitals "
      ;;
    esac
    ;;
    micro)
    case "${COMP_WORDS[2]}" in
      deployment)
      ;;
      status)
      ;;
      deploy)
      case "${COMP_WORDS[3]}" in
        *)
          opts=" --update --update-if-exists "
        ;;
      esac
      ;;
      delete)
      ;;
      deployments)
      ;;
      agent)
      ;;
      apply)
      ;;
      *)
        opts=" deployment status deploy delete deployments agent apply "
      ;;
    esac
    ;;
    aws)
    case "${COMP_WORDS[2]}" in
      bootstrap)
      case "${COMP_WORDS[3]}" in
        micro)
        ;;
        bosh)
        ;;
        *)
          opts=" micro bosh "
        ;;
      esac
      ;;
      generate)
      case "${COMP_WORDS[3]}" in
        micro_bosh)
        ;;
        bosh)
        ;;
        bat)
        ;;
        *)
          opts=" micro_bosh bosh bat "
        ;;
      esac
      ;;
      create)
      case "${COMP_WORDS[3]}" in
        s3)
        ;;
        key_pairs)
        ;;
        route53)
        case "${COMP_WORDS[4]}" in
          records)
          ;;
          *)
            opts=" records "
          ;;
        esac
        ;;
        vpc)
        ;;
        *)
          opts=" --trace s3 key_pairs route53 vpc "
        ;;
      esac
      ;;
      destroy)
      ;;
      *)
        opts=" bootstrap generate create destroy "
      ;;
    esac
    ;;
    *)
      opts=" autocomplete backup diff blobs add upload sync cloud-config update cloudcheck complete deployment edit deploy delete validate deployments download disks errands run help instances generate start stop restart recreate rename locks logs login logout cleanup version status target targets alias aliases set unset get properties create export finalize init inspect releases reset verify snapshots take ssh scp stemcells public task tasks cancel vm vms micro aws "
    ;;
  esac

  for COMP_WORD in "${COMP_WORDS[@]}" ; do
    opts=${opts/ $COMP_WORD / }
  done

  COMPREPLY=( $( compgen -W "$opts" -- $cur ) )

  return 0
}

complete -F _BoshComplete bo bosh -o filenames
