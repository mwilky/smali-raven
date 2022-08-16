.class public Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;
.super Landroid/widget/FrameLayout;
.source "PoodleOrbView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;


# instance fields
.field public mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field public mBackground:Landroid/view/View;

.field public mBlue:Landroid/view/View;

.field public mFeedbackHeight:I

.field public mGreen:Landroid/view/View;

.field public mRed:Landroid/view/View;

.field public mState:I

.field public mYellow:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mState:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mAnimations:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mState:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mAnimations:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mState:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mAnimations:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mState:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mAnimations:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final createDotAnimator(Landroid/view/View;FLandroid/graphics/Path;)[Landroid/animation/ObjectAnimator;
    .locals 18

    move-object/from16 v0, p1

    const/4 v1, 0x4

    new-array v2, v1, [Landroid/animation/Keyframe;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v3

    const/high16 v6, 0x3f400000    # 0.75f

    invoke-static {v6, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v2, v7

    const v3, 0x3f733333    # 0.95f

    const v8, 0x3e99999a    # 0.3f

    invoke-static {v3, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v2, v9

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v2, v11

    new-array v10, v1, [Landroid/animation/Keyframe;

    invoke-static {v4, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v12

    aput-object v12, v10, v5

    invoke-static {v6, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v12

    aput-object v12, v10, v7

    const/high16 v12, 0x3e800000    # 0.25f

    invoke-static {v3, v12}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    aput-object v3, v10, v9

    invoke-static {v8, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    aput-object v3, v10, v11

    const/high16 v3, 0x3f000000    # 0.5f

    move-object/from16 v8, p3

    invoke-virtual {v8, v3}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object v3

    array-length v8, v3

    div-int/2addr v8, v11

    new-array v13, v8, [Landroid/animation/Keyframe;

    array-length v14, v3

    div-int/2addr v14, v11

    new-array v14, v14, [Landroid/animation/Keyframe;

    move v15, v5

    move/from16 v16, v15

    :goto_0
    array-length v1, v3

    if-ge v15, v1, :cond_0

    add-int/lit8 v1, v15, 0x1

    aget v15, v3, v15

    mul-float/2addr v15, v12

    add-float/2addr v15, v6

    add-int/lit8 v17, v1, 0x1

    aget v1, v3, v1

    invoke-static {v15, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    aput-object v1, v13, v16

    add-int/lit8 v1, v17, 0x1

    aget v12, v3, v17

    invoke-static {v15, v12}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v12

    aput-object v12, v14, v16

    add-int/lit8 v16, v16, 0x1

    move v15, v1

    const/high16 v12, 0x3e800000    # 0.25f

    goto :goto_0

    :cond_0
    new-array v1, v9, [[Landroid/animation/Keyframe;

    aput-object v13, v1, v5

    aput-object v14, v1, v7

    add-int/2addr v8, v9

    new-array v3, v8, [Landroid/animation/Keyframe;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v8

    invoke-static {v4, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    aput-object v8, v3, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v8

    invoke-static {v6, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    aput-object v8, v3, v7

    aget-object v8, v1, v5

    array-length v12, v8

    invoke-static {v8, v5, v3, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v8, v1, v7

    array-length v8, v8

    add-int/2addr v8, v11

    new-array v8, v8, [Landroid/animation/Keyframe;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v12

    invoke-static {v4, v12}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    aput-object v4, v8, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    move/from16 v12, p2

    invoke-static {v12, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    aput-object v4, v8, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    move-object/from16 v12, p0

    iget v12, v12, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mFeedbackHeight:I

    int-to-float v12, v12

    sub-float/2addr v4, v12

    invoke-static {v6, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    aput-object v4, v8, v9

    aget-object v1, v1, v7

    array-length v4, v1

    invoke-static {v1, v5, v8, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, v8, v9

    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, 0x5

    new-array v4, v1, [Landroid/animation/ObjectAnimator;

    new-array v6, v7, [Landroid/animation/PropertyValuesHolder;

    sget-object v12, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-static {v12, v2}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    aput-object v12, v6, v5

    invoke-static {v0, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    new-array v6, v7, [Landroid/animation/PropertyValuesHolder;

    sget-object v12, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {v12, v2}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v6, v5

    invoke-static {v0, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v4, v7

    new-array v2, v7, [Landroid/animation/PropertyValuesHolder;

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-static {v6, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v4, v9

    new-array v2, v7, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v3, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v4, v11

    new-array v2, v7, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-static {v3, v10}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v4, v2

    :goto_1
    if-ge v5, v1, :cond_1

    aget-object v0, v4, v5

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    return-object v4
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mState:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->onProgress(IF)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onFinishInflate()V
    .locals 22

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v1, 0x7f0b024c

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mBackground:Landroid/view/View;

    const v1, 0x7f0b024d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mBlue:Landroid/view/View;

    const v1, 0x7f0b024e

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mGreen:Landroid/view/View;

    const v1, 0x7f0b024f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mRed:Landroid/view/View;

    const v1, 0x7f0b0251

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mYellow:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070617

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mFeedbackHeight:I

    iget-object v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mBackground:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mBackground:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mBlue:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iget v4, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mFeedbackHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mGreen:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iget v4, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mFeedbackHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mRed:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iget v4, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mFeedbackHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mYellow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iget v4, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mFeedbackHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mAnimations:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mBackground:Landroid/view/View;

    const/4 v4, 0x5

    new-array v4, v4, [Landroid/animation/Keyframe;

    invoke-static {v2, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/high16 v5, 0x3ec00000    # 0.375f

    const v7, 0x3f99999a    # 1.2f

    invoke-static {v5, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v4, v9

    const/high16 v8, 0x3f400000    # 0.75f

    invoke-static {v8, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    const/4 v10, 0x2

    aput-object v7, v4, v10

    const v7, 0x3f733333    # 0.95f

    const v11, 0x3e4ccccd    # 0.2f

    invoke-static {v7, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v4, v13

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v12, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v12

    const/4 v14, 0x4

    aput-object v12, v4, v14

    aget-object v12, v4, v9

    new-instance v15, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v15}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v12, v15}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v12, v14, [Landroid/animation/Keyframe;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v14

    invoke-static {v2, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v14

    aput-object v14, v12, v6

    const/high16 v14, 0x41dc0000    # 27.5f

    invoke-virtual {v0, v14}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v15

    invoke-static {v5, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    aput-object v5, v12, v9

    invoke-virtual {v0, v14}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v5

    invoke-static {v8, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    aput-object v5, v12, v10

    const/high16 v5, 0x41ae0000    # 21.75f

    invoke-virtual {v0, v5}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v5

    invoke-static {v7, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    aput-object v5, v12, v13

    new-array v5, v13, [Landroid/animation/ObjectAnimator;

    new-array v7, v9, [Landroid/animation/PropertyValuesHolder;

    sget-object v8, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-static {v8, v4}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v3, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    new-array v7, v9, [Landroid/animation/PropertyValuesHolder;

    sget-object v8, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {v8, v4}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v7, v6

    invoke-static {v3, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v5, v9

    new-array v4, v9, [Landroid/animation/PropertyValuesHolder;

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v7, v12}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v5, v10

    move v3, v6

    :goto_0
    if-ge v3, v13, :cond_0

    aget-object v4, v5, v3

    const-wide/16 v7, 0x3e8

    invoke-virtual {v4, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget-object v3, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mBlue:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iget-object v4, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mBlue:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    iget v5, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mFeedbackHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v3, -0x3dfe0000    # -32.5f

    invoke-virtual {v0, v3}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v4

    const/high16 v10, -0x3e240000    # -27.5f

    invoke-virtual {v0, v10}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v5

    const/high16 v12, 0x41700000    # 15.0f

    invoke-virtual {v0, v12}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v6

    const/high16 v13, -0x3df90000    # -33.75f

    invoke-virtual {v0, v13}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v7

    const/high16 v3, -0x3fe00000    # -2.5f

    invoke-virtual {v0, v3}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v8

    const/high16 v14, -0x3e600000    # -20.0f

    invoke-virtual {v0, v14}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v9

    move-object v3, v1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v3, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mAnimations:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mBlue:Landroid/view/View;

    invoke-virtual {v0, v4, v2, v1}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->createDotAnimator(Landroid/view/View;FLandroid/graphics/Path;)[Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget-object v3, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mRed:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iget-object v4, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mRed:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    iget v5, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mFeedbackHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v3, -0x3e380000    # -25.0f

    invoke-virtual {v0, v3}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v16

    const/high16 v3, -0x3e740000    # -17.5f

    invoke-virtual {v0, v3}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v17

    invoke-virtual {v0, v14}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v18

    invoke-virtual {v0, v10}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v19

    const/high16 v3, 0x40200000    # 2.5f

    invoke-virtual {v0, v3}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v20

    invoke-virtual {v0, v14}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v21

    move-object v15, v1

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v3, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mAnimations:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mRed:Landroid/view/View;

    const v5, 0x3d4ccccd    # 0.05f

    invoke-virtual {v0, v4, v5, v1}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->createDotAnimator(Landroid/view/View;FLandroid/graphics/Path;)[Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget-object v3, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mYellow:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iget-object v4, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mYellow:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    iget v5, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mFeedbackHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v3, 0x41aa0000    # 21.25f

    invoke-virtual {v0, v3}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v16

    invoke-virtual {v0, v13}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v17

    invoke-virtual {v0, v12}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v18

    invoke-virtual {v0, v10}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v19

    invoke-virtual {v0, v2}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v20

    invoke-virtual {v0, v14}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v21

    move-object v15, v1

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v3, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mAnimations:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mYellow:Landroid/view/View;

    const v5, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v4, v5, v1}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->createDotAnimator(Landroid/view/View;FLandroid/graphics/Path;)[Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget-object v3, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mGreen:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iget-object v4, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mGreen:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    iget v5, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mFeedbackHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, v10}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v16

    invoke-virtual {v0, v14}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v17

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-virtual {v0, v3}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v18

    const/high16 v3, -0x3e100000    # -30.0f

    invoke-virtual {v0, v3}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v19

    invoke-virtual {v0, v2}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v20

    invoke-virtual {v0, v14}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v21

    move-object v15, v1

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v2, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mAnimations:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mGreen:Landroid/view/View;

    invoke-virtual {v0, v3, v11, v1}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->createDotAnimator(Landroid/view/View;FLandroid/graphics/Path;)[Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final onProgress(IF)V
    .locals 3

    iget p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/high16 p1, 0x3f400000    # 0.75f

    mul-float/2addr p1, p2

    const/4 v0, 0x0

    add-float/2addr p1, v0

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    goto :goto_0

    :cond_1
    cmpl-float p1, p2, v0

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mState:I

    goto :goto_1

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p2, p1

    if-nez p1, :cond_3

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mState:I

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mState:I

    :goto_1
    return-void
.end method

.method public final onRelease()V
    .locals 2

    iget v0, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mState:I

    :cond_2
    return-void
.end method

.method public final onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mState:I

    return-void
.end method

.method public final px(F)F
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method
