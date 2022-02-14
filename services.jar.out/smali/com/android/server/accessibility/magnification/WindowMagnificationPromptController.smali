.class public Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;
.super Ljava/lang/Object;
.source "WindowMagnificationPromptController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;
    }
.end annotation


# static fields
.field static final ACTION_DISMISS:Ljava/lang/String; = "com.android.server.accessibility.magnification.action.DISMISS"

.field static final ACTION_TURN_ON_IN_SETTINGS:Ljava/lang/String; = "com.android.server.accessibility.magnification.action.TURN_ON_IN_SETTINGS"

.field private static final MAGNIFICATION_WINDOW_MODE_PROMPT_URI:Landroid/net/Uri;


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mNeedToShowNotification:Z

.field mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "accessibility_show_window_magnification_prompt"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->MAGNIFICATION_WINDOW_MODE_PROMPT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationManager:Landroid/app/NotificationManager;

    iput p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mUserId:I

    new-instance v0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$1;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->MAGNIFICATION_WINDOW_MODE_PROMPT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->isWindowMagnificationPromptEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNeedToShowNotification:Z

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNeedToShowNotification:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mUserId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->launchMagnificationSettings()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->dismissNotification()V

    return-void
.end method

.method private buildTurnOnAction()Landroid/app/Notification$Action;
    .locals 4

    new-instance v0, Landroid/app/Notification$Action$Builder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    const v2, 0x1040870

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.server.accessibility.magnification.action.TURN_ON_IN_SETTINGS"

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    return-object v0
.end method

.method private createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private dismissNotification()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->unregisterReceiverIfNeeded()V

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private isWindowMagnificationPromptEnabled()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mUserId:I

    const-string v2, "accessibility_show_window_magnification_prompt"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v3, v1

    :cond_0
    return v3
.end method

.method private launchMagnificationSettings()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mUserId:I

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/StatusBarManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapsePanels()V

    return-void
.end method

.method private registerReceiverIfNeeded()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$NotificationActionReceiver;-><init>(Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController$1;)V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.android.server.accessibility.magnification.action.DISMISS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.server.accessibility.magnification.action.TURN_ON_IN_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "android.permission.MANAGE_ACCESSIBILITY"

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterReceiverIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->dismissNotification()V

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onPromptSettingsValueChanged()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->isWindowMagnificationPromptEnabled()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNeedToShowNotification:Z

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNeedToShowNotification:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->unregisterReceiverIfNeeded()V

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x3ec

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    return-void
.end method

.method showNotificationIfNeeded()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNeedToShowNotification:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->ACCESSIBILITY_MAGNIFICATION:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    const v2, 0x10408f0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1080312

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    const v4, 0x10408f1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    const v5, 0x1080317

    invoke-static {v3, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v4, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v4, "com.android.server.accessibility.magnification.action.DISMISS"

    invoke-direct {p0, v4}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v4, "com.android.server.accessibility.magnification.action.TURN_ON_IN_SETTINGS"

    invoke-direct {p0, v4}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->createPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    new-array v3, v3, [Landroid/app/Notification$Action;

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->buildTurnOnAction()Landroid/app/Notification$Action;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v3, 0x3ec

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;->registerReceiverIfNeeded()V

    return-void
.end method
