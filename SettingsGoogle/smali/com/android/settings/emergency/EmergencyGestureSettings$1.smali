.class Lcom/android/settings/emergency/EmergencyGestureSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "EmergencyGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/emergency/EmergencyGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 1

    new-instance p0, Lcom/android/settings/emergency/EmergencyGestureEntrypointPreferenceController;

    const-string v0, "dummy_emergency_gesture_pref_key"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/emergency/EmergencyGestureEntrypointPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/emergency/EmergencyGestureEntrypointPreferenceController;->shouldSuppressFromSearch()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
