.class public Lcom/android/systemui/biometrics/UdfpsBpView;
.super Lcom/android/systemui/biometrics/UdfpsAnimationView;
.source "UdfpsBpView.java"


# instance fields
.field private mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsFpDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/systemui/biometrics/UdfpsFpDrawable;

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/systemui/biometrics/UdfpsFpDrawable;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsBpView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsFpDrawable;

    return-void
.end method


# virtual methods
.method getDrawable()Lcom/android/systemui/biometrics/UdfpsDrawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsBpView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsFpDrawable;

    return-object p0
.end method

.method public bridge synthetic onExpansionChanged(FZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->onExpansionChanged(FZ)V

    return-void
.end method
