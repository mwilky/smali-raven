.class public Lcom/android/systemui/biometrics/UdfpsFpmOtherView;
.super Lcom/android/systemui/biometrics/UdfpsAnimationView;
.source "UdfpsFpmOtherView.java"


# instance fields
.field private final mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsFpDrawable;

.field private mFingerprintView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/android/systemui/biometrics/UdfpsFpDrawable;

    invoke-direct {p2, p1}, Lcom/android/systemui/biometrics/UdfpsFpDrawable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsFpmOtherView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsFpDrawable;

    return-void
.end method


# virtual methods
.method getDrawable()Lcom/android/systemui/biometrics/UdfpsDrawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsFpmOtherView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsFpDrawable;

    return-object p0
.end method

.method public bridge synthetic onExpansionChanged(FZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->onExpansionChanged(FZ)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->udfps_fpm_other_fp_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsFpmOtherView;->mFingerprintView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsFpmOtherView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsFpDrawable;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
