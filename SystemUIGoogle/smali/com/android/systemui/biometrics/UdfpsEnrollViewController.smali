.class public final Lcom/android/systemui/biometrics/UdfpsEnrollViewController;
.super Lcom/android/systemui/biometrics/UdfpsAnimationViewController;
.source "UdfpsEnrollViewController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/biometrics/UdfpsAnimationViewController<",
        "Lcom/android/systemui/biometrics/UdfpsEnrollView;",
        ">;"
    }
.end annotation


# instance fields
.field public final mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

.field public final mEnrollHelperListener:Lcom/android/systemui/biometrics/UdfpsEnrollViewController$1;

.field public final mEnrollProgressBarRadius:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsEnrollView;Lcom/android/systemui/biometrics/UdfpsEnrollHelper;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/dump/DumpManager;F)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;-><init>(Lcom/android/systemui/biometrics/UdfpsAnimationView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/dump/DumpManager;)V

    new-instance p3, Lcom/android/systemui/biometrics/UdfpsEnrollViewController$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollViewController$1;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollViewController;)V

    iput-object p3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController;->mEnrollHelperListener:Lcom/android/systemui/biometrics/UdfpsEnrollViewController$1;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0c0036

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p7, p3

    float-to-int p3, p7

    iput p3, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController;->mEnrollProgressBarRadius:I

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    iget-object p0, p1, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    return-void
.end method


# virtual methods
.method public final doAnnounceForAccessibility(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final getPaddingX()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController;->mEnrollProgressBarRadius:I

    return p0
.end method

.method public final getPaddingY()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController;->mEnrollProgressBarRadius:I

    return p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "UdfpsEnrollViewController"

    return-object p0
.end method

.method public final getTouchTranslation()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->isGuidedEnrollmentStage()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->getNextGuidedEnrollmentPoint()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public final onViewAttached()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->onViewAttached()V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController;->mEnrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    iget v1, v0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mEnrollReason:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController;->mEnrollHelperListener:Lcom/android/systemui/biometrics/UdfpsEnrollViewController$1;

    iput-object p0, v0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mListener:Lcom/android/systemui/biometrics/UdfpsEnrollHelper$Listener;

    if-eqz p0, :cond_1

    iget v1, v0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mTotalSteps:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v0, v0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mRemainingSteps:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/biometrics/UdfpsEnrollViewController$1;->onEnrollmentProgress(II)V

    :cond_1
    return-void
.end method
