.class final Lcom/android/server/wm/Letterbox$TapEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "Letterbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Letterbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TapEventReceiver"
.end annotation


# instance fields
.field private final mDoubleTapDetector:Landroid/view/GestureDetector;

.field private final mDoubleTapListener:Lcom/android/server/wm/Letterbox$DoubleTapListener;

.field final synthetic this$0:Lcom/android/server/wm/Letterbox;


# direct methods
.method constructor <init>(Lcom/android/server/wm/Letterbox;Landroid/view/InputChannel;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/Letterbox$TapEventReceiver;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    new-instance v0, Lcom/android/server/wm/Letterbox$DoubleTapListener;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/Letterbox$DoubleTapListener;-><init>(Lcom/android/server/wm/Letterbox;Lcom/android/server/wm/Letterbox$1;)V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$TapEventReceiver;->mDoubleTapListener:Lcom/android/server/wm/Letterbox$DoubleTapListener;

    new-instance p1, Landroid/view/GestureDetector;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p1, p3, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/wm/Letterbox$TapEventReceiver;->mDoubleTapDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$TapEventReceiver;->mDoubleTapDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/Letterbox$TapEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method
