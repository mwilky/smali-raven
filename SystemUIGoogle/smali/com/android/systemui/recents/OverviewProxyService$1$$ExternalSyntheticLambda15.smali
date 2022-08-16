.class public final synthetic Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda15;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda15;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda15;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda15;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    sget v4, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->$r8$clinit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setSelected(Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/NotificationListener;

    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    check-cast v3, Landroid/service/notification/StatusBarNotification;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda15;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/service/notification/NotificationListenerService$RankingMap;

    sget v4, Lcom/android/systemui/statusbar/NotificationListener;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    sget-boolean v6, Lcom/android/systemui/statusbar/RemoteInputController;->ENABLE_REMOTE_INPUT:Z

    if-nez v6, :cond_0

    goto :goto_5

    :cond_0
    iget-object v6, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v6, :cond_8

    const-string v7, "android.wearable.EXTENSIONS"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v6, :cond_1

    array-length v6, v6

    if-nez v6, :cond_8

    :cond_1
    const/4 v6, 0x0

    new-instance v7, Landroid/app/Notification$WearableExtender;

    invoke-direct {v7, v4}, Landroid/app/Notification$WearableExtender;-><init>(Landroid/app/Notification;)V

    invoke-virtual {v7}, Landroid/app/Notification$WearableExtender;->getActions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    move v9, v2

    :goto_0
    if-ge v9, v8, :cond_7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/Notification$Action;

    if-nez v10, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v10}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v11

    if-nez v11, :cond_3

    goto :goto_3

    :cond_3
    array-length v12, v11

    move v13, v2

    :goto_1
    if-ge v13, v12, :cond_5

    aget-object v14, v11, v13

    invoke-virtual {v14}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v14

    if-eqz v14, :cond_4

    move-object v6, v10

    goto :goto_2

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_7
    :goto_4
    if-eqz v6, :cond_8

    invoke-static {v5, v4}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-array v1, v1, [Landroid/app/Notification$Action;

    aput-object v6, v1, v2

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    :cond_8
    :goto_5
    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

    invoke-interface {v1, v3, p0}, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_6

    :cond_9
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/recents/OverviewProxyService$1;

    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    check-cast v3, Landroid/view/MotionEvent;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda15;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-nez v4, :cond_a

    iget-object v5, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iput-boolean v1, v5, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStarted:Z

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, v5, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStartY:F

    iget-object v5, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStartMillis:J

    iget-object v5, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-boolean v5, v5, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStarted:Z

    const/4 v6, 0x0

    invoke-interface {p0, v6, v5, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->onInputFocusTransfer(FZZ)V

    :cond_a
    const/4 v5, 0x3

    if-eq v4, v1, :cond_b

    if-ne v4, v5, :cond_d

    :cond_b
    iget-object v6, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iput-boolean v2, v6, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStarted:Z

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget v7, v7, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStartY:F

    sub-float/2addr v6, v7

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-wide v9, v0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStartMillis:J

    sub-long/2addr v7, v9

    long-to-float v7, v7

    div-float/2addr v6, v7

    iget-boolean v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mInputFocusTransferStarted:Z

    if-ne v4, v5, :cond_c

    goto :goto_7

    :cond_c
    move v1, v2

    :goto_7
    invoke-interface {p0, v6, v0, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->onInputFocusTransfer(FZZ)V

    :cond_d
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :goto_8
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda15;->f$2:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/StackStateAnimator;->mLogger:Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;->disappearAnimationEnded(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->removeFromTransientContainer()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
