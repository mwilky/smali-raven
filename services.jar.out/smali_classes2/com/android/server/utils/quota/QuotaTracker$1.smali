.class Lcom/android/server/utils/quota/QuotaTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "QuotaTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/quota/QuotaTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/utils/quota/QuotaTracker;


# direct methods
.method constructor <init>(Lcom/android/server/utils/quota/QuotaTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/utils/quota/QuotaTracker$1;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-eqz p2, :cond_3

    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/utils/quota/QuotaTracker;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Received intent with null action"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_1

    :sswitch_1
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :goto_0
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker$1;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    iget-object v2, v2, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/utils/quota/QuotaTracker$1;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    invoke-static {v3, v1}, Lcom/android/server/utils/quota/QuotaTracker;->access$200(Lcom/android/server/utils/quota/QuotaTracker;I)V

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :pswitch_1
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker$1;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    iget-object v2, v2, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/android/server/utils/quota/QuotaTracker$1;->this$0:Lcom/android/server/utils/quota/QuotaTracker;

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, p2}, Lcom/android/server/utils/quota/QuotaTracker$1;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/utils/quota/QuotaTracker;->onAppRemovedLocked(ILjava/lang/String;)V

    monitor-exit v2

    goto :goto_2

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    :goto_2
    return-void

    :cond_3
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ad942ef -> :sswitch_1
        0x5e33a4ad -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
