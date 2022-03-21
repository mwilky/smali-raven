.class final Lcom/android/systemui/qs/user/UserSwitchDialogController$showDialog$1$1;
.super Ljava/lang/Object;
.source "UserSwitchDialogController.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/user/UserSwitchDialogController;->showDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/user/UserSwitchDialogController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/user/UserSwitchDialogController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController$showDialog$1$1;->this$0:Lcom/android/systemui/qs/user/UserSwitchDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController$showDialog$1$1;->this$0:Lcom/android/systemui/qs/user/UserSwitchDialogController;

    invoke-static {p1}, Lcom/android/systemui/qs/user/UserSwitchDialogController;->access$getFalsingManager$p(Lcom/android/systemui/qs/user/UserSwitchDialogController;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController$showDialog$1$1;->this$0:Lcom/android/systemui/qs/user/UserSwitchDialogController;

    invoke-static {p1}, Lcom/android/systemui/qs/user/UserSwitchDialogController;->access$getDialogLaunchAnimator$p(Lcom/android/systemui/qs/user/UserSwitchDialogController;)Lcom/android/systemui/animation/DialogLaunchAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/animation/DialogLaunchAnimator;->disableAllCurrentDialogsExitAnimations()V

    iget-object p0, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController$showDialog$1$1;->this$0:Lcom/android/systemui/qs/user/UserSwitchDialogController;

    invoke-static {p0}, Lcom/android/systemui/qs/user/UserSwitchDialogController;->access$getActivityStarter$p(Lcom/android/systemui/qs/user/UserSwitchDialogController;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/qs/user/UserSwitchDialogController;->access$getUSER_SETTINGS_INTENT$cp()Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
