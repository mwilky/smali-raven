.class public final synthetic Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/scrim/ScrimView;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/scrim/ScrimView;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/scrim/ScrimView;

    iput p2, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda3;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/scrim/ScrimView;

    iget p0, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda3;->f$1:F

    iget v1, v0, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    cmpl-float v1, p0, v1

    if-eqz v1, :cond_0

    iput p0, v0, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    iget-object v1, v0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr p0, v2

    float-to-int p0, p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, v0, Lcom/android/systemui/scrim/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/scrim/ScrimView;->mChangeRunnableExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
