.class public Lcom/android/server/location/GeocoderProxy$1;
.super Ljava/lang/Object;
.source "GeocoderProxy.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GeocoderProxy;->getFromLocation(DDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/GeocoderProxy;

.field public final synthetic val$latitude:D

.field public final synthetic val$listener:Landroid/location/IGeocodeListener;

.field public final synthetic val$longitude:D

.field public final synthetic val$maxResults:I

.field public final synthetic val$params:Landroid/location/GeocoderParams;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GeocoderProxy;DDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GeocoderProxy$1;->this$0:Lcom/android/server/location/GeocoderProxy;

    iput-wide p2, p0, Lcom/android/server/location/GeocoderProxy$1;->val$latitude:D

    iput-wide p4, p0, Lcom/android/server/location/GeocoderProxy$1;->val$longitude:D

    iput p6, p0, Lcom/android/server/location/GeocoderProxy$1;->val$maxResults:I

    iput-object p7, p0, Lcom/android/server/location/GeocoderProxy$1;->val$params:Landroid/location/GeocoderParams;

    iput-object p8, p0, Lcom/android/server/location/GeocoderProxy$1;->val$listener:Landroid/location/IGeocodeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/GeocoderProxy$1;->val$listener:Landroid/location/IGeocodeListener;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/location/IGeocodeListener;->onResults(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public run(Landroid/os/IBinder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/location/IGeocodeProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeProvider;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/location/GeocoderProxy$1;->val$latitude:D

    iget-wide v3, p0, Lcom/android/server/location/GeocoderProxy$1;->val$longitude:D

    iget v5, p0, Lcom/android/server/location/GeocoderProxy$1;->val$maxResults:I

    iget-object v6, p0, Lcom/android/server/location/GeocoderProxy$1;->val$params:Landroid/location/GeocoderParams;

    iget-object v7, p0, Lcom/android/server/location/GeocoderProxy$1;->val$listener:Landroid/location/IGeocodeListener;

    invoke-interface/range {v0 .. v7}, Landroid/location/IGeocodeProvider;->getFromLocation(DDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V

    return-void
.end method
