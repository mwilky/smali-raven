.class public final Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$1;
.super Ljava/lang/Object;
.source "MultiUserSwitchController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    sget-object v1, Lcom/android/systemui/flags/Flags;->FULL_SCREEN_USER_SWITCHER:Lcom/android/systemui/flags/ResourceBooleanFlag;

    invoke-interface {v0, v1}, Lcom/android/systemui/flags/FeatureFlags;->isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/user/UserSwitcherActivity;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x14000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v3, 0x1

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->fromView(Landroid/view/View;Ljava/lang/Integer;)Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    move-result-object v4

    const/4 v5, 0x1

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLandroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mUserSwitchDialogController:Lcom/android/systemui/qs/user/UserSwitchDialogController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/user/UserSwitchDialogController;->showDialog(Landroid/view/View;)V

    :goto_0
    return-void
.end method
