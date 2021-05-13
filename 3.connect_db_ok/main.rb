# encoding: UTF-8


require 'rubygems'
require 'logger'
require './worklist-0.9.8/lib/dicom'
include WORKLIST
require_relative 'SettingHandle'
require_relative 'PACSHandle'



$pacs=PACSHandle.new('localhost','5432','mfrpacs','postgres','miffyer168')
s = WORKLIST::DServer.new(104, :host_ae => "MFRPACS")

#s.start_scp("/mnt/d/miffyer/test/")
s.start_scp("c:/miffyer/test/")