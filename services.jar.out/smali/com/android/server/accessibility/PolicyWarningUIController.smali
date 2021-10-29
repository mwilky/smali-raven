.class public Lcom/android/server/accessibility/PolicyWarningUIController;
.super Ljava/lang/Object;
.source "PolicyWarningUIController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;
    }
.end annotation


# static fields
.field protected static final ACTION_A11Y_SETTINGS:Ljava/lang/String;

.field protected static final ACTION_DISMISS_NOTIFICATION:Ljava/lang/String;

.field protected static final ACTION_SEND_NOTIFICATION:Ljava/lang/String;

.field private static final SEND_NOTIFICATION_DELAY_HOURS:I = 0x18

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private final mEnabledA11yServices:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandler:Landroid/os/Handler;

.field private final mNotificationController:Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;


# direct methods
.method public static synthetic $r8$lambda$BpICa1dkTGG_FPCF1geFvKAVh2o(Lcom/android/server/accessibility/PolicyWarningUIController;ILandroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/PolicyWarningUIController;->setAlarm(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xcPczwbLJPTdxRqsAsiMQw01e1U(Lcom/android/server/accessibility/PolicyWarningUIController;ILandroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/PolicyWarningUIController;->cancelAlarm(ILandroid/content/ComponentName;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/server/accessibility/PolicyWarningUIController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/PolicyWarningUIController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ACTION_SEND_NOTIFICATION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/accessibility/PolicyWarningUIController;->ACTION_SEND_NOTIFICATION:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ACTION_A11Y_SETTINGS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/accessibility/PolicyWarningUIController;->ACTION_A11Y_SETTINGS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".ACTION_DISMISS_NOTIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/PolicyWarningUIController;->ACTION_DISMISS_NOTIFICATION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mEnabledA11yServices:Landroid/util/ArraySet;

    iput-object p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mMainHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mNotificationController:Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;

    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/android/server/accessibility/PolicyWarningUIController;->ACTION_SEND_NOTIFICATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/accessibility/PolicyWarningUIController;->ACTION_A11Y_SETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/accessibility/PolicyWarningUIController;->ACTION_DISMISS_NOTIFICATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {p2, p3, v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private cancelAlarm(ILandroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/accessibility/PolicyWarningUIController;->ACTION_SEND_NOTIFICATION:Ljava/lang/String;

    invoke-static {v1, p1, v2, p2}, Lcom/android/server/accessibility/PolicyWarningUIController;->createPendingIntent(Landroid/content/Context;ILjava/lang/String;Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method protected static createIntent(Landroid/content/Context;ILjava/lang/String;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method protected static createPendingIntent(Landroid/content/Context;ILjava/lang/String;Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 3

    nop

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/accessibility/PolicyWarningUIController;->createIntent(Landroid/content/Context;ILjava/lang/String;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private setAlarm(ILandroid/content/ComponentName;)V
    .locals 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    iget-object v1, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/server/accessibility/PolicyWarningUIController;->ACTION_SEND_NOTIFICATION:Ljava/lang/String;

    invoke-static {v4, p1, v5, p2}, Lcom/android/server/accessibility/PolicyWarningUIController;->createPendingIntent(Landroid/content/Context;ILjava/lang/String;Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public onEnabledServicesChangedLocked(ILjava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mEnabledA11yServices:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mEnabledA11yServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v1, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mEnabledA11yServices:Landroid/util/ArraySet;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mNotificationController:Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onNonA11yCategoryServiceBound(ILandroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/PolicyWarningUIController;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onNonA11yCategoryServiceUnbound(ILandroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/PolicyWarningUIController;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSwitchUserLocked(ILjava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mEnabledA11yServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mEnabledA11yServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mNotificationController:Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected setAccessibilityPolicyManager(Lcom/android/server/accessibility/AccessibilitySecurityPolicy;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController;->mNotificationController:Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->setAccessibilityPolicyManager(Lcom/android/server/accessibility/AccessibilitySecurityPolicy;)V

    return-void
.end method
