/****************************************************************************
** Meta object code from reading C++ file 'emulator.h'
**
** Created: Sun Jan 6 16:53:42 2013
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.4)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/emulator.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'emulator.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.4. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_Emulator[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // methods: signature, parameters, type, tag, flags
      14,   10,    9,    9, 0x02,
      38,    9,   34,    9, 0x02,

       0        // eod
};

static const char qt_meta_stringdata_Emulator[] = {
    "Emulator\0\0rom\0SetRom(const char*)\0int\0"
    "LoadRom()\0"
};

void Emulator::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        Emulator *_t = static_cast<Emulator *>(_o);
        switch (_id) {
        case 0: _t->SetRom((*reinterpret_cast< const char*(*)>(_a[1]))); break;
        case 1: { int _r = _t->LoadRom();
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = _r; }  break;
        default: ;
        }
    }
}

const QMetaObjectExtraData Emulator::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject Emulator::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_Emulator,
      qt_meta_data_Emulator, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &Emulator::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *Emulator::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *Emulator::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_Emulator))
        return static_cast<void*>(const_cast< Emulator*>(this));
    return QObject::qt_metacast(_clname);
}

int Emulator::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
