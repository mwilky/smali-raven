.class final synthetic Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler$startGestureListening$1$1;
.super Ljava/lang/Object;
.source "SwipeStatusBarAwayGestureHandler.kt"

# interfaces
.implements Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->startGestureListening()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# instance fields
.field final synthetic $tmp0:Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler$startGestureListening$1$1;->$tmp0:Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler$startGestureListening$1$1;->$tmp0:Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->access$onInputEvent(Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;Landroid/view/InputEvent;)V

    return-void
.end method
