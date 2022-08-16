.class public final Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;
.super Ljava/lang/Object;
.source "FooterActionsController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/FooterActionsController;-><init>(Lcom/android/systemui/qs/FooterActionsView;Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$Factory;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/UserManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/qs/QSSecurityFooter;Lcom/android/systemui/qs/QSFgsManagerFooter;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Ljavax/inject/Provider;Lcom/android/internal/logging/UiEventLogger;ZLcom/android/systemui/util/settings/GlobalSettings;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/FooterActionsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FooterActionsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    iget-boolean v1, v0, Lcom/android/systemui/qs/FooterActionsController;->visible:Z

    if-eqz v1, :cond_6

    iget-object v0, v0, Lcom/android/systemui/qs/FooterActionsController;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    iget-object v2, v0, Lcom/android/systemui/qs/FooterActionsController;->settingsButtonContainer:Landroid/view/View;

    if-ne p1, v2, :cond_4

    iget-object p1, v0, Lcom/android/systemui/qs/FooterActionsController;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-object p1, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1$1;->INSTANCE:Lcom/android/systemui/qs/FooterActionsController$onClickListener$1$1;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    iget-object p1, p1, Lcom/android/systemui/qs/FooterActionsController;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x196

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    iget-object p1, p0, Lcom/android/systemui/qs/FooterActionsController;->settingsButtonContainer:Landroid/view/View;

    const/4 v0, 0x0

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping animation as view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not attached to a ViewGroup"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v3, "ActivityLaunchAnimator"

    invoke-static {v3, p1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    const/4 v3, 0x4

    invoke-direct {v0, p1, v2, v3}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;I)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1, v1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lcom/android/systemui/qs/FooterActionsController;->powerMenuLite:Landroid/view/View;

    if-ne p1, v2, :cond_6

    iget-object v0, v0, Lcom/android/systemui/qs/FooterActionsController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_OPEN_QS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    invoke-interface {v0, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController$onClickListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController;->globalActionsDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->showOrHideDialog(Landroid/view/View;ZZ)V

    :cond_6
    :goto_1
    return-void
.end method
