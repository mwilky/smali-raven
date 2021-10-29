.class Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIpMemoryStoreCallbacks.java"

# interfaces
.implements Landroid/net/IIpMemoryStoreCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IIpMemoryStoreCallbacks$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/IIpMemoryStoreCallbacks;


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    iput-object v0, p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    iput-object p1, p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/IIpMemoryStoreCallbacks$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStoreCallbacks;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/net/IIpMemoryStoreCallbacks$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStoreCallbacks;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/IIpMemoryStoreCallbacks;->getInterfaceHash()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v3

    :cond_0
    :try_start_3
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInterfaceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    sget-object v2, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/IIpMemoryStoreCallbacks$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStoreCallbacks;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/net/IIpMemoryStoreCallbacks$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStoreCallbacks;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/IIpMemoryStoreCallbacks;->getInterfaceVersion()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->mCachedVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_1
    :goto_0
    iget v0, p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public onIpMemoryStoreFetched(Landroid/net/IIpMemoryStore;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    sget-object v1, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/net/IIpMemoryStore;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Landroid/net/IIpMemoryStoreCallbacks$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStoreCallbacks;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/net/IIpMemoryStoreCallbacks$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStoreCallbacks;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/IIpMemoryStoreCallbacks;->onIpMemoryStoreFetched(Landroid/net/IIpMemoryStore;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method onIpMemoryStoreFetched is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
