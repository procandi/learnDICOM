# encoding: UTF-8


require 'rubygems'
require 'logger'
require './dicom-0.9.8/lib/dicom'
include DICOM
require_relative 'SettingHandle'


nodeQCSCU = WORKLIST::DClient.new(SettingHandle::PACS_IP, SettingHandle::PACS_PORT, :ae=>SettingHandle::PACS_LOCAL_AETITLE, :host_ae=>SettingHandle::PACS_REMOTE_AETITLE)

#fpath='/mnt/d/miffyer/temp/DX.1.2.276.0.7230010.3.0.3.5.1.12223065.4270056719'
fpath='c:/miffyer/test/DX.1.2.276.0.7230010.3.0.3.5.1.12223585.2719980744'

nodeQCSCU.send(fpath)