.class Lcom/android/server/app/GameManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/app/GameManagerService;->registerPackageReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/app/GameManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$1;->getSendingUserId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v3}, Lcom/android/server/app/GameManagerService;->access$400(Lcom/android/server/app/GameManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x20000

    invoke-virtual {v3, v2, v4, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->category:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_1

    return-void

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch v5, :sswitch_data_0

    :cond_2
    goto :goto_1

    :sswitch_0
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v4, v6

    goto :goto_1

    :sswitch_1
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_2
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v4, v7

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v3, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/app/GameManagerService;->disableCompatScale(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v3}, Lcom/android/server/app/GameManagerService;->access$1000(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v4, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v4}, Lcom/android/server/app/GameManagerService;->access$1100(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4

    :pswitch_1
    iget-object v3, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    new-array v4, v7, [Ljava/lang/String;

    aput-object v2, v4, v6

    invoke-virtual {v3, v1, v4}, Lcom/android/server/app/GameManagerService;->updateConfigsForUser(I[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    nop

    :goto_2
    goto :goto_3

    :catch_1
    move-exception v1

    const-string v2, "GameManagerService"

    const-string v3, "Failed to get package name for new package"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0xa480416 -> :sswitch_2
        0x1f50b9c2 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
