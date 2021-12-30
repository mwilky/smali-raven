.class Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "HapticsSwitchPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingObserver"
.end annotation


# instance fields
.field private final HAPTIC_FEEDBACK_ENABLED_URI:Landroid/net/Uri;

.field private final HAPTIC_FEEDBACK_URI:Landroid/net/Uri;

.field private final NOTIFICATION_VIBRATION_URI:Landroid/net/Uri;

.field private final RING_VIBRATION_URI:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "haptic_feedback_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController$SettingObserver;->HAPTIC_FEEDBACK_ENABLED_URI:Landroid/net/Uri;

    const-string v0, "haptic_feedback_intensity"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController$SettingObserver;->HAPTIC_FEEDBACK_URI:Landroid/net/Uri;

    const-string v0, "notification_vibration_intensity"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController$SettingObserver;->NOTIFICATION_VIBRATION_URI:Landroid/net/Uri;

    const-string v0, "ring_vibration_intensity"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController$SettingObserver;->RING_VIBRATION_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public register(Landroid/content/ContentResolver;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController$SettingObserver;->HAPTIC_FEEDBACK_ENABLED_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController$SettingObserver;->HAPTIC_FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController$SettingObserver;->NOTIFICATION_VIBRATION_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/google/android/settings/accessibility/HapticsSwitchPreferenceController$SettingObserver;->RING_VIBRATION_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregister(Landroid/content/ContentResolver;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
