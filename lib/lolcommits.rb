# -*- encoding : utf-8 -*-
$LOAD_PATH.unshift File.expand_path('.')

require 'mini_magick'
require 'core_ext/mini_magick/utilities'
require 'fileutils'
require 'git'
require 'open3'
require 'methadone'
require 'date'
require 'mercurial-ruby'
require 'core_ext/mercurial-ruby/shell'

require 'lolcommits/version'
require 'lolcommits/configuration'
require 'lolcommits/capturer'
require 'lolcommits/vcs_info'
require 'lolcommits/installation'
require 'lolcommits/platform'

# after lolcommits/platform, so that we can do platform-conditional override
require 'core_ext/mercurial-ruby/command'

# backends
require 'lolcommits/backends/installation_git'
require 'lolcommits/backends/installation_mercurial'
require 'lolcommits/backends/git_info'
require 'lolcommits/backends/mercurial_info'

require 'lolcommits/plugin/base'
require 'lolcommits/plugin/loltext'
require 'lolcommits/plugin/dot_com'
require 'lolcommits/plugin/tranzlate'
require 'lolcommits/plugin/lol_twitter'
require 'lolcommits/plugin/uploldz'
require 'lolcommits/plugin/term_output'
require 'lolcommits/plugin/lolsrv'
require 'lolcommits/plugin/lol_yammer'
require 'lolcommits/plugin/lol_protonet'
require 'lolcommits/plugin/lol_tumblr'
require 'lolcommits/plugin/lol_slack'
require 'lolcommits/plugin/lol_flowdock'
require 'lolcommits/plugin/lol_hipchat'

# require runner after all the plugins have been required
require 'lolcommits/runner'
