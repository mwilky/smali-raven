.class public final Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;
.super Ljava/lang/Object;
.source "SwipeHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/assist/uihints/SwipeHandler;

.field public final synthetic val$durationMs:I

.field public final synthetic val$endTimeMs:J

.field public final synthetic val$inputSource:I

.field public final synthetic val$motionEventDeltaMs:I

.field public final synthetic val$startTimeMs:J

.field public final synthetic val$x1:F

.field public final synthetic val$x2:F

.field public final synthetic val$y1:F

.field public final synthetic val$y2:F


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/assist/uihints/SwipeHandler;JJIFFFFI)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;->this$0:Lcom/google/android/systemui/assist/uihints/SwipeHandler;

    iput-wide p2, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;->val$endTimeMs:J

    iput-wide p4, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;->val$startTimeMs:J

    iput p6, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;->val$durationMs:I

    const/16 p1, 0x1002

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;->val$inputSource:I

    iput p7, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;->val$x1:F

    iput p8, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;->val$x2:F

    iput p9, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;->val$y1:F

    iput p10, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;->val$y2:F

    iput p11, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;->val$motionEventDeltaMs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;->val$endTimeMs:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;->val$startTimeMs:J

    sub-long v0, v2, v0

    long-to-float v0, v0

    iget v1, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;->val$durationMs:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;->this$0:Lcom/google/android/systemui/assist/uihints/SwipeHandler;

    iget v4, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;->val$inputSource:I

    const/4 v5, 0x2

    iget v6, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;->val$x1:F

    iget v7, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;->val$x2:F

    invoke-static {v7, v6, v0, v6}, Landroidx/constraintlayout/motion/widget/MotionController$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v6

    iget v7, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;->val$y1:F

    iget v8, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;->val$y2:F

    sub-float/2addr v8, v7

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v0, v4

    move v1, v5

    move v4, v6

    move v5, v7

    move v6, v8

    invoke-static/range {v0 .. v6}, Lcom/google/android/systemui/assist/uihints/SwipeHandler;->injectMotionEvent(IIJFFF)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;->this$0:Lcom/google/android/systemui/assist/uihints/SwipeHandler;

    iget-object v0, v0, Lcom/google/android/systemui/assist/uihints/SwipeHandler;->mUiHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;->val$motionEventDeltaMs:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;->this$0:Lcom/google/android/systemui/assist/uihints/SwipeHandler;

    iget v1, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;->val$inputSource:I

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;->val$x2:F

    iget p0, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler$1;->val$y2:F

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v0, v1

    move v1, v4

    move v4, v5

    move v5, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/systemui/assist/uihints/SwipeHandler;->injectMotionEvent(IIJFFF)V

    :goto_0
    return-void
.end method
