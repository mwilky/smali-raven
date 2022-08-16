.class public final Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$1;
.super Ljava/lang/Object;
.source "TvOngoingPrivacyChip.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->createAndShowIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$1;->this$0:Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$1;->this$0:Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;

    iget v1, v0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    iput-boolean v2, v0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mViewAndWindowAdded:Z

    iget-object v0, v0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mIndicatorView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$1;->this$0:Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;

    invoke-virtual {v0}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->postAccessibilityAnnouncement()V

    iget-object v0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$1;->this$0:Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->animateIconAlphaTo(F)V

    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip$1;->this$0:Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;

    iget-object p0, p0, Lcom/android/systemui/privacy/television/TvOngoingPrivacyChip;->mChipDrawable:Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    iget-object p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
