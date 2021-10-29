.class public Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;
.super Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;
.source "SquishyNavigationButtons.java"


# instance fields
.field private final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private final mViewController:Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/navigationbar/NavigationModeController;)V
    .locals 0

    invoke-direct {p0, p3, p4}, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/navigationbar/NavigationModeController;)V

    new-instance p3, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;

    invoke-direct {p3, p1}, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;->mViewController:Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    return-void
.end method


# virtual methods
.method protected findFeedbackEffects(Lcom/android/systemui/navigationbar/NavigationBarView;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/navigationbar/NavigationBarView;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;->mViewController:Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;

    invoke-virtual {v0}, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->clearViews()V

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getViews()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;->mViewController:Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->addLeftView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getViews()Ljava/util/ArrayList;

    move-result-object p1

    move v0, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;->mViewController:Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->addRightView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;->mViewController:Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;

    aput-object p0, p1, v1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected isActiveFeedbackEffect(Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected reset()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/systemui/elmyra/feedback/NavigationBarEffect;->reset()V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;->mViewController:Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->clearViews()V

    return-void
.end method

.method protected validateFeedbackEffects(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;",
            ">;)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;->mViewController:Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;

    invoke-virtual {p1}, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/SquishyNavigationButtons;->mViewController:Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/feedback/SquishyViewController;->clearViews()V

    :cond_0
    return p1
.end method
