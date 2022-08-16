.class public final Lcom/android/wm/shell/pip/tv/TvPipNotificationController$ActionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TvPipNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/tv/TvPipNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionBroadcastReceiver"
.end annotation


# instance fields
.field public final mIntentFilter:Landroid/content/IntentFilter;

.field public mRegistered:Z

.field public final synthetic this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipNotificationController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$ActionBroadcastReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.android.wm.shell.pip.tv.notification.action.CLOSE_PIP"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.wm.shell.pip.tv.notification.action.SHOW_PIP_MENU"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.wm.shell.pip.tv.notification.action.MOVE_PIP"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.wm.shell.pip.tv.notification.action.TOGGLE_EXPANDED_PIP"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.wm.shell.pip.tv.notification.action.FULLSCREEN"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$ActionBroadcastReceiver;->mRegistered:Z

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v1, 0x74609ee5

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "TvPipNotification"

    aput-object v5, v3, v4

    const/4 v5, 0x1

    aput-object p2, v3, v5

    invoke-static {v0, v1, v4, v2, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string p2, "com.android.wm.shell.pip.tv.notification.action.SHOW_PIP_MENU"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipNotificationController$Delegate;

    check-cast p0, Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->showPictureInPictureMenu()V

    goto :goto_0

    :cond_1
    const-string p2, "com.android.wm.shell.pip.tv.notification.action.CLOSE_PIP"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipNotificationController$Delegate;

    check-cast p0, Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->closePip()V

    goto :goto_0

    :cond_2
    const-string p2, "com.android.wm.shell.pip.tv.notification.action.MOVE_PIP"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipNotificationController$Delegate;

    check-cast p0, Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->enterPipMovementMenu()V

    goto :goto_0

    :cond_3
    const-string p2, "com.android.wm.shell.pip.tv.notification.action.TOGGLE_EXPANDED_PIP"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipNotificationController$Delegate;

    check-cast p0, Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->togglePipExpansion()V

    goto :goto_0

    :cond_4
    const-string p2, "com.android.wm.shell.pip.tv.notification.action.FULLSCREEN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$ActionBroadcastReceiver;->this$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mDelegate:Lcom/android/wm/shell/pip/tv/TvPipNotificationController$Delegate;

    check-cast p0, Lcom/android/wm/shell/pip/tv/TvPipController;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipController;->movePipToFullscreen()V

    :cond_5
    :goto_0
    return-void
.end method
