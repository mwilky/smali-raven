.class public abstract Landroid/hardware/biometrics/fingerprint/ISession$Stub;
.super Landroid/os/Binder;
.source "ISession.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/ISession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/ISession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_authenticate:I = 0x4

.field static final TRANSACTION_close:I = 0xb

.field static final TRANSACTION_detectInteraction:I = 0x5

.field static final TRANSACTION_enroll:I = 0x3

.field static final TRANSACTION_enumerateEnrollments:I = 0x6

.field static final TRANSACTION_generateChallenge:I = 0x1

.field static final TRANSACTION_getAuthenticatorId:I = 0x8

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_invalidateAuthenticatorId:I = 0x9

.field static final TRANSACTION_onPointerDown:I = 0xc

.field static final TRANSACTION_onPointerUp:I = 0xd

.field static final TRANSACTION_onUiReady:I = 0xe

.field static final TRANSACTION_removeEnrollments:I = 0x7

.field static final TRANSACTION_resetLockout:I = 0xa

.field static final TRANSACTION_revokeChallenge:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/fingerprint/ISession;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/biometrics/fingerprint/ISession;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/fingerprint/ISession;

    return-object v1

    :cond_1
    new-instance v1, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/hardware/biometrics/fingerprint/ISession;
    .locals 1

    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->sDefaultImpl:Landroid/hardware/biometrics/fingerprint/ISession;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/hardware/biometrics/fingerprint/ISession;)Z
    .locals 2

    sget-object v0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->sDefaultImpl:Landroid/hardware/biometrics/fingerprint/ISession;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Landroid/hardware/biometrics/fingerprint/ISession$Stub$Proxy;->sDefaultImpl:Landroid/hardware/biometrics/fingerprint/ISession;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    sget-object v9, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->DESCRIPTOR:Ljava/lang/String;

    const/4 v10, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :sswitch_1
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :sswitch_2
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :pswitch_0
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onUiReady()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_1
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onPointerUp(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_2
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v15

    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->onPointerDown(IIIFF)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_3
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->close()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_4
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/keymaster/HardwareAuthToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v6, v0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_5
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->invalidateAuthenticatorId()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_6
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->getAuthenticatorId()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_7
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->removeEnrollments([I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_8
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->enumerateEnrollments()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_9
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/hardware/biometrics/common/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_1
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v10

    :pswitch_a
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v6, v1, v2}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/hardware/biometrics/common/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_2
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v10

    :pswitch_b
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/hardware/keymaster/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/keymaster/HardwareAuthToken;

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v6, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/hardware/biometrics/common/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_4
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v10

    :pswitch_c
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->revokeChallenge(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_d
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/ISession$Stub;->generateChallenge()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
