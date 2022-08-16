.class public final Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;
.super Ljava/lang/Object;
.source "NudgeToSetupDreamCallback.java"

# interfaces
.implements Lcom/android/systemui/util/condition/Monitor$Callback;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mComplication:Lcom/google/android/systemui/communal/dreams/SetupDreamComplication;

.field public final mContext:Landroid/content/Context;

.field public mDocked:Z

.field public final mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public final mDreamSelectedProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mDreamSet:Z

.field public mHasClickedNudge:Z

.field public final mNotificationId:I

.field public final mNotificationLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mNudgeClickedAction:Ljava/lang/String;

.field public final mNudgeDismissedAction:Ljava/lang/String;

.field public final mReceiver:Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback$2;

.field public final mSettingObserver:Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "NudgeToSetupDream"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/communal/dreams/SetupDreamComplication;Lcom/android/systemui/dreams/DreamOverlayStateController;Ljavax/inject/Provider;Landroid/app/NotificationManager;Ldagger/Lazy;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/systemui/communal/dreams/SetupDreamComplication;",
            "Lcom/android/systemui/dreams/DreamOverlayStateController;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/app/NotificationManager;",
            "Ldagger/Lazy<",
            "Landroid/app/Notification;",
            ">;",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback$1;-><init>(Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;)V

    iput-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mSettingObserver:Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback$1;

    new-instance v1, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback$2;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback$2;-><init>(Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;)V

    iput-object v1, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mReceiver:Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback$2;

    iput-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mComplication:Lcom/google/android/systemui/communal/dreams/SetupDreamComplication;

    iput-object p3, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iput-object p4, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mDreamSelectedProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mNotificationLazy:Ldagger/Lazy;

    iput p9, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mNotificationId:I

    iput-object p10, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mNudgeClickedAction:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mNudgeDismissedAction:Ljava/lang/String;

    iput-object p12, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p0, 0x1

    invoke-virtual {p7, p8, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {p0, p10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0, p11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onConditionsChanged(Z)V
    .locals 2

    sget-boolean v0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConditionsChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NudgeToSetupDream"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mDocked:Z

    iget-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mDreamSelectedProvider:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mDreamSet:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->updatePresentation()V

    return-void
.end method

.method public final updatePresentation()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mContext:Landroid/content/Context;

    const-string v1, "HasClickedNudgeToSetupDream"

    invoke-static {v0, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mHasClickedNudge:Z

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mContext:Landroid/content/Context;

    const-string v1, "HasDismissedNudgeToSetupDream"

    invoke-static {v0, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mDreamSet:Z

    const-string v2, "NudgeToSetupDream"

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mDocked:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mHasClickedNudge:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mNotificationId:I

    iget-object v3, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mNotificationLazy:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification;

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mComplication:Lcom/google/android/systemui/communal/dreams/SetupDreamComplication;

    invoke-virtual {v0, p0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->addComplication(Lcom/android/systemui/dreams/complication/Complication;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mNotificationId:I

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mComplication:Lcom/google/android/systemui/communal/dreams/SetupDreamComplication;

    iget-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda10;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0, p0}, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
