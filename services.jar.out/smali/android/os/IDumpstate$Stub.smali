.class public abstract Landroid/os/IDumpstate$Stub;
.super Landroid/os/Binder;
.source "IDumpstate.java"

# interfaces
.implements Landroid/os/IDumpstate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDumpstate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDumpstate$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_cancelBugreport:I = 0x2

.field static final TRANSACTION_startBugreport:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IDumpstate"

    invoke-virtual {p0, p0, v0}, Landroid/os/IDumpstate$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.os.IDumpstate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IDumpstate;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/os/IDumpstate;

    return-object v1

    :cond_1
    new-instance v1, Landroid/os/IDumpstate$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IDumpstate$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/os/IDumpstate;
    .locals 1

    sget-object v0, Landroid/os/IDumpstate$Stub$Proxy;->sDefaultImpl:Landroid/os/IDumpstate;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/os/IDumpstate;)Z
    .locals 2

    sget-object v0, Landroid/os/IDumpstate$Stub$Proxy;->sDefaultImpl:Landroid/os/IDumpstate;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Landroid/os/IDumpstate$Stub$Proxy;->sDefaultImpl:Landroid/os/IDumpstate;

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
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p2

    const-string v1, "android.os.IDumpstate"

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    move-object/from16 v3, p3

    packed-switch p1, :pswitch_data_1

    move-object/from16 v14, p0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    :pswitch_0
    move-object/from16 v3, p3

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v14, p0

    invoke-virtual {v14, v4, v5}, Landroid/os/IDumpstate$Stub;->cancelBugreport(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_2
    move-object/from16 v14, p0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IDumpstateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstateListener;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    move v13, v2

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move v13, v6

    :goto_0
    move-object/from16 v6, p0

    move v7, v4

    move-object v8, v5

    move-object v9, v15

    move-object/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v12, v18

    invoke-virtual/range {v6 .. v13}, Landroid/os/IDumpstate$Stub;->startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
