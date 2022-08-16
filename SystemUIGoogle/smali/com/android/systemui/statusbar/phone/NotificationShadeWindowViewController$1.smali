.class public final Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NotificationShadeWindowViewController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mDoubleTapEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mSingleTapEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    const-string v2, "DOUBLE_TAP"

    invoke-interface {p1, v0, v1, p0, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mSingleTapEnabled:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    invoke-interface {p1}, Lcom/android/systemui/dock/DockManager;->isDocked()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    const-string v2, "SINGLE_TAP"

    invoke-interface {p1, v0, v1, p0, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
