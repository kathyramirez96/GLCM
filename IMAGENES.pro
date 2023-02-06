QT -= gui
QT += core

TEMPLATE = lib
CONFIG += staticlib
CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0
INCLUDEPATH += /usr/include/opencv4
LIBS += -lopencv_stitching -lopencv_alphamat -lopencv_aruco -lopencv_bgsegm -lopencv_bioinspired -lopencv_ccalib -lopencv_dnn_objdetect -lopencv_dnn_superres -lopencv_dpm -lopencv_face -lopencv_freetype -lopencv_fuzzy -lopencv_hdf -lopencv_hfs -lopencv_img_hash -lopencv_intensity_transform -lopencv_line_descriptor -lopencv_mcc -lopencv_quality -lopencv_rapid -lopencv_reg -lopencv_rgbd -lopencv_saliency -lopencv_shape -lopencv_stereo -lopencv_structured_light -lopencv_phase_unwrapping -lopencv_superres -lopencv_optflow -lopencv_surface_matching -lopencv_tracking -lopencv_highgui -lopencv_datasets -lopencv_text -lopencv_plot -lopencv_ml -lopencv_videostab -lopencv_videoio -lopencv_viz -lopencv_ximgproc -lopencv_video -lopencv_dnn -lopencv_xobjdetect -lopencv_objdetect -lopencv_calib3d -lopencv_imgcodecs -lopencv_features2d -lopencv_flann -lopencv_xphoto -lopencv_photo -lopencv_imgproc -lopencv_core

QMAKE_LFLAGS += -fopenmp
QMAKE_CXXFLAGS += -fopenmp
LIBS += -fopenmp

QMAKE_CXXFLAGS += -pthread
LIBS += -lpthread

INCLUDEPATH += /usr/local/include
LIBS += -L/usr/local/lib -lxlsxwriter -lz

SOURCES += \
    GLCM/imagenes.cpp \
    GLCM/VARIANCE.cpp \
    GLCM/SQUAREVARIANCE.cpp \
    GLCM/ENTROPIA.cpp \
    GLCM/AVEREGE.cpp \
    GLCM/CORRELATIONCOEFICIENT.cpp \
    GLCM/MESURE.cpp \
    GLCM/CONTRASTE.cpp \
    GLCM/MOEMNT.cpp \
    GLCM/SECONDANGULAR.cpp \#------------------------------------llamada
    GLCM_P/imagenes_P.cpp \
    GLCM_P/VARIANCE_P.cpp \
    GLCM_P/SQUAREVARIANCE_P.cpp \
    GLCM_P/ENTROPIA_P.cpp \
    GLCM_P/AVEREGE_P.cpp \
    GLCM_P/CORRELATIONCOEFICIENT_P.cpp \
    GLCM_P/MESURE_P.cpp \
    GLCM_P/CONTRASTE_P.cpp \
    GLCM_P/MOEMNT_P.cpp \
    GLCM_P/SECONDANGULAR_P.cpp


HEADERS += \
    GLCM/imagenes.h \
    GLCM/VARIANCE.h \
    GLCM/SQUAREVARIANCE.h \
    GLCM/ENTROPIA.h \
    GLCM/AVEREGE.h \
    GLCM/CORRELATIONCOEFICIENT.h \
    GLCM/MESURE.h \
    GLCM/CONTRASTE.h \
    GLCM/MOEMNT.h \
    GLCM/SECONDANGULAR.h\#------------------------------------llamada
    GLCM_P/imagenes_P.h \
    GLCM_P/VARIANCE_P.h \
    GLCM_P/SQUAREVARIANCE_P.h \
    GLCM_P/ENTROPIA_P.h \
    GLCM_P/AVEREGE_P.h \
    GLCM_P/CORRELATIONCOEFICIENT_P.h \
    GLCM_P/MESURE_P.h \
    GLCM_P/CONTRASTE_P.h \
    GLCM_P/MOEMNT_P.h \
    GLCM_P/SECONDANGULAR_P.h

# Default rules for deployment.
unix {
    target.path = $$[QT_INSTALL_PLUGINS]/generic
}
!isEmpty(target.path): INSTALLS += target
