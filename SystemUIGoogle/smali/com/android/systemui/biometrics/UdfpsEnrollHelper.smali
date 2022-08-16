.class public final Lcom/android/systemui/biometrics/UdfpsEnrollHelper;
.super Ljava/lang/Object;
.source "UdfpsEnrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/UdfpsEnrollHelper$Listener;
    }
.end annotation


# instance fields
.field public final mAccessibilityEnabled:Z

.field public mCenterTouchCount:I

.field public final mContext:Landroid/content/Context;

.field public final mEnrollReason:I

.field public final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public final mGuidedEnrollmentPoints:Ljava/util/ArrayList;

.field public mListener:Lcom/android/systemui/biometrics/UdfpsEnrollHelper$Listener;

.field public mLocationsEnrolled:I

.field public mRemainingSteps:I

.field public mTotalSteps:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager;I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mTotalSteps:I

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mRemainingSteps:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mLocationsEnrolled:I

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mCenterTouchCount:I

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iput p3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mEnrollReason:I

    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mAccessibilityEnabled:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mGuidedEnrollmentPoints:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 p3, 0x5

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p3, v1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "com.android.systemui.biometrics.UdfpsNewCoords"

    const/4 v1, -0x2

    invoke-static {p1, p3, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 p1, 0x0

    const-string p3, "UdfpsEnrollHelper"

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "Using new coordinates"

    invoke-static {p3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Landroid/graphics/PointF;

    const v0, -0x41e66666    # -0.15f

    mul-float/2addr v0, p0

    const v1, -0x407d70a4    # -1.02f

    mul-float/2addr v1, p0

    invoke-direct {p3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Landroid/graphics/PointF;

    const v1, 0x3f828f5c    # 1.02f

    mul-float/2addr v1, p0

    invoke-direct {p3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Landroid/graphics/PointF;

    const v0, 0x3e947ae1    # 0.29f

    mul-float/2addr v0, p0

    mul-float/2addr p1, p0

    invoke-direct {p3, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Landroid/graphics/PointF;

    const v0, 0x400ae148    # 2.17f

    mul-float/2addr v0, p0

    const v1, -0x3fe9999a    # -2.35f

    mul-float/2addr v1, p0

    invoke-direct {p3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Landroid/graphics/PointF;

    const v1, 0x3f88f5c3    # 1.07f

    mul-float/2addr v1, p0

    const v2, -0x3f828f5c    # -3.96f

    mul-float/2addr v2, p0

    invoke-direct {p3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Landroid/graphics/PointF;

    const v2, -0x41428f5c    # -0.37f

    mul-float/2addr v2, p0

    const v3, -0x3f76147b    # -4.31f

    mul-float/2addr v3, p0

    invoke-direct {p3, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Landroid/graphics/PointF;

    const v3, -0x4027ae14    # -1.69f

    mul-float/2addr v3, p0

    const v4, -0x3fad70a4    # -3.29f

    mul-float/2addr v4, p0

    invoke-direct {p3, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Landroid/graphics/PointF;

    const v4, -0x3fe147ae    # -2.48f

    mul-float/2addr v4, p0

    const v5, -0x40628f5c    # -1.23f

    mul-float/2addr v5, p0

    invoke-direct {p3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Landroid/graphics/PointF;

    const v5, 0x3f9d70a4    # 1.23f

    mul-float/2addr v5, p0

    invoke-direct {p3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Landroid/graphics/PointF;

    const v4, 0x40528f5c    # 3.29f

    mul-float/2addr v4, p0

    invoke-direct {p3, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Landroid/graphics/PointF;

    const v3, 0x4089eb85    # 4.31f

    mul-float/2addr v3, p0

    invoke-direct {p3, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Landroid/graphics/PointF;

    const v2, 0x407d70a4    # 3.96f

    mul-float/2addr v2, p0

    invoke-direct {p3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Landroid/graphics/PointF;

    const v1, 0x40166666    # 2.35f

    mul-float/2addr v1, p0

    invoke-direct {p3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p3, Landroid/graphics/PointF;

    const v0, 0x40251eb8    # 2.58f

    mul-float/2addr p0, v0

    invoke-direct {p3, p0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    const-string v0, "Using old coordinates"

    invoke-static {p3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Landroid/graphics/PointF;

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p0

    mul-float/2addr p1, p0

    invoke-direct {p3, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const p3, 0x3f5eb852    # 0.87f

    mul-float/2addr p3, p0

    const v0, -0x3fd33333    # -2.7f

    mul-float/2addr v0, p0

    invoke-direct {p1, p3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const p3, -0x4019999a    # -1.8f

    mul-float/2addr p3, p0

    const v0, -0x405851ec    # -1.31f

    mul-float/2addr v0, p0

    invoke-direct {p1, p3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const v0, 0x3fa7ae14    # 1.31f

    mul-float/2addr v0, p0

    invoke-direct {p1, p3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const p3, 0x3f6147ae    # 0.88f

    mul-float/2addr p3, p0

    const v0, 0x402ccccd    # 2.7f

    mul-float/2addr v0, p0

    invoke-direct {p1, p3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const p3, 0x407c28f6    # 3.94f

    mul-float/2addr p3, p0

    const v0, -0x407851ec    # -1.06f

    mul-float/2addr v0, p0

    invoke-direct {p1, p3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const p3, 0x4039999a    # 2.9f

    mul-float/2addr p3, p0

    const v0, -0x3f7b851f    # -4.14f

    mul-float/2addr v0, p0

    invoke-direct {p1, p3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const p3, -0x40fae148    # -0.52f

    mul-float/2addr p3, p0

    const v0, -0x3f41999a    # -5.95f

    mul-float/2addr v0, p0

    invoke-direct {p1, p3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const p3, -0x3faae148    # -3.33f

    mul-float/2addr p3, p0

    invoke-direct {p1, p3, p3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const p3, -0x3f80a3d7    # -3.99f

    mul-float/2addr p3, p0

    const v0, -0x414ccccd    # -0.35f

    mul-float/2addr v0, p0

    invoke-direct {p1, p3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const p3, -0x3f9851ec    # -3.62f

    mul-float/2addr p3, p0

    const v0, 0x40228f5c    # 2.54f

    mul-float/2addr v0, p0

    invoke-direct {p1, p3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const p3, -0x404147ae    # -1.49f

    mul-float/2addr p3, p0

    const v0, 0x40b23d71    # 5.57f

    mul-float/2addr v0, p0

    invoke-direct {p1, p3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const p3, 0x40128f5c    # 2.29f

    mul-float/2addr p3, p0

    const v0, 0x409d70a4    # 4.92f

    mul-float/2addr v0, p0

    invoke-direct {p1, p3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    const p3, 0x40747ae1    # 3.82f

    mul-float/2addr p3, p0

    const v0, 0x3fe3d70a    # 1.78f

    mul-float/2addr p0, v0

    invoke-direct {p1, p3, p0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public final getNextGuidedEnrollmentPoint()Landroid/graphics/PointF;
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mAccessibilityEnabled:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->isGuidedEnrollmentStage()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    const/high16 v1, 0x3f000000    # 0.5f

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x2

    const-string v3, "com.android.systemui.biometrics.UdfpsEnrollHelper.scale"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    :cond_2
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mLocationsEnrolled:I

    iget v2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mCenterTouchCount:I

    sub-int/2addr v0, v2

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mGuidedEnrollmentPoints:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    iget v2, p0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr p0, v1

    invoke-direct {v0, v2, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_3
    :goto_0
    new-instance p0, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public final getStageThresholdSteps(II)I
    .locals 0

    int-to-float p1, p1

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrollStageThreshold(I)F

    move-result p0

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public final isCenterEnrollmentStage()Z
    .locals 4

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mTotalSteps:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mRemainingSteps:I

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    sub-int v2, v0, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->getStageThresholdSteps(II)I

    move-result p0

    if-ge v2, p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :cond_2
    :goto_0
    return v1
.end method

.method public final isGuidedEnrollmentStage()Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mAccessibilityEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mTotalSteps:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mRemainingSteps:I

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    sub-int v2, v0, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->getStageThresholdSteps(II)I

    move-result v0

    const/4 v3, 0x1

    if-lt v2, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mTotalSteps:I

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->getStageThresholdSteps(II)I

    move-result p0

    if-ge v2, p0, :cond_1

    move v1, v3

    :cond_1
    :goto_0
    return v1
.end method
