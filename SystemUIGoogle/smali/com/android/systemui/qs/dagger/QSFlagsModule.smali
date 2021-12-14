.class public interface abstract Lcom/android/systemui/qs/dagger/QSFlagsModule;
.super Ljava/lang/Object;
.source "QSFlagsModule.java"


# direct methods
.method public static isPMLiteEnabled(Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/util/settings/GlobalSettings;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/FeatureFlags;->isPMLiteEnabled()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const-string/jumbo p0, "sysui_pm_lite"

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isReduceBrightColorsAvailable(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Landroid/hardware/display/ColorDisplayManager;->isReduceBrightColorsAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
