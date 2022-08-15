.class public Lcom/android/server/Watchdog$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsObserver"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mUri:Landroid/net/Uri;

.field public final mWatchdog:Lcom/android/server/Watchdog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/Watchdog;)V
    .locals 1

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v0, "system_server_watchdog_timeout_ms"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog$SettingsObserver;->mUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/server/Watchdog$SettingsObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/Watchdog$SettingsObserver;->mWatchdog:Lcom/android/server/Watchdog;

    invoke-virtual {p0}, Lcom/android/server/Watchdog$SettingsObserver;->onChange()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/Watchdog$SettingsObserver;->mWatchdog:Lcom/android/server/Watchdog;

    iget-object p0, p0, Lcom/android/server/Watchdog$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "system_server_watchdog_timeout_ms"

    const-wide/32 v2, 0xea60

    invoke-static {p0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Watchdog;->updateWatchdogTimeout(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception while reading settings "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Watchdog"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/Watchdog$SettingsObserver;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/Watchdog$SettingsObserver;->onChange()V

    :cond_0
    return-void
.end method
