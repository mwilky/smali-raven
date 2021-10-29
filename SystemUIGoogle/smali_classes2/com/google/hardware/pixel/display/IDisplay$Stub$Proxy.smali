.class Lcom/google/hardware/pixel/display/IDisplay$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDisplay.java"

# interfaces
.implements Lcom/google/hardware/pixel/display/IDisplay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/hardware/pixel/display/IDisplay$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/google/hardware/pixel/display/IDisplay;


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/hardware/pixel/display/IDisplay$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    iput-object v0, p0, Lcom/google/hardware/pixel/display/IDisplay$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/hardware/pixel/display/IDisplay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/google/hardware/pixel/display/IDisplay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public setLhbmState(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    sget-object v2, Lcom/google/hardware/pixel/display/IDisplay;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/google/hardware/pixel/display/IDisplay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/google/hardware/pixel/display/IDisplay$Stub;->getDefaultImpl()Lcom/google/hardware/pixel/display/IDisplay;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/google/hardware/pixel/display/IDisplay$Stub;->getDefaultImpl()Lcom/google/hardware/pixel/display/IDisplay;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/hardware/pixel/display/IDisplay;->setLhbmState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setLhbmState is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
