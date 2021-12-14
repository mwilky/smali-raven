.class public Lcom/android/systemui/qs/tiles/dialog/InternetDialogUtil;
.super Ljava/lang/Object;
.source "InternetDialogUtil.java"


# direct methods
.method public static isProviderModelEnabled(Landroid/content/Context;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "settings_provider_model"

    invoke-static {p0, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
