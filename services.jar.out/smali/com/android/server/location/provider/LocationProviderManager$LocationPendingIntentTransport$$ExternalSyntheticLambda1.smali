.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/IRemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IRemoteCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport$$ExternalSyntheticLambda1;->f$0:Landroid/os/IRemoteCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport$$ExternalSyntheticLambda1;->f$0:Landroid/os/IRemoteCallback;

    invoke-static {v0}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->lambda$deliverOnLocationChanged$0(Landroid/os/IRemoteCallback;)V

    return-void
.end method
