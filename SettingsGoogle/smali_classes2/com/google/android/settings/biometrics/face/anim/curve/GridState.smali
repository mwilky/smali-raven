.class public Lcom/google/android/settings/biometrics/face/anim/curve/GridState;
.super Ljava/lang/Object;
.source "GridState.java"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mEdgePaint:Landroid/graphics/Paint;

.field private final mHandler:Landroid/os/Handler;

.field private mState:I


# direct methods
.method public static synthetic $r8$lambda$0hci1HDsH84kLMSChi04R4eDpjw(Lcom/google/android/settings/biometrics/face/anim/curve/GridState;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mHandler:Landroid/os/Handler;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mEdgePaint:Landroid/graphics/Paint;

    const v0, 0x7f0a00bc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, 0x40400000    # 3.0f

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iput p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mState:I

    new-instance p1, Lcom/google/android/settings/biometrics/face/anim/curve/GridState$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/android/settings/biometrics/face/anim/curve/GridState$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/biometrics/face/anim/curve/GridState;)V

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/settings/biometrics/face/anim/curve/GridState;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/settings/biometrics/face/anim/curve/GridState;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v3, v1

    iget-object v4, v0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float v4, v3, v4

    iget-object v6, v0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mEdgePaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move-object/from16 v14, p1

    invoke-virtual {v14, v7, v7, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const v6, 0x3ea3d70a    # 0.32f

    mul-float/2addr v4, v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f47ae14    # 0.78f

    mul-float/2addr v6, v7

    new-instance v9, Landroid/graphics/RectF;

    neg-float v7, v4

    div-float/2addr v7, v5

    neg-int v8, v2

    int-to-float v15, v8

    div-float/2addr v4, v5

    int-to-float v2, v2

    invoke-direct {v9, v7, v15, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v13, v0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mEdgePaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    const/high16 v11, 0x43b40000    # 360.0f

    const/4 v12, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    new-instance v9, Landroid/graphics/RectF;

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v9, v1, v7, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v13, v0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mEdgePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    new-instance v9, Landroid/graphics/RectF;

    neg-float v4, v6

    div-float/2addr v4, v5

    div-float/2addr v6, v5

    invoke-direct {v9, v4, v15, v6, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v13, v0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mEdgePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v1, v4, v3, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v13, v0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mEdgePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public fadeIn()V
    .locals 4

    iget v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mState:I

    iget-object v2, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    new-array v0, v0, [I

    const/4 v3, 0x0

    aput v2, v0, v3

    const/16 v2, 0x40

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/settings/biometrics/face/anim/curve/GridState$1;

    invoke-direct {v1, p0}, Lcom/google/android/settings/biometrics/face/anim/curve/GridState$1;-><init>(Lcom/google/android/settings/biometrics/face/anim/curve/GridState;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public fadeOut(Ljava/lang/Runnable;)V
    .locals 3

    iget v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mState:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mState:I

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    new-array v0, v0, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/settings/biometrics/face/anim/curve/GridState$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/settings/biometrics/face/anim/curve/GridState$2;-><init>(Lcom/google/android/settings/biometrics/face/anim/curve/GridState;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/anim/curve/GridState;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
