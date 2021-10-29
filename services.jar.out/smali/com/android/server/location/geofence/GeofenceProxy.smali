.class public final Lcom/android/server/location/geofence/GeofenceProxy;
.super Ljava/lang/Object;
.source "GeofenceProxy.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/geofence/GeofenceProxy$GeofenceProxyServiceConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener<",
        "Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.GeofenceProvider"

.field private static final TAG:Ljava/lang/String; = "GeofenceProxy"


# instance fields
.field volatile mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

.field final mGpsGeofenceHardware:Landroid/location/IGpsGeofenceHardware;

.field final mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/location/IGpsGeofenceHardware;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/location/IGpsGeofenceHardware;

    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceProxy;->mGpsGeofenceHardware:Landroid/location/IGpsGeofenceHardware;

    new-instance v0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    const-string v1, "com.android.location.service.GeofenceProvider"

    const v2, 0x11100cf

    const v3, 0x1040246

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    const-string v1, "GeofenceProxy"

    invoke-static {p1, v1, v0, p0}, Lcom/android/server/servicewatcher/ServiceWatcher;->create(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/geofence/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

    return-void
.end method

.method public static createAndBind(Landroid/content/Context;Landroid/location/IGpsGeofenceHardware;)Lcom/android/server/location/geofence/GeofenceProxy;
    .locals 2

    new-instance v0, Lcom/android/server/location/geofence/GeofenceProxy;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/geofence/GeofenceProxy;-><init>(Landroid/content/Context;Landroid/location/IGpsGeofenceHardware;)V

    invoke-direct {v0, p0}, Lcom/android/server/location/geofence/GeofenceProxy;->register(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private register(Landroid/content/Context;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher;->checkServiceResolves()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v1}, Lcom/android/server/servicewatcher/ServiceWatcher;->register()V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroid/hardware/location/GeofenceHardwareService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Lcom/android/server/location/geofence/GeofenceProxy$GeofenceProxyServiceConnection;

    invoke-direct {v2, p0}, Lcom/android/server/location/geofence/GeofenceProxy$GeofenceProxyServiceConnection;-><init>(Lcom/android/server/location/geofence/GeofenceProxy;)V

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    :cond_0
    return v0
.end method


# virtual methods
.method public onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/location/geofence/GeofenceProxy;->updateGeofenceHardware(Landroid/os/IBinder;)V

    return-void
.end method

.method public bridge synthetic onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p2, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/geofence/GeofenceProxy;->onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)V

    return-void
.end method

.method public onUnbind()V
    .locals 0

    return-void
.end method

.method updateGeofenceHardware(Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/location/IGeofenceProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeofenceProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceProxy;->mGeofenceHardware:Landroid/hardware/location/IGeofenceHardware;

    invoke-interface {v0, v1}, Landroid/location/IGeofenceProvider;->setGeofenceHardware(Landroid/hardware/location/IGeofenceHardware;)V

    return-void
.end method
