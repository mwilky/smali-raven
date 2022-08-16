.class public Landroidx/transition/ChangeTransform;
.super Landroidx/transition/Transition;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ChangeTransform$PathAnimatorMatrix;,
        Landroidx/transition/ChangeTransform$GhostListener;,
        Landroidx/transition/ChangeTransform$Transforms;
    }
.end annotation


# static fields
.field public static final NON_TRANSLATIONS_PROPERTY:Landroidx/transition/ChangeTransform$1;

.field public static final SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

.field public static final TRANSLATIONS_PROPERTY:Landroidx/transition/ChangeTransform$2;

.field public static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field public mReparent:Z

.field public mTempMatrix:Landroid/graphics/Matrix;

.field public mUseOverlay:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "android:changeTransform:matrix"

    const-string v1, "android:changeTransform:transforms"

    const-string v2, "android:changeTransform:parentMatrix"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    new-instance v0, Landroidx/transition/ChangeTransform$1;

    invoke-direct {v0}, Landroidx/transition/ChangeTransform$1;-><init>()V

    sput-object v0, Landroidx/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroidx/transition/ChangeTransform$1;

    new-instance v0, Landroidx/transition/ChangeTransform$2;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1}, Landroidx/transition/ChangeTransform$2;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroidx/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroidx/transition/ChangeTransform$2;

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    sget-object v1, Landroidx/transition/Styleable;->CHANGE_TRANSFORM:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    check-cast p2, Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v1, "reparentWithOverlay"

    invoke-static {p2, v1}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    const/4 v1, 0x0

    const-string/jumbo v2, "reparent"

    invoke-static {p2, v2}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/transition/ChangeTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public final captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/transition/ChangeTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    sget-boolean p0, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-nez p0, :cond_0

    iget-object p0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    iget-object p1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final captureValues(Landroidx/transition/TransitionValues;)V
    .locals 4

    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:changeTransform:parent"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/transition/ChangeTransform$Transforms;

    invoke-direct {v1, v0}, Landroidx/transition/ChangeTransform$Transforms;-><init>(Landroid/view/View;)V

    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    const-string v3, "android:changeTransform:transforms"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    const-string v3, "android:changeTransform:matrix"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    if-eqz p0, :cond_3

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    sget-object v2, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi29;

    invoke-virtual {v1, p0}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0, v2, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    const-string v2, "android:changeTransform:parentMatrix"

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    const v1, 0x7f0b06ed

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "android:changeTransform:intermediateMatrix"

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    const p1, 0x7f0b04d5

    invoke-virtual {v0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "android:changeTransform:intermediateParentMatrix"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    if-eqz v9, :cond_22

    if-eqz v10, :cond_22

    iget-object v0, v9, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    const-string v12, "android:changeTransform:parent"

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_13

    :cond_0
    iget-object v0, v9, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/view/ViewGroup;

    iget-object v0, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-boolean v1, v7, Landroidx/transition/ChangeTransform;->mReparent:Z

    const/4 v15, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v7, v13}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v7, v0}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v13, v15}, Landroidx/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_2
    :goto_0
    if-ne v13, v0, :cond_3

    :goto_1
    move v0, v15

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_4

    move/from16 v16, v15

    goto :goto_3

    :cond_4
    const/16 v16, 0x0

    :goto_3
    iget-object v0, v9, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    const-string v1, "android:changeTransform:intermediateMatrix"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    const-string v1, "android:changeTransform:matrix"

    if-eqz v0, :cond_5

    iget-object v2, v9, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, v9, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    const-string v2, "android:changeTransform:intermediateParentMatrix"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    const-string v6, "android:changeTransform:parentMatrix"

    if-eqz v0, :cond_6

    iget-object v2, v9, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz v16, :cond_8

    iget-object v0, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    iget-object v2, v10, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    const v3, 0x7f0b04d5

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v2, v7, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v0, v9, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    if-nez v0, :cond_7

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v3, v9, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v3, v9, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_8
    iget-object v0, v9, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    iget-object v2, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    if-nez v0, :cond_9

    sget-object v0, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroidx/transition/MatrixUtils$1;

    :cond_9
    if-nez v1, :cond_a

    sget-object v1, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroidx/transition/MatrixUtils$1;

    :cond_a
    move-object v3, v1

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v1, :cond_b

    move-object v11, v6

    move-object/from16 v23, v13

    const/4 v5, 0x0

    const/16 v22, 0x2

    goto/16 :goto_4

    :cond_b
    iget-object v1, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    const-string v11, "android:changeTransform:transforms"

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/transition/ChangeTransform$Transforms;

    iget-object v1, v10, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    sget-object v18, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v1, v4}, Landroidx/core/view/ViewCompat$Api21Impl;->setTranslationZ(Landroid/view/View;F)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setRotation(F)V

    const/16 v4, 0x9

    new-array v5, v4, [F

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->getValues([F)V

    new-array v0, v4, [F

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    new-instance v15, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-direct {v15, v1, v5}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;-><init>(Landroid/view/View;[F)V

    sget-object v14, Landroidx/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroidx/transition/ChangeTransform$1;

    new-instance v2, Landroidx/transition/FloatArrayEvaluator;

    new-array v4, v4, [F

    invoke-direct {v2, v4}, Landroidx/transition/FloatArrayEvaluator;-><init>([F)V

    move-object/from16 v22, v1

    const/4 v4, 0x2

    new-array v1, v4, [[F

    const/16 v21, 0x0

    aput-object v5, v1, v21

    const/16 v20, 0x1

    aput-object v0, v1, v20

    invoke-static {v14, v2, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    iget-object v2, v7, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    aget v14, v5, v4

    const/16 v23, 0x5

    aget v5, v5, v23

    move-object/from16 v24, v6

    aget v6, v0, v4

    aget v0, v0, v23

    invoke-virtual {v2, v14, v5, v6, v0}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    sget-object v2, Landroidx/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroidx/transition/ChangeTransform$2;

    const/4 v5, 0x0

    invoke-static {v2, v5, v0}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v2, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v1, v2, v5

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-static {v15, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v14

    new-instance v6, Landroidx/transition/ChangeTransform$3;

    move-object v0, v6

    move-object/from16 v5, v22

    move-object/from16 v1, p0

    move/from16 v22, v4

    move/from16 v2, v16

    move-object/from16 v23, v13

    const/4 v13, 0x0

    move-object v4, v5

    move-object v5, v11

    move-object v13, v6

    move-object/from16 v11, v24

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Landroidx/transition/ChangeTransform$3;-><init>(Landroidx/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroidx/transition/ChangeTransform$Transforms;Landroidx/transition/ChangeTransform$PathAnimatorMatrix;)V

    invoke-virtual {v14, v13}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v14, v13}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    move-object v5, v14

    :goto_4
    if-eqz v16, :cond_20

    if-eqz v5, :cond_20

    iget-boolean v0, v7, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    if-eqz v0, :cond_20

    iget-object v0, v10, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v1, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    sget-object v1, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi29;

    invoke-virtual {v8, v2}, Landroid/view/View;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    sget v1, Landroidx/transition/GhostViewPort;->$r8$clinit:I

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1f

    sget v1, Landroidx/transition/GhostViewHolder;->$r8$clinit:I

    const v1, 0x7f0b02ae

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/GhostViewHolder;

    const v3, 0x7f0b02ad

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/GhostViewPort;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroidx/transition/GhostViewHolder;

    if-eq v4, v1, :cond_c

    iget v6, v3, Landroidx/transition/GhostViewPort;->mReferences:I

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v11, 0x0

    goto :goto_5

    :cond_c
    move-object v11, v3

    const/4 v6, 0x0

    :goto_5
    if-nez v11, :cond_1c

    new-instance v11, Landroidx/transition/GhostViewPort;

    invoke-direct {v11, v0}, Landroidx/transition/GhostViewPort;-><init>(Landroid/view/View;)V

    iput-object v2, v11, Landroidx/transition/GhostViewPort;->mMatrix:Landroid/graphics/Matrix;

    if-nez v1, :cond_d

    new-instance v1, Landroidx/transition/GhostViewHolder;

    invoke-direct {v1, v8}, Landroidx/transition/GhostViewHolder;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_6

    :cond_d
    iget-boolean v2, v1, Landroidx/transition/GhostViewHolder;->mAttached:Z

    if-eqz v2, :cond_1b

    iget-object v2, v1, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v2, v1, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    :goto_6
    invoke-static {v8, v1}, Landroidx/transition/GhostViewPort;->copySize(Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-static {v8, v11}, Landroidx/transition/GhostViewPort;->copySize(Landroid/view/View;Landroid/view/ViewGroup;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v11, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-static {v2, v3}, Landroidx/transition/GhostViewHolder;->getParents(Ljava/util/ArrayList;Landroid/view/View;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    const/4 v8, 0x1

    sub-int/2addr v4, v8

    const/4 v8, 0x0

    :goto_7
    if-gt v8, v4, :cond_18

    add-int v13, v8, v4

    div-int/lit8 v13, v13, 0x2

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroidx/transition/GhostViewPort;

    iget-object v14, v14, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-static {v3, v14}, Landroidx/transition/GhostViewHolder;->getParents(Ljava/util/ArrayList;Landroid/view/View;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_15

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_15

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    move/from16 v16, v4

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v15, v4, :cond_e

    move-object/from16 p1, v2

    goto/16 :goto_b

    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-static {v4, v15}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v15, 0x1

    :goto_8
    if-ge v15, v4, :cond_13

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v14, v17

    check-cast v14, Landroid/view/View;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p1, v2

    move-object/from16 v2, v17

    check-cast v2, Landroid/view/View;

    if-eq v14, v2, :cond_12

    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    invoke-virtual {v14}, Landroid/view/View;->getZ()F

    move-result v17

    invoke-virtual {v2}, Landroid/view/View;->getZ()F

    move-result v19

    cmpl-float v17, v17, v19

    if-eqz v17, :cond_f

    invoke-virtual {v14}, Landroid/view/View;->getZ()F

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getZ()F

    move-result v2

    cmpl-float v2, v4, v2

    if-lez v2, :cond_14

    goto :goto_b

    :cond_f
    const/4 v7, 0x0

    :goto_9
    if-ge v7, v15, :cond_16

    move/from16 v17, v15

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildDrawingOrder(I)I

    move-result v15

    invoke-virtual {v4, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    if-ne v15, v14, :cond_10

    goto :goto_a

    :cond_10
    if-ne v15, v2, :cond_11

    goto :goto_b

    :cond_11
    add-int/lit8 v7, v7, 0x1

    move/from16 v15, v17

    goto :goto_9

    :cond_12
    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x0

    move-object/from16 v7, p0

    move-object/from16 v2, p1

    goto :goto_8

    :cond_13
    move-object/from16 p1, v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_14

    goto :goto_b

    :cond_14
    :goto_a
    const/4 v2, 0x0

    goto :goto_c

    :cond_15
    move-object/from16 p1, v2

    move/from16 v16, v4

    :cond_16
    :goto_b
    const/4 v2, 0x1

    :goto_c
    if-eqz v2, :cond_17

    add-int/lit8 v13, v13, 0x1

    move v8, v13

    move/from16 v4, v16

    goto :goto_d

    :cond_17
    add-int/lit8 v13, v13, -0x1

    move v4, v13

    :goto_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v7, p0

    move-object/from16 v2, p1

    goto/16 :goto_7

    :cond_18
    if-ltz v8, :cond_1a

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-lt v8, v2, :cond_19

    goto :goto_e

    :cond_19
    invoke-virtual {v1, v11, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_f

    :cond_1a
    :goto_e
    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_f
    iput v6, v11, Landroidx/transition/GhostViewPort;->mReferences:I

    goto :goto_10

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This GhostViewHolder is detached!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iput-object v2, v11, Landroidx/transition/GhostViewPort;->mMatrix:Landroid/graphics/Matrix;

    :goto_10
    iget v1, v11, Landroidx/transition/GhostViewPort;->mReferences:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v11, Landroidx/transition/GhostViewPort;->mReferences:I

    iget-object v1, v9, Landroidx/transition/TransitionValues;->values:Ljava/util/HashMap;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, v9, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    iput-object v1, v11, Landroidx/transition/GhostViewPort;->mStartParent:Landroid/view/ViewGroup;

    iput-object v2, v11, Landroidx/transition/GhostViewPort;->mStartView:Landroid/view/View;

    move-object/from16 v1, p0

    :goto_11
    iget-object v2, v1, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    if-eqz v2, :cond_1d

    move-object v1, v2

    goto :goto_11

    :cond_1d
    new-instance v2, Landroidx/transition/ChangeTransform$GhostListener;

    invoke-direct {v2, v0, v11}, Landroidx/transition/ChangeTransform$GhostListener;-><init>(Landroid/view/View;Landroidx/transition/GhostViewPort;)V

    invoke-virtual {v1, v2}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)V

    sget-boolean v1, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-eqz v1, :cond_21

    iget-object v1, v9, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v2, v10, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-eq v1, v2, :cond_1e

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTransitionAlpha(F)V

    :cond_1e
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    goto :goto_12

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ghosted views must be parented by a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    sget-boolean v0, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-nez v0, :cond_21

    iget-object v0, v9, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v1, v23

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    :cond_21
    :goto_12
    return-object v5

    :cond_22
    :goto_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    return-object p0
.end method
