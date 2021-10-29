.class Lcom/android/server/location/provider/LocationProviderManager$1;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/LocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;


# direct methods
.method constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$1;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationPermissionsChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$1;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-static {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->access$300(Lcom/android/server/location/provider/LocationProviderManager;I)V

    return-void
.end method

.method public onLocationPermissionsChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$1;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-static {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->access$200(Lcom/android/server/location/provider/LocationProviderManager;Ljava/lang/String;)V

    return-void
.end method
