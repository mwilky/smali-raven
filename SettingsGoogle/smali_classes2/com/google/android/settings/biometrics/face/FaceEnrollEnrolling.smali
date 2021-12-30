.class public Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;
.super Landroidx/fragment/app/FragmentActivity;
.source "FaceEnrollEnrolling.java"

# interfaces
.implements Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;
    }
.end annotation


# static fields
.field private static final SONIFICATION_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private mAnimationListener:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;

.field private mCenterAcquired:Z

.field private mDebugConsent:Z

.field private mDidCommitPartialEnrollment:Z

.field private mDisabledFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEnrollmentStartTime:J

.field private mErrorText:Landroid/widget/TextView;

.field private mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

.field private mFromSetupWizard:Z

.field private mGazeFailCount:I

.field private mHandler:Landroid/os/Handler;

.field private mHelpController:Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mMultiAngleNotCenteredBeforeZeroZeroRunnable:Ljava/lang/Runnable;

.field private mNoProgressTimeoutRunnable:Ljava/lang/Runnable;

.field private mPreviewFragment:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

.field private mPreviouslyEnrolledFaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation
.end field

.field private mRemaining:I

.field private mRequireAttention:Z

.field private mRequireDiversity:Z

.field private mShouldManagePreview:Z

.field private mShowingAnimationHelp:Z

.field private mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

.field private mSingleFromMulti:Z

.field private mTalkbackEnabled:Z

.field protected mToken:[B

.field protected mUserId:I

.field private mUserManager:Landroid/os/UserManager;

.field private mVibrationEffect:Landroid/os/VibrationEffect;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public static synthetic $r8$lambda$Efgyw2VFAb4K7kA81Mx7wjqK8mg(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->onEnrollmentComplete()V

    return-void
.end method

.method public static synthetic $r8$lambda$H2lYnMUYXVhRo3AEaAd_z_oALMw(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->lambda$showPartialEnrollmentDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hs6k7KFTBXWUDbB5A1ha8LMM_DY(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->lambda$showGazeDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MGQjrKuHyl0MfB7SsXIrDqwb4Qk(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;Landroid/content/DialogInterface;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->lambda$showPartialEnrollmentDialog$5(Landroid/content/DialogInterface;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NNhJ2gq_WPNQHUTI9QQBKg37UoQ(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$kwiYEVXB_ijlBjhX9UOgQhoF_OQ(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->onButtonNegative(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t1g9GJyKukCFDyL-AWkG5zxBEbY(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$x1dk1tctJW6dnfpucPYSNCbgmRQ(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->lambda$showPartialEnrollmentDialog$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->SONIFICATION_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDisabledFeatures:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRemaining:I

    new-instance v0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mMultiAngleNotCenteredBeforeZeroZeroRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mNoProgressTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$1;

    invoke-direct {v0, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$1;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mAnimationListener:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mShowingAnimationHelp:Z

    return p0
.end method

.method static synthetic access$002(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mShowingAnimationHelp:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)Lcom/google/android/setupcompat/template/FooterBarMixin;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireDiversity:Z

    return p0
.end method

.method static synthetic access$600(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHelpController:Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->finishFromDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private findNewlyEnrolledFace()Landroid/hardware/face/Face;
    .locals 6

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviouslyEnrolledFaces:Ljava/util/List;

    const-string v1, "FaceEnrollEnrolling"

    if-nez v0, :cond_0

    const-string v0, "Previously enrolled faces not set!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-class v0, Landroid/hardware/face/FaceManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    iget v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v3, v2

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/face/Face;

    iget-object v5, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviouslyEnrolledFaces:Ljava/util/List;

    if-eqz v5, :cond_3

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_3
    if-nez v3, :cond_4

    move-object v3, v4

    goto :goto_0

    :cond_4
    const-string p0, "Found more than one newly enrolled face."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_5
    if-nez v3, :cond_6

    const-string p0, "No newly enrolled face found."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v3

    :cond_7
    :goto_1
    const-string p0, "Failed to find newly enrolled face. No faces enrolled."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private finishFromDialog(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getLayout()Lcom/google/android/setupdesign/GlifLayout;
    .locals 1

    const v0, 0x7f0d04e2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/GlifLayout;

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHelpController:Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;

    const v1, 0x7f0408ee

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;->access$700(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    iget v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRemaining:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->cancelEnrollment()Z

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->logEnrollmentEnded(IZ)V

    :cond_1
    const v0, 0x7f041103

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->showErrorDialog(Ljava/lang/CharSequence;I)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$showGazeDialog$2(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 p1, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    move p2, p1

    :goto_0
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDisabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDisabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move p2, v1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    move p2, p1

    :goto_1
    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDisabledFeatures:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDisabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array v1, p2, [I

    move p2, p1

    :goto_2
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDisabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDisabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    iget-boolean v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSingleFromMulti:Z

    iget-boolean v3, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mTalkbackEnabled:Z

    iget-boolean v4, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mShouldManagePreview:Z

    iget-boolean v5, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDebugConsent:Z

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->init([IZZZZ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mEnrollmentStartTime:J

    iput p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mGazeFailCount:I

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-virtual {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->startEnrollment()V

    return-void
.end method

.method private synthetic lambda$showPartialEnrollmentDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->onEnrollmentComplete()V

    return-void
.end method

.method private synthetic lambda$showPartialEnrollmentDialog$4(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->restartEnrollmentFromDialog(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private synthetic lambda$showPartialEnrollmentDialog$5(Landroid/content/DialogInterface;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->onEnrollmentComplete()V

    return-void
.end method

.method private onButtonNegative(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private onEnrollmentComplete()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHelpController:Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;

    invoke-virtual {v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;->clearHelp()V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mUserId:I

    const-string v3, "face_unlock_keyguard_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireDiversity:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method private restartEnrollmentFromDialog(Landroid/content/DialogInterface;)V
    .locals 4

    const-class v0, Landroid/hardware/face/FaceManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    const-string v1, "FaceEnrollEnrolling"

    if-nez v0, :cond_0

    const-string p0, "Unable to remove face. Face manager was null!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->findNewlyEnrolledFace()Landroid/hardware/face/Face;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "Unable to remove face. No newly enrolled face found."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mUserId:I

    new-instance v3, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$2;

    invoke-direct {v3, p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$2;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;Landroid/content/DialogInterface;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/face/FaceManager;->remove(Landroid/hardware/face/Face;ILandroid/hardware/face/FaceManager$RemovalCallback;)V

    return-void
.end method

.method private setHeaderText(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    if-eq v0, p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;I)V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireDiversity:Z

    iget-boolean v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mFromSetupWizard:Z

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/settings/biometrics/face/FaceErrorDialog;->newInstance(Ljava/lang/CharSequence;IZZ)Lcom/google/android/settings/biometrics/face/FaceErrorDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/google/android/settings/biometrics/face/FaceErrorDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Can\'t show error after onSaveInstanceState, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceEnrollEnrolling"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showGazeDialog()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mVibrationEffect:Landroid/os/VibrationEffect;

    sget-object v2, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->SONIFICATION_AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-virtual {v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->cancelEnrollment()Z

    invoke-static {}, Lcom/google/android/settings/biometrics/face/FaceGazeDialog;->newInstance()Lcom/google/android/settings/biometrics/face/FaceGazeDialog;

    move-result-object v0

    new-instance v1, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)V

    invoke-virtual {v0, v1}, Lcom/google/android/settings/biometrics/face/FaceGazeDialog;->setButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v1, Lcom/google/android/settings/biometrics/face/FaceGazeDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showPartialEnrollmentDialog()V
    .locals 3

    invoke-static {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory;->newBuilder(Landroid/content/Context;)Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;

    move-result-object v0

    const v1, 0x7f04112b

    invoke-virtual {v0, v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->setTitle(I)Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;

    move-result-object v0

    const v1, 0x7f041129

    invoke-virtual {v0, v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->setMessage(I)Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)V

    const v2, 0x7f0410f5

    invoke-virtual {v0, v2, v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)V

    const v2, 0x7f04112a

    invoke-virtual {v0, v2, v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)V

    invoke-virtual {v0, v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->setOnBackKeyListener(Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$OnBackKeyListener;)Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollDialogFactory$DialogBuilder;->build()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startEnrollment()V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mEnrollmentStartTime:J

    const-class v0, Landroid/hardware/face/FaceManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    iget v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviouslyEnrolledFaces:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "tag_preview"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviewFragment:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-direct {v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviewFragment:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    iget-object v3, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mAnimationListener:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;

    invoke-virtual {v0, v3}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->setAnimationListener(Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;)V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviewFragment:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    iget-boolean v3, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mFromSetupWizard:Z

    invoke-virtual {v0, v3}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->setFromSetupWizard(Z)V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviewFragment:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    iget-boolean v3, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mShouldManagePreview:Z

    invoke-virtual {v0, v3}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->setShouldManagePreview(Z)V

    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireDiversity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviewFragment:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->setAnimationDrawableMode(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviewFragment:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-virtual {v0, v2}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->setAnimationDrawableMode(Z)V

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviewFragment:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-virtual {v0, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mAnimationListener:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;

    invoke-virtual {v0, v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->setAnimationListener(Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;)V

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "tag_sidecar"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDisabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [I

    :goto_2
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDisabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDisabledFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    new-instance v3, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-direct {v3}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;-><init>()V

    iput-object v3, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    iget-boolean v5, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSingleFromMulti:Z

    iget-boolean v6, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mTalkbackEnabled:Z

    iget-boolean v7, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mShouldManagePreview:Z

    iget-boolean v8, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDebugConsent:Z

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->init([IZZZZ)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_3
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-virtual {v0, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->setListener(Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$Listener;)V

    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mShouldManagePreview:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviewFragment:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->setPreviewSurfaceProvider(Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$PreviewSurfaceProvider;)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 p3, 0x2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-eq p2, p3, :cond_0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_2

    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    if-ne p1, p3, :cond_2

    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2

    const v0, 0x7f1301cd

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->setListener(Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$Listener;)V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-virtual {v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->cancelEnrollment()Z

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    iput-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-static {}, Lcom/google/android/setupdesign/util/ThemeResolver;->getDefault()Lcom/google/android/setupdesign/util/ThemeResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/setupdesign/util/ThemeResolver;->applyTheme(Landroid/app/Activity;)V

    const v0, 0x7f0600e5

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    const v0, 0x7f0d051f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/settings/biometrics/face/SquareFrameLayout;

    const v1, 0x7f0d02d0

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Lcom/google/android/settings/biometrics/face/SquareFrameLayout;->setOuterRegion(II)V

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "debug_consent"

    const-string v1, "from_multi_timeout"

    const-string v2, "accessibility_vision"

    const-string v3, "accessibility_diversity"

    const-string v4, "hw_auth_token"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mToken:[B

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const-string v7, "user_id"

    invoke-virtual {p1, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mUserId:I

    const-string v4, "is_suw"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mFromSetupWizard:Z

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireDiversity:Z

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireAttention:Z

    invoke-virtual {p1, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSingleFromMulti:Z

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDebugConsent:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mToken:[B

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const-string v7, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mUserId:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mFromSetupWizard:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireDiversity:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireAttention:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSingleFromMulti:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDebugConsent:Z

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f09000f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mShouldManagePreview:Z

    const-class p1, Landroid/os/Vibrator;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mVibrator:Landroid/os/Vibrator;

    invoke-static {v5}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mVibrationEffect:Landroid/os/VibrationEffect;

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v6}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setRemoveFooterBarWhenEmpty(Z)V

    iget-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mFromSetupWizard:Z

    const v0, 0x7f13021b

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v2, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v2, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0408f1

    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)V

    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v2, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v2, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0408f2

    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)V

    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    :goto_1
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mUserManager:Landroid/os/UserManager;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHandler:Landroid/os/Handler;

    const p1, 0x7f0d020e

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    const p1, 0x10c000e

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance p1, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$1;)V

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHelpController:Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;

    iput-boolean v6, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mTalkbackEnabled:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    move v6, v5

    :cond_2
    iput-boolean v6, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mTalkbackEnabled:Z

    :cond_3
    iget-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireDiversity:Z

    if-nez p1, :cond_4

    const p1, 0x7f0408fb

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->setHeaderText(I)V

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const v0, 0x7f0408ee

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(I)V

    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDisabledFeatures:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const p1, 0x7f0408fa

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->setHeaderText(I)V

    :goto_2
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDisabledFeatures:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireDiversity:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mMultiAngleNotCenteredBeforeZeroZeroRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mNoProgressTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/32 v1, 0x80e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->startEnrollment()V

    return-void
.end method

.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    invoke-virtual {v0, v3, v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->logEnrollmentEnded(IZ)V

    if-ne p1, v2, :cond_1

    const v0, 0x7f041103

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    :cond_1
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    :goto_1
    move-object v0, p2

    goto :goto_2

    :cond_3
    const v0, 0x7f041102

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviewFragment:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->onEnrollmentError(ILjava/lang/CharSequence;)V

    const/4 p2, 0x5

    if-eq p1, p2, :cond_4

    invoke-direct {p0, v0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->showErrorDialog(Ljava/lang/CharSequence;I)V

    :cond_4
    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 5

    const/4 v0, 0x1

    const/16 v1, 0x474

    if-ne p1, v1, :cond_0

    iput-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDidCommitPartialEnrollment:Z

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mTalkbackEnabled:Z

    const v2, 0x7f0408ee

    const v3, 0x7f0408fe

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireDiversity:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xb

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_0
    const p2, 0x7f040904

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :cond_2
    :pswitch_2
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :cond_3
    :goto_0
    packed-switch p1, :pswitch_data_2

    :pswitch_3
    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :pswitch_5
    const p2, 0x7f040900

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :pswitch_6
    const p2, 0x7f040902

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :pswitch_7
    const p2, 0x7f040901

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :pswitch_8
    const p2, 0x7f0408ff

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :pswitch_a
    const p2, 0x7f0408fd

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mCenterAcquired:Z

    if-nez v1, :cond_4

    const/16 v1, 0xa

    if-ne p1, v1, :cond_4

    iget-object v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-virtual {v2}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->isEnrolling()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mGazeFailCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mGazeFailCount:I

    if-lt v2, v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mEnrollmentStartTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->showGazeDialog()V

    :cond_4
    iget-boolean v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireDiversity:Z

    if-nez v1, :cond_6

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHelpController:Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;->debounceAndMaybeShowHelp(ILjava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHelpController:Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;

    invoke-virtual {v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;->clearHelpIfOverAttenuateThreshold()V

    goto :goto_2

    :cond_6
    invoke-static {p1}, Lcom/google/android/settings/biometrics/face/FaceUtils;->isOneOfCenterBuckets(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mCenterAcquired:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mMultiAngleNotCenteredBeforeZeroZeroRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHelpController:Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;

    invoke-virtual {v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;->clearHelp()V

    iput-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mCenterAcquired:Z

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_8

    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mCenterAcquired:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHelpController:Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;->debounceAndMaybeShowHelp(ILjava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    if-eqz p1, :cond_9

    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mCenterAcquired:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHelpController:Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;->debounceAndMaybeShowHelp(ILjava/lang/CharSequence;)V

    goto :goto_2

    :cond_9
    if-nez p1, :cond_a

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHelpController:Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;

    invoke-virtual {v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$HelpController;->clearHelpIfOverAttenuateThreshold()V

    :cond_a
    :goto_2
    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviewFragment:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x466
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Steps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Remaining: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceEnrollEnrolling"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRemaining:I

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mPreviewFragment:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->onEnrollmentProgressChange(II)V

    if-nez p2, :cond_1

    iget-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDidCommitPartialEnrollment:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->logEnrollmentEnded(IZ)V

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->showPartialEnrollmentDialog()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-virtual {p1, p2, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->logEnrollmentEnded(IZ)V

    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mToken:[B

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mUserId:I

    const-string v1, "user_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mFromSetupWizard:Z

    const-string v1, "is_suw"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireAttention:Z

    const-string v1, "accessibility_vision"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRequireDiversity:Z

    const-string v1, "accessibility_diversity"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSingleFromMulti:Z

    const-string v1, "from_multi_timeout"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mDebugConsent:Z

    const-string v0, "debug_consent"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStop()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->setListener(Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$Listener;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mRemaining:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;->cancelEnrollment()Z

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    iput-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mSidecar:Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar;

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollEnrolling;->mFromSetupWizard:Z

    if-nez v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void
.end method
