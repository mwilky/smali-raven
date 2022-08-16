.class final Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController$splitShadeOverScroller$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ShadeTransitionController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController;-><init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller$Factory;Lcom/android/systemui/statusbar/phone/shade/transition/NoOpOverScroller;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController$splitShadeOverScroller$2;->this$0:Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController$splitShadeOverScroller$2;->this$0:Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController;->splitShadeOverScrollerFactory:Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller$Factory;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController;->qs:Lcom/android/systemui/plugins/qs/QS;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/shade/transition/ShadeTransitionController;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-eqz p0, :cond_1

    move-object v2, p0

    :cond_1
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller$Factory;->create(Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)Lcom/android/systemui/statusbar/phone/shade/transition/SplitShadeOverScroller;

    move-result-object p0

    return-object p0
.end method
