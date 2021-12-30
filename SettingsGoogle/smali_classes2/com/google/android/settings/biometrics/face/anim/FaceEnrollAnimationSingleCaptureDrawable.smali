.class public Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationSingleCaptureDrawable;
.super Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;
.source "FaceEnrollAnimationSingleCaptureDrawable.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mRotatingArcs:Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;


# direct methods
.method public static synthetic $r8$lambda$36znQTLPPzbtKCdrwuqp1Qy0zwA(Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationSingleCaptureDrawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationSingleCaptureDrawable;->lambda$startFinishing$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;Landroid/widget/ImageView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;-><init>(Landroid/content/Context;Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;Landroid/widget/ImageView;Z)V

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationSingleCaptureDrawable;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;

    invoke-direct {p3, p1, p2}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationSingleCaptureDrawable;->mRotatingArcs:Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;

    return-void
.end method

.method private synthetic lambda$startFinishing$0()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->getListener()Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;->onEnrollAnimationFinished()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->draw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationSingleCaptureDrawable;->mRotatingArcs:Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;

    invoke-virtual {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->onEnrollmentProgressChange(II)V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->vibrate()V

    :cond_0
    return-void
.end method

.method protected onUserEnterGood()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->onUserEnterGood()V

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationSingleCaptureDrawable;->mRotatingArcs:Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;

    invoke-virtual {p0}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->startRotating()V

    return-void
.end method

.method protected onUserLeaveGood(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->onUserLeaveGood(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationSingleCaptureDrawable;->mRotatingArcs:Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;

    invoke-virtual {p0}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->stopRotating()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method protected startFinishing()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->startFinishing()V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationSingleCaptureDrawable;->mRotatingArcs:Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;

    new-instance v1, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationSingleCaptureDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationSingleCaptureDrawable$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationSingleCaptureDrawable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->startFinishing(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected update(JJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationSingleCaptureDrawable;->mRotatingArcs:Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->update(JJ)V

    return-void
.end method
