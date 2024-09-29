function __bobthefish_glyphs -S -d 'Define glyphs used by bobthefish'
  # Powerline glyphs
  set -x branch_glyph            \uE0A0
  set -x right_black_arrow_glyph \uE0B0
  set -x right_arrow_glyph       \uE0B1
  set -x left_black_arrow_glyph  \uE0B2
  set -x left_arrow_glyph        \uE0B3

  # Additional glyphs
  set -x detached_glyph          \u27A6
  set -x tag_glyph               \u2302
  set -x nonzero_exit_glyph      '! '
  set -x private_glyph           \uE0A2 ' '
  set -x superuser_glyph         '$ '
  set -x bg_job_glyph            '% '
  set -x hg_glyph                \u263F

  # Python glyphs
  set -x superscript_glyph       \u00B9 \u00B2 \u00B3
  set -x virtualenv_glyph        \u25F0
  set -x pypy_glyph              \u1D56

  set -x ruby_glyph              ''
  set -x go_glyph                ''
  set -x nix_glyph               ''

  # Desk glyphs
  set -x desk_glyph              \u25F2 ' '

  # Kubernetes glyphs
  set -x k8s_glyph               \u2388 # '⎈'

  # Vagrant glyphs
  set -x vagrant_running_glyph   \u2191 # ↑ 'running'
  set -x vagrant_poweroff_glyph  \u2193 # ↓ 'poweroff'
  set -x vagrant_aborted_glyph   \u2715 # ✕ 'aborted'
  set -x vagrant_saved_glyph     \u21E1 # ⇡ 'saved'
  set -x vagrant_stopping_glyph  \u21E3 # ⇣ 'stopping'
  set -x vagrant_unknown_glyph   '!'    # strange cases

  # Git glyphs
  set -x git_dirty_glyph      '*'
  set -x git_staged_glyph     '~'
  set -x git_stashed_glyph    '$'
  set -x git_untracked_glyph  '…'
  set -x git_ahead_glyph      \u2191 # '↑'
  set -x git_behind_glyph     \u2193 # '↓'
  set -x git_plus_glyph       '+'
  set -x git_minus_glyph      '-'
  set -x git_plus_minus_glyph '±'

  # Fossil glyph (it reuses most of the git glyphs)
  set -x fossil_glyph \U1F9B4 # Unicode bone emoji

  # Disable Powerline fonts (unless we're using nerd fonts instead)
  if [ "$theme_powerline_fonts" = "no" -a "$theme_nerd_fonts" != "yes" ]
    set private_glyph           \u29B8 ' '
    set branch_glyph            \u2387
    set right_black_arrow_glyph ''
    set right_arrow_glyph       ''
    set left_black_arrow_glyph  ''
    set left_arrow_glyph        ''
  end

  # Use prettier Nerd Fonts glyphs
  if [ "$theme_nerd_fonts" = "yes" ]
    set superuser_glyph    \UF0423 '' # 󰐣 'nf-md-pound'
    set bg_job_glyph       \UF003F '' # 󰀿 'nf-md-arrange_send_backward'
    set nonzero_exit_glyph \UF05D6 "$last_status " # 󰗖 'nf-md-alert_circle_outline'

    set private_glyph    \UF0341 '' # 󰍁 'nf-md-lock_outline'

    set branch_glyph     \UF062C # 󰘬 'nf-md-source_branch'
    set detached_glyph   \UF0718 # 󰜘 'nf-md-source_commit'
    set tag_glyph        \UF04FC # 󰓼 'nf-md-tag_outline'

    set nix_glyph        \UF1105 ' ' # 󱄅 'nf-md-nix'
    set virtualenv_glyph \UF0320 ' ' # 󰌠 'nf-md-language_python'
    set pypy_glyph       \UF150E ' ' # 󱔎 'nf-md-snake'
    set ruby_glyph       \UF0D2D ' ' # 󰴭 'nf-md-language_ruby'
    set go_glyph         \UF07D3 ' ' # 󰟓 'nf-md-language_go'
    set node_glyph       \UF0399 ' ' # 󰎙 'nf-md-nodejs'
    set k8s_glyph        \UF10FE '' # 󱃾 'nf-md-kubernetes'

    set vagrant_running_glyph  \UF048B '' # 󰒋 'nf-md-server'
    set vagrant_poweroff_glyph \UF048F '' # 󰒏 'nf-md-server_off'
    set vagrant_aborted_glyph  \UF09E0 '' # 󰧠 'nf-md-cloud_alert'
    set vagrant_unknown_glyph  \UF0A39 '' # 󰨹 'nf-md-cloud_question'

    set git_dirty_glyph      \UF03EB '' # 󰏫 'nf-md-pencil'
    set git_staged_glyph     \UF0818 '' # 󰠘 'nf-md-content_save_outline'
    set git_stashed_glyph    \UF03D4 '' # 󰏔 'nf-md-package_down'
    set git_untracked_glyph  \UF02D7 '' # 󰋗 'nf-md-help_circle'
    set fossil_glyph         \UF00B9 '' # 󰂹 'nf-md-bone'

    set git_ahead_glyph      \UF0143 # 󰅃 'nf-md-chevron_up'
    set git_behind_glyph     \UF0140 # 󰅀 'nf-md-chevron_down'

    set git_plus_glyph       \UF0415 # 󰐕 'nf-md-plus'
    set git_minus_glyph      \UF0374 # 󰍴 'nf-md-minus'
    set git_plus_minus_glyph \UF0992 # 󰦒 'nf-md-plus_minus'
  end

  # Avoid ambiguous glyphs
  if [ "$theme_avoid_ambiguous_glyphs" = "yes" ]
    set git_untracked_glyph '...'
    set fossil_glyph '' # blank, for lack of a good fallback
  end
end
