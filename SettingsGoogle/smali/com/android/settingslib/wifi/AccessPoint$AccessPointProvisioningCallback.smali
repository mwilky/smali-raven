.class Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;
.super Landroid/net/wifi/hotspot2/ProvisioningCallback;
.source "AccessPoint.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/AccessPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessPointProvisioningCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/wifi/AccessPoint;


# direct methods
.method public static synthetic $r8$lambda$Ad-IMAj4XL5vF-wXbWlpzENST4s(Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->lambda$onProvisioningComplete$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$F5BH6OuwGlHQBUo7DyB1s-3hZzQ(Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->lambda$onProvisioningFailure$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$jJXQxP8dnxL3IonFSsnUmrhqyPI(Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->lambda$onProvisioningStatus$1()V

    return-void
.end method

.method private synthetic lambda$onProvisioningComplete$2()V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method private synthetic lambda$onProvisioningFailure$0()V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method private synthetic lambda$onProvisioningStatus$1()V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public onProvisioningComplete()V
    .locals 8

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fputmOsuProvisioningComplete(Lcom/android/settingslib/wifi/AccessPoint;Z)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fputmOsuFailure(Lcom/android/settingslib/wifi/AccessPoint;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v0, v2}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fputmOsuStatus(Lcom/android/settingslib/wifi/AccessPoint;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$mgetWifiManager(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v2}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmOsuProvider(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/net/wifi/hotspot2/OsuProvider;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->getMatchingPasspointConfigsForOsuProviders(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v3}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmOsuProvider(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/net/wifi/hotspot2/OsuProvider;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const-string v0, "SettingsLib.AccessPoint"

    const-string v1, "Missing PasspointConfiguration for newly provisioned network!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmConnectListener(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {p0}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmConnectListener(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object p0

    invoke-interface {p0, v3}, Landroid/net/wifi/WifiManager$ActionListener;->onFailure(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->getAllMatchingWifiConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v2, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v3, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v4}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmContext(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v6, v2, v1}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {p0}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmConnectListener(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmConnectListener(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {p0}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmConnectListener(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object p0

    invoke-interface {p0, v3}, Landroid/net/wifi/WifiManager$ActionListener;->onFailure(I)V

    :cond_4
    return-void
.end method

.method public onProvisioningFailure(I)V
    .locals 2

    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmOsuStatus(Lcom/android/settingslib/wifi/AccessPoint;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmContext(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->osu_completing_sign_up:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmContext(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->osu_sign_up_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fputmOsuFailure(Lcom/android/settingslib/wifi/AccessPoint;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmContext(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->osu_connect_failed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fputmOsuFailure(Lcom/android/settingslib/wifi/AccessPoint;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fputmOsuStatus(Lcom/android/settingslib/wifi/AccessPoint;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fputmOsuProvisioningComplete(Lcom/android/settingslib/wifi/AccessPoint;Z)V

    new-instance p1, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProvisioningStatus(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    move-object p1, v2

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmContext(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Context;

    move-result-object p1

    sget v3, Lcom/android/settingslib/R$string;->osu_completing_sign_up:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmContext(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Context;

    move-result-object p1

    sget v3, Lcom/android/settingslib/R$string;->osu_opening_provider:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v4}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmOsuProvider(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/net/wifi/hotspot2/OsuProvider;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/hotspot2/OsuProvider;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v3}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fgetmOsuStatus(Lcom/android/settingslib/wifi/AccessPoint;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v3, p1}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fputmOsuStatus(Lcom/android/settingslib/wifi/AccessPoint;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {p1, v2}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fputmOsuFailure(Lcom/android/settingslib/wifi/AccessPoint;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;->this$0:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {p1, v0}, Lcom/android/settingslib/wifi/AccessPoint;->-$$Nest$fputmOsuProvisioningComplete(Lcom/android/settingslib/wifi/AccessPoint;Z)V

    if-eqz v1, :cond_0

    new-instance p1, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/wifi/AccessPoint$AccessPointProvisioningCallback;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
