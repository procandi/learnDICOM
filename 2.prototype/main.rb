# encoding: UTF-8


require 'rubygems'
require 'logger'
require 'dicom'
require './worklist-0.9.8/lib/dicom'
include WORKLIST
require_relative 'SettingHandle'


s = WORKLIST::DServer.new(104, :host_ae => "MFRPACS")

#s.start_scp("/mnt/d/miffyer/test/")
s.start_scp("c:/miffyer/test/")