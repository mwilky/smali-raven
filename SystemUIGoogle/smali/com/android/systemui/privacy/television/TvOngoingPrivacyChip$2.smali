.class public final Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TvOngoingPrivacyChip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->animateIconAlphaTo(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mCancelled:Z

.field public final synthetic this$0:Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$2;->this$0:Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$2;->mCancelled:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget-boolean p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$2;->mCancelled:Z

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$2;->this$0:Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;

    iget p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mCollapseRunnable:Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda3;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mUiThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mCollapseRunnable:Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda3;

    const-wide/16 v3, 0xfa0

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    if-ne p1, v1, :cond_2

    iput v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->removeIndicatorView()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    :cond_3
    :goto_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$2;->mCancelled:Z

    return-void
.end method
