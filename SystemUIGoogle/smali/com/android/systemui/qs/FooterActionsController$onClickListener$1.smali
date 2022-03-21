.class final Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;
.super Ljava/lang/Object;
.source "FooterActionsController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/FooterActionsController;-><init>(Lcom/android/systemui/qs/FooterActionsView;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/UserManager;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/globalactions/GlobalActionsDialogLite;Lcom/android/internal/logging/UiEventLogger;ZLcom/android/systemui/qs/FooterActionsController$ExpansionState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/FooterActionsController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/FooterActionsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-static {v0}, Lcom/android/systemui/qs/FooterActionsController;->access$buttonsVisible(Lcom/android/systemui/qs/FooterActionsController;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-static {v0}, Lcom/android/systemui/qs/FooterActionsController;->access$getFalsingManager$p(Lcom/android/systemui/qs/FooterActionsController;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-static {v0}, Lcom/android/systemui/qs/FooterActionsController;->access$getSettingsButton$p(Lcom/android/systemui/qs/FooterActionsController;)Lcom/android/systemui/statusbar/phone/SettingsButton;

    move-result-object v0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-static {p1}, Lcom/android/systemui/qs/FooterActionsController;->access$getDeviceProvisionedController$p(Lcom/android/systemui/qs/FooterActionsController;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-static {p0}, Lcom/android/systemui/qs/FooterActionsController;->access$getActivityStarter$p(Lcom/android/systemui/qs/FooterActionsController;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1$1;->INSTANCE:Lcom/android/systemui/qs/FooterActionsController$onClickListener$1$1;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-static {p1}, Lcom/android/systemui/qs/FooterActionsController;->access$getMetricsLogger$p(Lcom/android/systemui/qs/FooterActionsController;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/FooterActionsController;->getExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x196

    goto :goto_0

    :cond_2
    const/16 v0, 0x1ea

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-static {p1}, Lcom/android/systemui/qs/FooterActionsController;->access$getSettingsButton$p(Lcom/android/systemui/qs/FooterActionsController;)Lcom/android/systemui/statusbar/phone/SettingsButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/SettingsButton;->isTunerClick()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-static {p1}, Lcom/android/systemui/qs/FooterActionsController;->access$getActivityStarter$p(Lcom/android/systemui/qs/FooterActionsController;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1$2;

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1$2;-><init>(Lcom/android/systemui/qs/FooterActionsController;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-static {p0}, Lcom/android/systemui/qs/FooterActionsController;->access$startSettingsActivity(Lcom/android/systemui/qs/FooterActionsController;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-static {v0}, Lcom/android/systemui/qs/FooterActionsController;->access$getPowerMenuLite$p(Lcom/android/systemui/qs/FooterActionsController;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-static {v0}, Lcom/android/systemui/qs/FooterActionsController;->access$getUiEventLogger$p(Lcom/android/systemui/qs/FooterActionsController;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_OPEN_QS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    invoke-interface {v0, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-static {p0}, Lcom/android/systemui/qs/FooterActionsController;->access$getGlobalActionsDialog$p(Lcom/android/systemui/qs/FooterActionsController;)Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->showOrHideDialog(ZZLandroid/view/View;)V

    :cond_5
    :goto_1
    return-void
.end method
