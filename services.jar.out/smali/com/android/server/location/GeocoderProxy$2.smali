.class public Lcom/android/server/location/GeocoderProxy$2;
.super Ljava/lang/Object;
.source "GeocoderProxy.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GeocoderProxy;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/GeocoderProxy;

.field public final synthetic val$listener:Landroid/location/IGeocodeListener;

.field public final synthetic val$locationName:Ljava/lang/String;

.field public final synthetic val$lowerLeftLatitude:D

.field public final synthetic val$lowerLeftLongitude:D

.field public final synthetic val$maxResults:I

.field public final synthetic val$params:Landroid/location/GeocoderParams;

.field public final synthetic val$upperRightLatitude:D

.field public final synthetic val$upperRightLongitude:D


# direct methods
.method public constructor <init>(Lcom/android/server/location/GeocoderProxy;Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GeocoderProxy$2;->this$0:Lcom/android/server/location/GeocoderProxy;

    iput-object p2, p0, Lcom/android/server/location/GeocoderProxy$2;->val$locationName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/location/GeocoderProxy$2;->val$lowerLeftLatitude:D

    iput-wide p5, p0, Lcom/android/server/location/GeocoderProxy$2;->val$lowerLeftLongitude:D

    iput-wide p7, p0, Lcom/android/server/location/GeocoderProxy$2;->val$upperRightLatitude:D

    iput-wide p9, p0, Lcom/android/server/location/GeocoderProxy$2;->val$upperRightLongitude:D

    iput p11, p0, Lcom/android/server/location/GeocoderProxy$2;->val$maxResults:I

    iput-object p12, p0, Lcom/android/server/location/GeocoderProxy$2;->val$params:Landroid/location/GeocoderParams;

    iput-object p13, p0, Lcom/android/server/location/GeocoderProxy$2;->val$listener:Landroid/location/IGeocodeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/GeocoderProxy$2;->val$listener:Landroid/location/IGeocodeListener;

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
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/location/IGeocodeProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy$2;->val$locationName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/server/location/GeocoderProxy$2;->val$lowerLeftLatitude:D

    iget-wide v4, p0, Lcom/android/server/location/GeocoderProxy$2;->val$lowerLeftLongitude:D

    iget-wide v6, p0, Lcom/android/server/location/GeocoderProxy$2;->val$upperRightLatitude:D

    iget-wide v8, p0, Lcom/android/server/location/GeocoderProxy$2;->val$upperRightLongitude:D

    iget v10, p0, Lcom/android/server/location/GeocoderProxy$2;->val$maxResults:I

    iget-object v11, p0, Lcom/android/server/location/GeocoderProxy$2;->val$params:Landroid/location/GeocoderParams;

    iget-object v12, p0, Lcom/android/server/location/GeocoderProxy$2;->val$listener:Landroid/location/IGeocodeListener;

    invoke-interface/range {v0 .. v12}, Landroid/location/IGeocodeProvider;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V

    return-void
.end method
