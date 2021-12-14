.class public final Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;
.implements Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/LocationProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "LocationPendingIntentTransport"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method static synthetic lambda$deliverOnLocationChanged$0(Lcom/android/server/location/provider/LocationProviderManager$GatedCallback;Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$GatedCallback;->run()V

    return-void
.end method


# virtual methods
.method public deliverOnFlushComplete(I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDontSendToRestrictedApps(Z)V

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "flushComplete"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public deliverOnLocationChanged(Landroid/location/LocationResult;Ljava/lang/Runnable;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/BroadcastOptions;->setDontSendToRestrictedApps(Z)V

    const-wide/16 v2, 0x2710

    const/4 v4, 0x0

    const/16 v5, 0x138

    const-string v6, ""

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v2

    const-string/jumbo v3, "location"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationResult;->size()I

    move-result v2

    if-le v2, v8, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationResult;->asList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/location/Location;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Parcelable;

    const-string/jumbo v3, "locations"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    new-instance v2, Lcom/android/server/location/provider/LocationProviderManager$GatedCallback;

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Lcom/android/server/location/provider/LocationProviderManager$GatedCallback;-><init>(Ljava/lang/Runnable;)V

    iget-object v9, v0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v10, v0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    new-instance v13, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport$$ExternalSyntheticLambda0;

    invoke-direct {v13, v2}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/provider/LocationProviderManager$GatedCallback;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v7}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v16

    move-object v12, v1

    invoke-virtual/range {v9 .. v16}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/android/server/location/provider/LocationProviderManager$GatedCallback;->allow()V

    return-void
.end method

.method public deliverOnProviderEnabledChanged(Ljava/lang/String;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDontSendToRestrictedApps(Z)V

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "providerEnabled"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
