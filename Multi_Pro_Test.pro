TEMPLATE = subdirs

SUBDIRS += \
    App \
    Dialog \
    Lib

# sub-project dependency
App.depends = Lib Dialog
