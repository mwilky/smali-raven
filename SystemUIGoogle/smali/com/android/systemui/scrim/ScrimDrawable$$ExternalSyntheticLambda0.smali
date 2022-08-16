.class public final synthetic Lcom/android/systemui/scrim/ScrimDrawable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/scrim/ScrimDrawable;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/scrim/ScrimDrawable;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimDrawable$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/scrim/ScrimDrawable;

    iput p2, p0, Lcom/android/systemui/scrim/ScrimDrawable$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/systemui/scrim/ScrimDrawable$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimDrawable$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/scrim/ScrimDrawable;

    iget v1, p0, Lcom/android/systemui/scrim/ScrimDrawable$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/android/systemui/scrim/ScrimDrawable$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v1, p0, p1}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    iput p0, v0, Lcom/android/systemui/scrim/ScrimDrawable;->mMainColor:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
