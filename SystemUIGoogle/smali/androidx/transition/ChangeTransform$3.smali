.class public final Landroidx/transition/ChangeTransform$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeTransform.java"


# instance fields
.field public mIsCanceled:Z

.field public mTempMatrix:Landroid/graphics/Matrix;

.field public final synthetic this$0:Landroidx/transition/ChangeTransform;

.field public final synthetic val$finalEndMatrix:Landroid/graphics/Matrix;

.field public final synthetic val$handleParentChange:Z

.field public final synthetic val$pathAnimatorMatrix:Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

.field public final synthetic val$transforms:Landroidx/transition/ChangeTransform$Transforms;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroidx/transition/ChangeTransform$Transforms;Landroidx/transition/ChangeTransform$PathAnimatorMatrix;)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/ChangeTransform$3;->this$0:Landroidx/transition/ChangeTransform;

    iput-boolean p2, p0, Landroidx/transition/ChangeTransform$3;->val$handleParentChange:Z

    iput-object p3, p0, Landroidx/transition/ChangeTransform$3;->val$finalEndMatrix:Landroid/graphics/Matrix;

    iput-object p4, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    iput-object p5, p0, Landroidx/transition/ChangeTransform$3;->val$transforms:Landroidx/transition/ChangeTransform$Transforms;

    iput-object p6, p0, Landroidx/transition/ChangeTransform$3;->val$pathAnimatorMatrix:Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroidx/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/ChangeTransform$3;->mIsCanceled:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 10

    iget-boolean p1, p0, Landroidx/transition/ChangeTransform$3;->mIsCanceled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/transition/ChangeTransform$3;->val$handleParentChange:Z

    const v1, 0x7f0b06ed

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->this$0:Landroidx/transition/ChangeTransform;

    iget-boolean p1, p1, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$finalEndMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Landroidx/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    iget-object v2, p0, Landroidx/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$transforms:Landroidx/transition/ChangeTransform$Transforms;

    iget-object v1, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    iget v2, p1, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    iget v3, p1, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    iget v4, p1, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    iget v5, p1, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    iget v6, p1, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    iget v7, p1, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    iget v8, p1, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    iget p1, p1, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    sget-object v9, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v1, v4}, Landroidx/core/view/ViewCompat$Api21Impl;->setTranslationZ(Landroid/view/View;F)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    const v1, 0x7f0b04d5

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    sget-object v1, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi29;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$transforms:Landroidx/transition/ChangeTransform$Transforms;

    iget-object p0, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    iget v0, p1, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    iget v1, p1, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    iget v2, p1, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    iget v3, p1, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    iget v4, p1, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    iget v5, p1, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    iget v6, p1, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    iget p1, p1, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    sget-object v7, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat$Api21Impl;->setTranslationZ(Landroid/view/View;F)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {p0, v6}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public final onAnimationPause(Landroid/animation/Animator;)V
    .locals 8

    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$pathAnimatorMatrix:Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    iget-object p1, p1, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Landroidx/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    iget-object v0, p0, Landroidx/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    const v1, 0x7f0b06ed

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$transforms:Landroidx/transition/ChangeTransform$Transforms;

    iget-object p0, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    iget v0, p1, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    iget v1, p1, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    iget v2, p1, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    iget v3, p1, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    iget v4, p1, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    iget v5, p1, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    iget v6, p1, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    iget p1, p1, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    sget-object v7, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat$Api21Impl;->setTranslationZ(Landroid/view/View;F)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {p0, v6}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public final onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    iget-object p0, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    sget-object p1, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setTranslationZ(Landroid/view/View;F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
