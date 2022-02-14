.class Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;
.super Landroid/content/BroadcastReceiver;
.source "FullScreenMagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenStateObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

.field private mRegistered:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mRegistered:Z

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->access$1000(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V

    return-void
.end method

.method public registerIfNecessary()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mRegistered:Z

    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mRegistered:Z

    :cond_0
    return-void
.end method
