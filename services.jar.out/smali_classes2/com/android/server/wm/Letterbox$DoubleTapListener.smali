.class Lcom/android/server/wm/Letterbox$DoubleTapListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Letterbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Letterbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/Letterbox;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/Letterbox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/Letterbox$DoubleTapListener;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/Letterbox;Lcom/android/server/wm/Letterbox$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/Letterbox$DoubleTapListener;-><init>(Lcom/android/server/wm/Letterbox;)V

    return-void
.end method


# virtual methods
.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/Letterbox$DoubleTapListener;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-static {v0}, Lcom/android/server/wm/Letterbox;->access$400(Lcom/android/server/wm/Letterbox;)Ljava/util/function/IntConsumer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v2}, Ljava/util/function/IntConsumer;->accept(I)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
