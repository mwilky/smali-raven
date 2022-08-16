.class public final Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;
.super Lcom/android/systemui/util/ViewController;
.source "MultiUserSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/statusbar/phone/MultiUserSwitch;",
        ">;"
    }
.end annotation


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mOnClickListener:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$1;

.field public mUserListener:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$2;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserSwitchDialogController:Lcom/android/systemui/qs/user/UserSwitchDialogController;

.field public final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitch;Landroid/os/UserManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/qs/user/UserSwitchDialogController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance p1, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$1;-><init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mOnClickListener:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$1;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mUserManager:Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mUserSwitchDialogController:Lcom/android/systemui/qs/user/UserSwitchDialogController;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method


# virtual methods
.method public final getCurrentUser()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/navigationbar/NavigationBarView$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getCurrentUserName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onInit()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mUserListener:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$2;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$2;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$2;-><init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mUserListener:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$2;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->getCurrentUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->getCurrentUser()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription(Ljava/lang/String;)V

    return-void
.end method

.method public final onViewAttached()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mOnClickListener:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$1;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
