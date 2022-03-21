.class final Lcom/android/systemui/qs/FooterActionsController$onUserInfoChangedListener$1;
.super Ljava/lang/Object;
.source "FooterActionsController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;


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

    iput-object p1, p0, Lcom/android/systemui/qs/FooterActionsController$onUserInfoChangedListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/FooterActionsController$onUserInfoChangedListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-static {p1}, Lcom/android/systemui/qs/FooterActionsController;->access$getUserManager$p(Lcom/android/systemui/qs/FooterActionsController;)Landroid/os/UserManager;

    move-result-object p1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/os/UserManager;->isGuestUser(I)Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsController$onUserInfoChangedListener$1;->this$0:Lcom/android/systemui/qs/FooterActionsController;

    invoke-static {p0}, Lcom/android/systemui/qs/FooterActionsController;->access$getMView$p(Lcom/android/systemui/qs/FooterActionsController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/FooterActionsView;

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/qs/FooterActionsView;->onUserInfoChanged(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method
