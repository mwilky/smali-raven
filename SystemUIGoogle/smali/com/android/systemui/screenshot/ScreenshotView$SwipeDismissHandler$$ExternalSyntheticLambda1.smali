.class public final synthetic Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;

    iput p2, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$$ExternalSyntheticLambda1;->f$1:F

    iput p3, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$$ExternalSyntheticLambda1;->f$2:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$$ExternalSyntheticLambda1;->f$1:F

    iget p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler$$ExternalSyntheticLambda1;->f$2:F

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;->$r8$lambda$jpOsFu_aNu85igNBu-CIb5j1MbA(Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;FFLandroid/animation/ValueAnimator;)V

    return-void
.end method
