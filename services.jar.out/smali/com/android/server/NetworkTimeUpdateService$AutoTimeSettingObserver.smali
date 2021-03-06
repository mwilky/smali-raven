.class Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;
.super Landroid/database/ContentObserver;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoTimeSettingObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mMsg:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mHandler:Landroid/os/Handler;

    iput p3, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mMsg:I

    return-void
.end method

.method private isAutomaticTimeEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method


# virtual methods
.method observe()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->isAutomaticTimeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/NetworkTimeUpdateService$AutoTimeSettingObserver;->mMsg:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
