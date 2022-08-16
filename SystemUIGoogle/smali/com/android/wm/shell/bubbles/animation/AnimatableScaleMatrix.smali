.class public final Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;
.super Landroid/graphics/Matrix;
.source "AnimatableScaleMatrix.java"


# static fields
.field public static final SCALE_X:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$1;

.field public static final SCALE_Y:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$2;


# instance fields
.field public mPivotX:F

.field public mPivotY:F

.field public mScaleX:F

.field public mScaleY:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$1;

    invoke-direct {v0}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$1;-><init>()V

    sput-object v0, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_X:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$1;

    new-instance v0, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$2;

    invoke-direct {v0}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$2;-><init>()V

    sput-object v0, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_Y:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->mScaleX:F

    iput v0, p0, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->mScaleY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->mPivotX:F

    iput v0, p0, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->mPivotY:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setScale(FFFF)V
    .locals 0

    iput p1, p0, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->mScaleX:F

    iput p2, p0, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->mScaleY:F

    iput p3, p0, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->mPivotX:F

    iput p4, p0, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->mPivotY:F

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    return-void
.end method

.method public final setScaleX(F)V
    .locals 3

    iput p1, p0, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->mScaleX:F

    iget v0, p0, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->mScaleY:F

    iget v1, p0, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->mPivotX:F

    iget v2, p0, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->mPivotY:F

    invoke-super {p0, p1, v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    return-void
.end method

.method public final setScaleY(F)V
    .locals 3

    iput p1, p0, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->mScaleY:F

    iget v0, p0, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->mScaleX:F

    iget v1, p0, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->mPivotX:F

    iget v2, p0, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->mPivotY:F

    invoke-super {p0, v0, p1, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    return-void
.end method
