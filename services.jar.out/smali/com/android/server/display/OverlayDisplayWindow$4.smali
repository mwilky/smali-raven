.class public Lcom/android/server/display/OverlayDisplayWindow$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OverlayDisplayWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/OverlayDisplayWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$4;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$4;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-static {p1}, Lcom/android/server/display/OverlayDisplayWindow;->-$$Nest$fgetmLiveTranslationX(Lcom/android/server/display/OverlayDisplayWindow;)F

    move-result p2

    sub-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/android/server/display/OverlayDisplayWindow;->-$$Nest$fputmLiveTranslationX(Lcom/android/server/display/OverlayDisplayWindow;F)V

    iget-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$4;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-static {p1}, Lcom/android/server/display/OverlayDisplayWindow;->-$$Nest$fgetmLiveTranslationY(Lcom/android/server/display/OverlayDisplayWindow;)F

    move-result p2

    sub-float/2addr p2, p4

    invoke-static {p1, p2}, Lcom/android/server/display/OverlayDisplayWindow;->-$$Nest$fputmLiveTranslationY(Lcom/android/server/display/OverlayDisplayWindow;F)V

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayWindow$4;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayWindow;->relayout()V

    const/4 p0, 0x1

    return p0
.end method
