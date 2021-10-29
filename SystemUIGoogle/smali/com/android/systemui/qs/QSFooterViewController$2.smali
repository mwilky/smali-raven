.class Lcom/android/systemui/qs/QSFooterViewController$2;
.super Ljava/lang/Object;
.source "QSFooterViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSFooterViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFooterViewController;


# direct methods
.method public static synthetic $r8$lambda$7Zf9lVRF01Kwrlpt8GPRxrwZJy4(Lcom/android/systemui/qs/QSFooterViewController$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterViewController$2;->lambda$onClick$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$GPmNFl8_FNRWYbqwmlDfUoarFsM()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/qs/QSFooterViewController$2;->lambda$onClick$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$teUxni73jokNQvBZhqyQddxSO5A(Lcom/android/systemui/qs/QSFooterViewController$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterViewController$2;->lambda$onClick$1()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/qs/QSFooterViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController$2;->this$0:Lcom/android/systemui/qs/QSFooterViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onClick$0()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$onClick$1()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController$2;->this$0:Lcom/android/systemui/qs/QSFooterViewController;

    invoke-static {p0}, Lcom/android/systemui/qs/QSFooterViewController;->access$800(Lcom/android/systemui/qs/QSFooterViewController;)V

    return-void
.end method

.method private synthetic lambda$onClick$2()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController$2;->this$0:Lcom/android/systemui/qs/QSFooterViewController;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFooterViewController;->access$1200(Lcom/android/systemui/qs/QSFooterViewController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController$2;->this$0:Lcom/android/systemui/qs/QSFooterViewController;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFooterViewController;->access$1300(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSFooterViewController$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFooterViewController$2$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSFooterViewController$2;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/TunerService;->showResetRequest(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController$2;->this$0:Lcom/android/systemui/qs/QSFooterViewController;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFooterViewController;->access$1400(Lcom/android/systemui/qs/QSFooterViewController;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->tuner_toast:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController$2;->this$0:Lcom/android/systemui/qs/QSFooterViewController;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFooterViewController;->access$1300(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/tuner/TunerService;->setTunerEnabled(Z)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController$2;->this$0:Lcom/android/systemui/qs/QSFooterViewController;

    invoke-static {p0}, Lcom/android/systemui/qs/QSFooterViewController;->access$800(Lcom/android/systemui/qs/QSFooterViewController;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController$2;->this$0:Lcom/android/systemui/qs/QSFooterViewController;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFooterViewController;->access$200(Lcom/android/systemui/qs/QSFooterViewController;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController$2;->this$0:Lcom/android/systemui/qs/QSFooterViewController;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFooterViewController;->access$300(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController$2;->this$0:Lcom/android/systemui/qs/QSFooterViewController;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFooterViewController;->access$400(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/systemui/statusbar/phone/SettingsButton;

    move-result-object v0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController$2;->this$0:Lcom/android/systemui/qs/QSFooterViewController;

    invoke-static {p1}, Lcom/android/systemui/qs/QSFooterViewController;->access$500(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController$2;->this$0:Lcom/android/systemui/qs/QSFooterViewController;

    invoke-static {p0}, Lcom/android/systemui/qs/QSFooterViewController;->access$600(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/qs/QSFooterViewController$2$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/qs/QSFooterViewController$2$$ExternalSyntheticLambda2;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController$2;->this$0:Lcom/android/systemui/qs/QSFooterViewController;

    invoke-static {p1}, Lcom/android/systemui/qs/QSFooterViewController;->access$700(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController$2;->this$0:Lcom/android/systemui/qs/QSFooterViewController;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFooterViewController;->access$200(Lcom/android/systemui/qs/QSFooterViewController;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x196

    goto :goto_0

    :cond_2
    const/16 v0, 0x1ea

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController$2;->this$0:Lcom/android/systemui/qs/QSFooterViewController;

    invoke-static {p1}, Lcom/android/systemui/qs/QSFooterViewController;->access$400(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/systemui/statusbar/phone/SettingsButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/SettingsButton;->isTunerClick()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController$2;->this$0:Lcom/android/systemui/qs/QSFooterViewController;

    invoke-static {p1}, Lcom/android/systemui/qs/QSFooterViewController;->access$600(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/qs/QSFooterViewController$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFooterViewController$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSFooterViewController$2;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController$2;->this$0:Lcom/android/systemui/qs/QSFooterViewController;

    invoke-static {p0}, Lcom/android/systemui/qs/QSFooterViewController;->access$800(Lcom/android/systemui/qs/QSFooterViewController;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController$2;->this$0:Lcom/android/systemui/qs/QSFooterViewController;

    invoke-static {v0}, Lcom/android/systemui/qs/QSFooterViewController;->access$900(Lcom/android/systemui/qs/QSFooterViewController;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController$2;->this$0:Lcom/android/systemui/qs/QSFooterViewController;

    invoke-static {p1}, Lcom/android/systemui/qs/QSFooterViewController;->access$1000(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_OPEN_QS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController$2;->this$0:Lcom/android/systemui/qs/QSFooterViewController;

    invoke-static {p0}, Lcom/android/systemui/qs/QSFooterViewController;->access$1100(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->showOrHideDialog(ZZ)V

    :cond_5
    :goto_1
    return-void
.end method
