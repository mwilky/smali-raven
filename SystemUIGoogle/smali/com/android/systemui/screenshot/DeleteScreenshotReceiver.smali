.class public Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeleteScreenshotReceiver.java"


# instance fields
.field private final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private final mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;


# direct methods
.method public static synthetic $r8$lambda$CEZI5sqJSK54hW_kaFE5KM0z6bY(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;->lambda$onReceive$0(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotSmartActions;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;->mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    iput-object p2, p0, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static synthetic lambda$onReceive$0(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "android:screenshot_uri_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    const-string v1, "android:smart_actions_enabled"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;->mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    const-string p0, "android:screenshot_id"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "Delete"

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/screenshot/ScreenshotSmartActions;->notifyScreenshotAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)V

    :cond_1
    return-void
.end method
