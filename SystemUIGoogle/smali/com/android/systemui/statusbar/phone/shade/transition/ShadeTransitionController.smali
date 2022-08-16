.class public final Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController;
.super Ljava/lang/Object;
.source "ShadeTransitionController.kt"


# instance fields
.field public final context:Landroid/content/Context;

.field public inSplitShade:Z

.field public final noOpOverScroller:Lcom/android/systemui/statusbar/phone/shade/transition/NoOpOverScroller;

.field public notificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field public notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public qs:Lcom/android/systemui/plugins/qs/QS;

.field public final splitShadeOverScroller$delegate:Lkotlin/Lazy;

.field public final splitShadeOverScrollerFactory:Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller$Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller$Factory;Lcom/android/systemui/statusbar/phone/shade/transition/NoOpOverScroller;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController;->splitShadeOverScrollerFactory:Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller$Factory;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController;->noOpOverScroller:Lcom/android/systemui/statusbar/phone/shade/transition/NoOpOverScroller;

    new-instance p4, Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController$splitShadeOverScroller$2;

    invoke-direct {p4, p0}, Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController$splitShadeOverScroller$2;-><init>(Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController;)V

    invoke-static {p4}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController;->splitShadeOverScroller$delegate:Lkotlin/Lazy;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f050044

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController;->inSplitShade:Z

    new-instance p3, Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController$1;-><init>(Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController;)V

    invoke-interface {p1, p3}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    new-instance p1, Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController$2;-><init>(Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController;)V

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->addExpansionListener(Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionListener;)V

    new-instance p1, Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController$3;-><init>(Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController;)V

    iget-object p0, p2, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getShadeOverScroller()Lcom/android/systemui/statusbar/phone/shade/transition/ShadeOverScroller;
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController;->inSplitShade:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController;->qs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController;->notificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController;->splitShadeOverScroller$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController;->noOpOverScroller:Lcom/android/systemui/statusbar/phone/shade/transition/NoOpOverScroller;

    :goto_1
    return-object p0
.end method
