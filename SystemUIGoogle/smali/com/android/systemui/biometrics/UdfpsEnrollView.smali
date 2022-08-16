.class public Lcom/android/systemui/biometrics/UdfpsEnrollView;
.super Lcom/android/systemui/biometrics/UdfpsAnimationView;
.source "UdfpsEnrollView.java"


# instance fields
.field public final mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;

.field public final mFingerprintProgressDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;

.field public mFingerprintProgressView:Landroid/widget/ImageView;

.field public mFingerprintView:Landroid/widget/ImageView;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;

    new-instance p2, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;

    invoke-direct {p2, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mFingerprintProgressDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final getDrawable()Lcom/android/systemui/biometrics/UdfpsDrawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;

    return-object p0
.end method

.method public final onFinishInflate()V
    .locals 2

    const v0, 0x7f0b071a

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mFingerprintView:Landroid/widget/ImageView;

    const v0, 0x7f0b0719

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mFingerprintProgressView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mFingerprintView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mFingerprintProgressView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mFingerprintProgressDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
