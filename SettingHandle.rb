class SettingHandle
  #系統基本設定
  PACS_IP='127.0.0.1'
  PACS_PORT=104
  PACS_LOCAL_AETITLE='MFRNET'
  PACS_REMOTE_AETITLE='MFRPACS'  

  WORKLIST_IP='192.168.110.128'
  WORKLIST_PORT='204'
  WORKLIST_REMOTE_AETITLE='WORKGATE128'
  WORKLIST_LOCAL_AETITLE='MIFFYER'
  
  QC_IP='127.0.0.1'
  QC_PORT=104
  QC_LOCAL_AETITLE='DICOMUTILS'
  QC_REMOTE_AETITLE='PSQCSCP03'
  
  WORKLIST_CHINESE_IP='10.2.17.110'
  WORKLIST_CHINESE_PORT=104
  WORKLIST_CHINESE_LOCAL_AETITLE='DICOMUTILS'
  WORKLIST_CHINESE_REMOTE_AETITLE='PACSTS'
    
  WORKLIST_ENGLISH_IP='192.168.110.128'
  WORKLIST_ENGLISH_PORT=204
  WORKLIST_ENGLISH_LOCAL_AETITLE='MIFFYER'
  WORKLIST_ENGLISH_REMOTE_AETITLE='WORKGATE128'
  
  MODALITY='OT'
  STUDYID='70111'
  
  WSDL='http://10.2.16.66/cathrpt/patninfo.asmx?wsdl'

  ENABLE_DATABASE=true
  DATABASE_NAME='mfrpacs'
  #hemodialysis, mfrpacs

=begin
  #ox x
  APP_STORESCU_PATH='/Users/xieyinghua/IDE/dcmtk-3.6.0-mac-i686-dynamic/bin/storescu'
  APP_IMG2DCM_PATH='/Users/xieyinghua/IDE/dcmtk-3.6.0-mac-i686-dynamic/bin/img2dcm'
  APP_DCMODIFY_PATH='/Users/xieyinghua/IDE/dcmtk-3.6.0-mac-i686-dynamic/bin/dcmodify'
  APP_DCMDJPEG_PATH='/Users/xieyinghua/IDE/dcmtk-3.6.0-mac-i686-dynamic/bin/dcmdjpeg'
  APP_FINDSCU_PATH='/Users/xieyinghua/IDE/dcmtk-3.6.0-mac-i686-dynamic/bin/findscu'
  APP_STORESCP_PATH='/Users/xieyinghua/IDE/dcmtk-3.6.0-mac-i686-dynamic/bin/storescp'
  APP_DCMJ2PNM_PATH='/Users/xieyinghua/IDE/dcmtk-3.6.0-mac-i686-dynamic/bin/dcmj2pnm'
  APP_DUMP2DCM_PATH='/Users/xieyinghua/IDE/dcmtk-3.6.0-mac-i686-dynamic/bin/dump2dcm'

  IMPORT_IMAGE_FOLDER='/Users/xieyinghua/Miffyer/test/'
  IMPORT_TXT_FOLDER='/Users/xieyinghua/Miffyer/txt/'
  IMPORT_TXTBK_FOLDER='/Users/xieyinghua/Miffyer/txtbk/'
  IMPORT_DICOM_FOLDER='/Users/xieyinghua/Miffyer/dcm/'
  IMPORT_DICOMBK_FOLDER='/Users/xieyinghua/Miffyer/dcmbk/'
  IMPORT_JPG_FOLDER='/Users/xieyinghua/Miffyer/jpg/'
  IMPORT_JPGBK_FOLDER='/Users/xieyinghua/Miffyer/jpgbk/'
  IMPORT_PNG_FOLDER='/Users/xieyinghua/Miffyer/png/'
  IMPORT_PNGBK_FOLDER='/Users/xieyinghua/Miffyer/pngbk/'
  IMPORT_BMP_FOLDER='/Users/xieyinghua/Miffyer/bmp/'
  IMPORT_BMPBK_FOLDER='/Users/xieyinghua/Miffyer/bmpbk/'
  IMPORT_DICOMERR_FOLDER='/Users/xieyinghua/Miffyer/dcmerr/'
  IMPORT_WEB_FOLDER='/Users/xieyinghua/workspace/hemodialysis_system/public/'
  IMPORT_CSV_FOLDER='/Users/xieyinghua/Miffyer/vision/'
  EXPORT_WKL_FOLDER='/Users/xieyinghua/Miffyer/worklist/MFRWKL/'
=end

=begin
  #windows
  APP_STORESCU_PATH='C:\Miffyer\IDE\dcmtk-3.6.3-win64-dynamic\bin\storescu.exe'
  APP_IMG2DCM_PATH='C:\Miffyer\IDE\dcmtk-3.6.3-win64-dynamic\bin\img2dcm.exe'
  APP_DCMODIFY_PATH='C:\Miffyer\IDE\dcmtk-3.6.3-win64-dynamic\bin\dcmodify.exe'
  APP_DCMDJPEG_PATH='C:\Miffyer\IDE\dcmtk-3.6.3-win64-dynamic\bin\dcmdjpeg.exe'
  APP_FINDSCU_PATH='C:\Miffyer\IDE\dcmtk-3.6.3-win64-dynamic\bin\findscu.exe'
  APP_STORESCP_PATH='C:\Miffyer\IDE\dcmtk-3.6.3-win64-dynamic\bin\storescp.exe'
  APP_DCMJ2PNM_PATH='C:\Miffyer\IDE\dcmtk-3.6.3-win64-dynamic\bin\dcmj2pnm.exe'
  APP_DUMP2DCM_PATH='C:\Miffyer\IDE\dcmtk-3.6.3-win64-dynamic\bin\dump2dcm'

  IMPORT_IMAGE_FOLDER='c:/miffyer/image/'
  IMPORT_TXT_FOLDER='c:/miffyer/txt/'
  IMPORT_TXTBK_FOLDER='c:/miffyer/txtbk/'
  IMPORT_DICOM_FOLDER='c:/miffyer/dcm/'
  IMPORT_DICOMBK_FOLDER='c:/miffyer/dcmbk/'
  IMPORT_JPG_FOLDER='c:/miffyer/jpg/'
  IMPORT_JPGBK_FOLDER='c:/miffyer/jpgbk/'
  IMPORT_PNG_FOLDER='c:/miffyer/png/'
  IMPORT_PNGBK_FOLDER='c:/miffyer/pngbk/'
  IMPORT_BMP_FOLDER='c:/miffyer/bmp/'
  IMPORT_BMPBK_FOLDER='c:/miffyer/bmpbk/'
  IMPORT_DICOMERR_FOLDER='c:/miffyer/dcmerr/'
  IMPORT_WEB_FOLDER='d:/ed/workspace/hemodialysis_system/public/'
  IMPORT_CSV_FOLDER='d:/vision/'
  EXPORT_WKL_FOLDER='d:/worklist/MFRWKL/'
=end

=begin
  #wsl
  APP_STORESCU_PATH='storescu'
  APP_IMG2DCM_PATH='img2dcm'
  APP_DCMODIFY_PATH='dcmodify'
  APP_DCMDJPEG_PATH='dcmdjpeg'
  APP_FINDSCU_PATH='findscu'
  APP_STORESCP_PATH='storescp'
  APP_DCMJ2PNM_PATH='dcmj2pnm'
  APP_DUMP2DCM_PATH='dump2dcm'

  IMPORT_IMAGE_FOLDER='/mnt/d/miffyer/image/'
  IMPORT_TXT_FOLDER='/mnt/d/miffyer/txt/'
  IMPORT_TXTBK_FOLDER='/mnt/d/miffyer/txtbk/'
  IMPORT_DICOM_FOLDER='/mnt/d/miffyer/dcm/'
  IMPORT_DICOMBK_FOLDER='/mnt/d/miffyer/dcmbk/'
  IMPORT_JPG_FOLDER='/mnt/d/miffyer/jpg/'
  IMPORT_JPGBK_FOLDER='/mnt/d/miffyer/jpgbk/'
  IMPORT_PNG_FOLDER='/mnt/d/miffyer/png/'
  IMPORT_PNGBK_FOLDER='/mnt/d/miffyer/pngbk/'
  IMPORT_BMP_FOLDER='/mnt/d/miffyer/bmp/'
  IMPORT_BMPBK_FOLDER='/mnt/d/miffyer/bmpbk/'
  IMPORT_DICOMERR_FOLDER='/mnt/d/miffyer/dcmerr/'
  IMPORT_WEB_FOLDER='/mnt/d/miffyer/public/'
  IMPORT_CSV_FOLDER='/mnt/vision/'
  EXPORT_WKL_FOLDER='/home/miffyer/worklist/MFRWKL/'
=end

#=begin
  #linux
  APP_STORESCU_PATH='storescu'
  APP_IMG2DCM_PATH='img2dcm'
  APP_DCMODIFY_PATH='dcmodify'
  APP_DCMDJPEG_PATH='dcmdjpeg'
  APP_FINDSCU_PATH='findscu'
  APP_STORESCP_PATH='storescp'
  APP_DCMJ2PNM_PATH='dcmj2pnm'
  APP_DUMP2DCM_PATH='dump2dcm'

  IMPORT_IMAGE_FOLDER='/home/miffyer/image/'
  IMPORT_TXT_FOLDER='/home/miffyer/txt/'
  IMPORT_TXTBK_FOLDER='/home/miffyer/txtbk/'
  IMPORT_DICOM_FOLDER='/home/miffyer/dcm/'
  IMPORT_DICOMBK_FOLDER='/home/miffyer/dcmbk/'
  IMPORT_JPG_FOLDER='/home/miffyer/jpg/'
  IMPORT_JPGBK_FOLDER='/home/miffyer/jpgbk/'
  IMPORT_PNG_FOLDER='/home/miffyer/png/'
  IMPORT_PNGBK_FOLDER='/home/miffyer/pngbk/'
  IMPORT_BMP_FOLDER='/home/miffyer/bmp/'
  IMPORT_BMPBK_FOLDER='/home/miffyer/bmpbk/'
  IMPORT_DICOMERR_FOLDER='/home/miffyer/dcmerr/'
  IMPORT_WEB_FOLDER='/home/miffyer/public/'
  IMPORT_CSV_FOLDER='/mnt/vision/'
  EXPORT_WKL_FOLDER='/home/miffyer/worklist/MFRWKL/'
#=end

=begin
  #raspberry pi
  APP_STORESCU_PATH='/Users/xieyinghua/IDE/dcmtk-3.6.0-linux-i686-dynamic/bin/storescu'
  APP_IMG2DCM_PATH='/Users/xieyinghua/IDE/dcmtk-3.6.0-linux-i686-dynamic/bin/img2dcm'
  APP_DCMODIFY_PATH='/Users/xieyinghua/IDE/dcmtk-3.6.0-linux-i686-dynamic/bin/dcmodify'
  APP_DCMDJPEG_PATH='/Users/xieyinghua/IDE/dcmtk-3.6.0-linux-i686-dynamic/bin/dcmdjpeg'
  APP_FINDSCU_PATH='/Users/xieyinghua/IDE/dcmtk-3.6.0-linux-i686-dynamic/bin/findscu'
  APP_STORESCP_PATH='/Users/xieyinghua/IDE/dcmtk-3.6.0-linux-i686-dynamic/bin/storescp'
  APP_DCMJ2PNM_PATH='/Users/xieyinghua/IDE/dcmtk-3.6.0-linux-i686-dynamic/bin/dcmj2pnm'
  APP_DUMP2DCM_PATH='/Users/xieyinghua/IDE/dcmtk-3.6.0-linux-i686-dynamic/bin/dump2dcm'

  IMPORT_IMAGE_FOLDER='/home/pi/Miffyer/image/'
  IMPORT_TXT_FOLDER='/home/pi/Miffyer/txt/'
  IMPORT_TXTBK_FOLDER='/home/pi/Miffyer/txtbk/'
  IMPORT_DICOM_FOLDER='/home/pi/Miffyer/dcm/'
  IMPORT_DICOMBK_FOLDER='/home/pi/Miffyer/dcmbk/'
  IMPORT_JPG_FOLDER='/home/pia/Miffyer/jpg/'
  IMPORT_JPGBK_FOLDER='/home/pi/Miffyer/jpgbk/'
  IMPORT_PNG_FOLDER='/home/pi/Miffyer/png/'
  IMPORT_PNGBK_FOLDER='/home/pi/Miffyer/pngbk/'
  IMPORT_BMP_FOLDER='/home/pi/Miffyer/bmp/'
  IMPORT_BMPBK_FOLDER='/home/pi/Miffyer/bmpbk/'
  IMPORT_DICOMERR_FOLDER='/home/pi/Miffyer/dcmerr/'
  IMPORT_WEB_FOLDER='/home/pi/www/hemodialysis_system/public/'
  IMPORT_CSV_FOLDER='/mnt/vision/'
  EXPORT_WKL_FOLDER='/home/miffyer/worklist/MFRWKL/'
=end
end
