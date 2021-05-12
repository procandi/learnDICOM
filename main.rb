# encoding: UTF-8


require 'rubygems'
require 'logger'
require './dicom-0.9.8/lib/dicom'
include DICOM
require_relative 'SettingHandle'


s = DServer.new(104, :host_ae => "MFRPACS")
s.start_scp("/mnt/d/miffyer/test/")