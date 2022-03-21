.class public Lcom/android/settings/display/darkmode/DarkModeObserver;
.super Ljava/lang/Object;
.source "DarkModeObserver.java"


# instance fields
.field private final mBatterySaverReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Ljava/lang/Runnable;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/display/darkmode/DarkModeObserver$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/darkmode/DarkModeObserver$1;-><init>(Lcom/android/settings/display/darkmode/DarkModeObserver;)V

    iput-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeObserver;->mBatterySaverReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeObserver;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/settings/display/darkmode/DarkModeObserver$2;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Lcom/android/settings/display/darkmode/DarkModeObserver$2;-><init>(Lcom/android/settings/display/darkmode/DarkModeObserver;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeObserver;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/darkmode/DarkModeObserver;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeObserver;->mCallback:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method protected getContentObserver()Landroid/database/ContentObserver;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeObserver;->mContentObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method protected setContentObserver(Landroid/database/ContentObserver;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeObserver;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public subscribe(Ljava/lang/Runnable;)V
    .locals 5

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iput-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeObserver;->mCallback:Ljava/lang/Runnable;

    const-string/jumbo p1, "ui_night_mode"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "dark_theme_custom_start_time"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "dark_theme_custom_end_time"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/darkmode/DarkModeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/display/darkmode/DarkModeObserver;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/display/darkmode/DarkModeObserver;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeObserver;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeObserver;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeObserver;->mBatterySaverReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unsubscribe()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/darkmode/DarkModeObserver;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/display/darkmode/DarkModeObserver;->mBatterySaverReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DarkModeObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeObserver;->mCallback:Ljava/lang/Runnable;

    return-void
.end method
