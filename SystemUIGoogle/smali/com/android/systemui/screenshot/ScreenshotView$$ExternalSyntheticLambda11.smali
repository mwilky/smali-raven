.class public final synthetic Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/ScreenshotView;

.field public final synthetic f$1:F

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/ScreenshotView;FLjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda11;->f$0:Lcom/android/systemui/screenshot/ScreenshotView;

    iput p2, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda11;->f$1:F

    iput-object p3, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda11;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda11;->f$0:Lcom/android/systemui/screenshot/ScreenshotView;

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda11;->f$1:F

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView$$ExternalSyntheticLambda11;->f$2:Ljava/util/ArrayList;

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/screenshot/ScreenshotView;->$r8$lambda$wdPMjJh6dTOfKzPpbJ7zqqWPpK0(Lcom/android/systemui/screenshot/ScreenshotView;FLjava/util/ArrayList;Landroid/animation/ValueAnimator;)V

    return-void
.end method
