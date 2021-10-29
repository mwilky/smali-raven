.class public final synthetic Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/assist/uihints/NgaUiController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/view/animation/OvershootInterpolator;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/uihints/NgaUiController;ILandroid/view/animation/OvershootInterpolator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/NgaUiController;

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda0;->f$2:Landroid/view/animation/OvershootInterpolator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/uihints/NgaUiController;

    iget v1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda0;->f$2:Landroid/view/animation/OvershootInterpolator;

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->$r8$lambda$KodYXPCspmD4SYgbiG20hGEmrOM(Lcom/google/android/systemui/assist/uihints/NgaUiController;ILandroid/view/animation/OvershootInterpolator;Landroid/animation/ValueAnimator;)V

    return-void
.end method
