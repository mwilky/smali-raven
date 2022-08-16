.class public final Lcom/android/systemui/biometrics/UdfpsFpmOtherView;
.super Lcom/android/systemui/biometrics/UdfpsAnimationView;
.source "UdfpsFpmOtherView.kt"


# instance fields
.field public final fingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsFpDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/android/systemui/biometrics/UdfpsFpDrawable;

    invoke-direct {p2, p1}, Lcom/android/systemui/biometrics/UdfpsFpDrawable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsFpmOtherView;->fingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsFpDrawable;

    return-void
.end method


# virtual methods
.method public final getDrawable()Lcom/android/systemui/biometrics/UdfpsDrawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsFpmOtherView;->fingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsFpDrawable;

    return-object p0
.end method

.method public final onFinishInflate()V
    .locals 1

    const v0, 0x7f0b071b

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsFpmOtherView;->fingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsFpDrawable;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
