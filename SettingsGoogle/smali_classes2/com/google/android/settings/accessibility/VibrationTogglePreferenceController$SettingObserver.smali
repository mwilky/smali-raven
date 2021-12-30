.class public Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "VibrationTogglePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SettingObserver"
.end annotation


# instance fields
.field public enabledKeyUri:Landroid/net/Uri;

.field private hasEnabledKey:Z

.field public final settingKeyUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;->hasEnabledKey:Z

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;->settingKeyUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;->hasEnabledKey:Z

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;->settingKeyUri:Landroid/net/Uri;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;->enabledKeyUri:Landroid/net/Uri;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;->hasEnabledKey:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public register(Landroid/content/ContentResolver;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;->settingKeyUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-boolean v0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;->hasEnabledKey:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/settings/accessibility/VibrationTogglePreferenceController$SettingObserver;->enabledKeyUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public unregister(Landroid/content/ContentResolver;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
