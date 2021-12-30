.class public Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;
.super Ljava/lang/Object;
.source "ScrimState.java"


# instance fields
.field private final mGoneColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mScrimAnimator:Landroid/animation/ValueAnimator;

.field private mScrimAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mShowingColor:I

.field private mState:I


# direct methods
.method public static synthetic $r8$lambda$LJIB-zPdCszkivx-apoA_9kuZ1k(Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;->mState:I

    iput p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;->mGoneColor:I

    iput p2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;->mShowingColor:I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;)V

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;->mScrimAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;->mState:I

    return p1
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public fadeOut()V
    .locals 3

    iget v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;->mState:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;->mState:I

    new-array v0, v1, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;->mGoneColor:I

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;->mScrimAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;->mScrimAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;->mScrimAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;->mScrimAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState$2;

    invoke-direct {v1, p0}, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState$2;-><init>(Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;->mScrimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public isShowing()Z
    .locals 0

    iget p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/ScrimState;->mState:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
