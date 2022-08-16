.class public final synthetic Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/QSFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/QSFragment;

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/QSFragment;

    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object p2, p1, Lcom/android/systemui/qs/QuickStatusBarHeader;->mStatusIconsView:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setScrollY(I)V

    iget-object p1, p1, Lcom/android/systemui/qs/QuickStatusBarHeader;->mDatePrivacyView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setScrollY(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mScrollListener:Lcom/android/systemui/plugins/qs/QS$ScrollListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p3}, Lcom/android/systemui/plugins/qs/QS$ScrollListener;->onQsPanelScrollChanged(I)V

    :cond_0
    return-void
.end method
