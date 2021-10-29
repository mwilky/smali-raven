.class public abstract Landroid/os/IInputConstants$Stub;
.super Landroid/os/Binder;
.source "IInputConstants.java"

# interfaces
.implements Landroid/os/IInputConstants;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IInputConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IInputConstants$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IInputConstants"

    invoke-virtual {p0, p0, v0}, Landroid/os/IInputConstants$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IInputConstants;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.os.IInputConstants"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IInputConstants;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/os/IInputConstants;

    return-object v1

    :cond_1
    new-instance v1, Landroid/os/IInputConstants$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IInputConstants$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/os/IInputConstants;
    .locals 1

    sget-object v0, Landroid/os/IInputConstants$Stub$Proxy;->sDefaultImpl:Landroid/os/IInputConstants;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/os/IInputConstants;)Z
    .locals 2

    sget-object v0, Landroid/os/IInputConstants$Stub$Proxy;->sDefaultImpl:Landroid/os/IInputConstants;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Landroid/os/IInputConstants$Stub$Proxy;->sDefaultImpl:Landroid/os/IInputConstants;

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.os.IInputConstants"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch
.end method
