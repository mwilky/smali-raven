.class public final Lcom/android/systemui/biometrics/UdfpsKeyguardView$2;
.super Ljava/lang/Object;
.source "UdfpsKeyguardView.java"

# interfaces
.implements Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/UdfpsKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsKeyguardView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInflateFinished(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mFullyInflated:Z

    const v1, 0x7f0b0717

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mAodFp:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    const v1, 0x7f0b071d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    const v1, 0x7f0b071c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mBgProtection:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->updatePadding()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->updateColor()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->updateAlpha()I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    iget-object p1, p1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mLockScreenFp:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance p2, Lcom/airbnb/lottie/model/KeyPath;

    const-string v0, "**"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v0, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsKeyguardView$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardView$2;)V

    invoke-virtual {p1, p2, v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    return-void
.end method
