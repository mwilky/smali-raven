.class public final Lcom/android/systemui/media/MediaDataManager$createActionsFromNotification$runnable$1;
.super Ljava/lang/Object;
.source "MediaDataManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $action:Landroid/app/Notification$Action;

.field public final synthetic this$0:Lcom/android/systemui/media/MediaDataManager;


# direct methods
.method public constructor <init>(Landroid/app/Notification$Action;Lcom/android/systemui/media/MediaDataManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataManager$createActionsFromNotification$runnable$1;->$action:Landroid/app/Notification$Action;

    iput-object p2, p0, Lcom/android/systemui/media/MediaDataManager$createActionsFromNotification$runnable$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager$createActionsFromNotification$runnable$1;->$action:Landroid/app/Notification$Action;

    iget-object v0, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager$createActionsFromNotification$runnable$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    iget-object v0, v0, Lcom/android/systemui/media/MediaDataManager;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager$createActionsFromNotification$runnable$1;->$action:Landroid/app/Notification$Action;

    iget-object p0, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager$createActionsFromNotification$runnable$1;->$action:Landroid/app/Notification$Action;

    invoke-virtual {v0}, Landroid/app/Notification$Action;->isAuthenticationRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager$createActionsFromNotification$runnable$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    iget-object v1, v0, Lcom/android/systemui/media/MediaDataManager;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v2, Lcom/android/systemui/media/MediaDataManager$createActionsFromNotification$runnable$1$1;

    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager$createActionsFromNotification$runnable$1;->$action:Landroid/app/Notification$Action;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/media/MediaDataManager$createActionsFromNotification$runnable$1$1;-><init>(Landroid/app/Notification$Action;Lcom/android/systemui/media/MediaDataManager;)V

    sget-object p0, Lcom/android/systemui/media/MediaDataManager$createActionsFromNotification$runnable$1$2;->INSTANCE:Lcom/android/systemui/media/MediaDataManager$createActionsFromNotification$runnable$1$2;

    const/4 v0, 0x1

    invoke-interface {v1, v2, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager$createActionsFromNotification$runnable$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager$createActionsFromNotification$runnable$1;->$action:Landroid/app/Notification$Action;

    iget-object p0, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "MediaDataManager"

    const-string v1, "Intent canceled"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
