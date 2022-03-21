.class public Lcom/android/settings/network/MobileNetworkTwoPaneUtils;
.super Ljava/lang/Object;
.source "MobileNetworkTwoPaneUtils.java"


# direct methods
.method public static registerTwoPaneForMobileNetwork(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    const-string v0, "MobileNetworkTwoPaneUtils"

    const-string v1, "registerTwoPaneForMobileNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRuleForSettingsHome(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;Z)V

    return-void
.end method
