.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/provider/LocationProviderManager$GatedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/provider/LocationProviderManager$GatedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/provider/LocationProviderManager$GatedCallback;

    return-void
.end method


# virtual methods
.method public final onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/provider/LocationProviderManager$GatedCallback;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->lambda$deliverOnLocationChanged$1(Lcom/android/server/location/provider/LocationProviderManager$GatedCallback;Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
