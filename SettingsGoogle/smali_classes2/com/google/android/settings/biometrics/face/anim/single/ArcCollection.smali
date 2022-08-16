.class public Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;
.super Ljava/lang/Object;
.source "ArcCollection.java"


# instance fields
.field private final mArcs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/settings/biometrics/face/anim/single/RotatingArc;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mSpeed:F

.field private mSpeedAnimator:Landroid/animation/ValueAnimator;

.field private mState:I

.field private mSweepAngle:F

.field private mSweepAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic $r8$lambda$6E5kpanC71Z-qqu8LYER5GLXFbQ(Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->lambda$stopRotating$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LXZwltjwx6LFuglXuEoifFZyHls(Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->lambda$startFinishing$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vbw-NeFxtTKycPFWeBPyk091D6U(Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->lambda$startFinishing$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fS7_H2uBl-oS2Y9y7yEeCYmB0Z0(Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->lambda$startRotating$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mmNUTURaeu9sFYB5zzzso4Y6GaQ(Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->lambda$startRotating$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sAmKScsuEoEicB0ONsDpVzCK04g(Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->lambda$stopRotating$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmState(Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mState:I

    iput-object p2, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x4

    new-array v1, p2, [I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0a00c7

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const/4 v2, 0x3

    aput p1, v1, v2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v0, p2, :cond_0

    new-instance v2, Lcom/google/android/settings/biometrics/face/anim/single/RotatingArc;

    invoke-direct {v2, v0, p2, v1}, Lcom/google/android/settings/biometrics/face/anim/single/RotatingArc;-><init>(II[I)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mArcs:Ljava/util/List;

    return-void
.end method

.method private synthetic lambda$startFinishing$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->setSweepAngle(F)V

    return-void
.end method

.method private synthetic lambda$startFinishing$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->setSpeed(F)V

    return-void
.end method

.method private synthetic lambda$startRotating$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->setSweepAngle(F)V

    return-void
.end method

.method private synthetic lambda$startRotating$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->setSpeed(F)V

    return-void
.end method

.method private synthetic lambda$stopRotating$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->setSweepAngle(F)V

    return-void
.end method

.method private synthetic lambda$stopRotating$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->setSpeed(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mArcs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mArcs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/settings/biometrics/face/anim/single/RotatingArc;

    invoke-virtual {v1, p1}, Lcom/google/android/settings/biometrics/face/anim/single/RotatingArc;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 2

    iput p1, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSpeed:F

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mArcs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mArcs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/settings/biometrics/face/anim/single/RotatingArc;

    invoke-virtual {v1, p1}, Lcom/google/android/settings/biometrics/face/anim/single/RotatingArc;->setRotateSpeed(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSweepAngle(F)V
    .locals 2

    iput p1, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSweepAngle:F

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mArcs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mArcs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/settings/biometrics/face/anim/single/RotatingArc;

    invoke-virtual {v1, p1}, Lcom/google/android/settings/biometrics/face/anim/single/RotatingArc;->setSweepAngle(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startFinishing(Ljava/lang/Runnable;)V
    .locals 7

    iget v0, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->stopCurrentAnimation()V

    iput v1, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mState:I

    const/4 v0, 0x2

    new-array v1, v0, [F

    iget v2, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSweepAngle:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSweepAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x320

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSweepAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSweepAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection$2;

    invoke-direct {v2, p0, p1}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection$2;-><init>(Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p1, v0, [F

    iget v0, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSpeed:F

    aput v0, p1, v3

    const/high16 v0, 0x43480000    # 200.0f

    aput v0, p1, v4

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSpeedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSpeedAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSweepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSpeedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mArcs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_1

    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mArcs:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/settings/biometrics/face/anim/single/RotatingArc;

    invoke-virtual {p1, v5, v6}, Lcom/google/android/settings/biometrics/face/anim/single/RotatingArc;->startFinishing(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public startRotating()V
    .locals 7

    iget v0, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->stopCurrentAnimation()V

    iput v1, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mState:I

    new-array v0, v1, [F

    iget v2, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSweepAngle:F

    const/4 v3, 0x0

    aput v2, v0, v3

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v4, 0x1

    aput v2, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSweepAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x320

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSweepAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v1, [F

    iget v1, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSpeed:F

    aput v1, v0, v3

    const/high16 v1, 0x43480000    # 200.0f

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSpeedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSpeedAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSweepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSpeedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mArcs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mArcs:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/settings/biometrics/face/anim/single/RotatingArc;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/settings/biometrics/face/anim/single/RotatingArc;->startRotating(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public stopCurrentAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSweepAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSweepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSpeedAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSpeedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mArcs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mArcs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/settings/biometrics/face/anim/single/RotatingArc;

    invoke-virtual {v1}, Lcom/google/android/settings/biometrics/face/anim/single/RotatingArc;->stopCurrentAnimation()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public stopRotating()V
    .locals 8

    iget v0, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->stopCurrentAnimation()V

    iput v2, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mState:I

    const/4 v0, 0x2

    new-array v2, v0, [F

    iget v3, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSweepAngle:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x0

    aput v3, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSweepAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x44c

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSweepAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;)V

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSweepAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection$1;

    invoke-direct {v7, p0}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection$1;-><init>(Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;)V

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v0, [F

    iget v2, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSpeed:F

    aput v2, v0, v4

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSpeedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSpeedAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mSweepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mArcs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mArcs:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/settings/biometrics/face/anim/single/RotatingArc;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/settings/biometrics/face/anim/single/RotatingArc;->stopRotating(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public update(JJ)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mArcs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/single/ArcCollection;->mArcs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/settings/biometrics/face/anim/single/RotatingArc;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/settings/biometrics/face/anim/single/RotatingArc;->update(JJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
