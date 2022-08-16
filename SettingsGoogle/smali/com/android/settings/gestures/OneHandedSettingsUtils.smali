.class public Lcom/android/settings/gestures/OneHandedSettingsUtils;
.super Ljava/lang/Object;
.source "OneHandedSettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/gestures/OneHandedSettingsUtils$TogglesCallback;,
        Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;,
        Lcom/android/settings/gestures/OneHandedSettingsUtils$OneHandedTimeout;
    }
.end annotation


# static fields
.field static final HARDWARE_SHORTCUT_ENABLED_URI:Landroid/net/Uri;

.field static final ONE_HANDED_MODE_ENABLED_URI:Landroid/net/Uri;

.field static final ONE_HANDED_MODE_TARGET_NAME:Ljava/lang/String;

.field static final SHOW_NOTIFICATION_ENABLED_URI:Landroid/net/Uri;

.field static final SOFTWARE_SHORTCUT_ENABLED_URI:Landroid/net/Uri;

.field private static sCurrentUserId:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSettingsObserver:Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/gestures/OneHandedSettingsUtils;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->ONE_HANDED_MODE_TARGET_NAME:Ljava/lang/String;

    const-string v0, "one_handed_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->ONE_HANDED_MODE_ENABLED_URI:Landroid/net/Uri;

    const-string/jumbo v0, "swipe_bottom_to_notification_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->SHOW_NOTIFICATION_ENABLED_URI:Landroid/net/Uri;

    const-string v0, "accessibility_button_targets"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->SOFTWARE_SHORTCUT_ENABLED_URI:Landroid/net/Uri;

    const-string v0, "accessibility_shortcut_target_service"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->HARDWARE_SHORTCUT_ENABLED_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    sput p1, Lcom/android/settings/gestures/OneHandedSettingsUtils;->sCurrentUserId:I

    new-instance p1, Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;-><init>(Lcom/android/settings/gestures/OneHandedSettingsUtils;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->mSettingsObserver:Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;

    return-void
.end method

.method public static canEnableController(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->isOneHandedModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->getNavigationBarMode(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->getShortcutEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getNavigationBarMode(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->sCurrentUserId:I

    const-string v1, "navigation_mode"

    const/4 v2, 0x2

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static getShortcutEnabled(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Lcom/android/settings/gestures/OneHandedSettingsUtils;->sCurrentUserId:I

    const-string v2, "accessibility_button_targets"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/settings/gestures/OneHandedSettingsUtils;->ONE_HANDED_MODE_TARGET_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->sCurrentUserId:I

    const-string v1, "accessibility_shortcut_target_service"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->ONE_HANDED_MODE_TARGET_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isOneHandedModeEnabled(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->sCurrentUserId:I

    const-string v1, "one_handed_mode_enabled"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v2, v0

    :cond_0
    return v2
.end method

.method public static isSupportOneHandedMode()Z
    .locals 2

    const-string/jumbo v0, "ro.support_one_handed_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSwipeDownNotificationEnabled(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->sCurrentUserId:I

    const-string/jumbo v1, "swipe_bottom_to_notification_enabled"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v2, v0

    :cond_0
    return v2
.end method

.method public static setOneHandedModeEnabled(Landroid/content/Context;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->sCurrentUserId:I

    const-string v1, "one_handed_mode_enabled"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static setSwipeDownNotificationEnabled(Landroid/content/Context;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->sCurrentUserId:I

    const-string/jumbo v1, "swipe_bottom_to_notification_enabled"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static setTapsAppToExitEnabled(Landroid/content/Context;Z)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->sCurrentUserId:I

    const-string/jumbo v1, "taps_app_to_exit"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static setTimeoutValue(Landroid/content/Context;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->sCurrentUserId:I

    const-string v1, "one_handed_mode_timeout"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static setUserId(I)V
    .locals 0

    sput p0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->sCurrentUserId:I

    return-void
.end method


# virtual methods
.method public registerToggleAwareObserver(Lcom/android/settings/gestures/OneHandedSettingsUtils$TogglesCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->mSettingsObserver:Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;->observe()V

    iget-object p0, p0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->mSettingsObserver:Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;

    invoke-static {p0, p1}, Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;->-$$Nest$msetCallback(Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;Lcom/android/settings/gestures/OneHandedSettingsUtils$TogglesCallback;)V

    return-void
.end method

.method public setNavigationBarMode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    const-string v0, "navigation_mode"

    invoke-static {p0, v0, p2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setShortcutEnabled(Landroid/content/Context;Z)V
    .locals 1

    if-eqz p2, :cond_0

    sget-object p0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->ONE_HANDED_MODE_TARGET_NAME:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget p2, Lcom/android/settings/gestures/OneHandedSettingsUtils;->sCurrentUserId:I

    const-string v0, "accessibility_button_targets"

    invoke-static {p1, v0, p0, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public unregisterToggleAwareObserver()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->mSettingsObserver:Lcom/android/settings/gestures/OneHandedSettingsUtils$SettingsObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
