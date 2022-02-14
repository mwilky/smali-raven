.class public Lcom/android/server/location/GeocoderProxy;
.super Ljava/lang/Object;
.source "GeocoderProxy.java"


# static fields
.field private static final SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.GeocodeProvider"


# instance fields
.field private final mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    const-string v1, "com.android.location.service.GeocodeProvider"

    const v2, 0x11100cf

    const v3, 0x1040245

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    const-string v1, "GeocoderProxy"

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/android/server/servicewatcher/ServiceWatcher;->create(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    return-void
.end method

.method public static createAndRegister(Landroid/content/Context;)Lcom/android/server/location/GeocoderProxy;
    .locals 2

    new-instance v0, Lcom/android/server/location/GeocoderProxy;

    invoke-direct {v0, p0}, Lcom/android/server/location/GeocoderProxy;-><init>(Landroid/content/Context;)V

    invoke-direct {v0}, Lcom/android/server/location/GeocoderProxy;->register()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private register()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher;->checkServiceResolves()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v1}, Lcom/android/server/servicewatcher/ServiceWatcher;->register()V

    :cond_0
    return v0
.end method


# virtual methods
.method public getFromLocation(DDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
    .locals 12

    move-object v9, p0

    iget-object v10, v9, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance v11, Lcom/android/server/location/GeocoderProxy$1;

    move-object v0, v11

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/GeocoderProxy$1;-><init>(Lcom/android/server/location/GeocoderProxy;DDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V

    invoke-interface {v10, v11}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
    .locals 16

    move-object/from16 v14, p0

    iget-object v15, v14, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance v13, Lcom/android/server/location/GeocoderProxy$2;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object v14, v13

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/android/server/location/GeocoderProxy$2;-><init>(Lcom/android/server/location/GeocoderProxy;Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V

    invoke-interface {v15, v14}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method
