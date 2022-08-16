.class public final Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;
.super Lcom/android/systemui/util/ViewController;
.source "StatusBarUserSwitcherController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;",
        ">;",
        "Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherController;"
    }
.end annotation


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final featureController:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherFeatureController;

.field public final featureFlagListener:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl$featureFlagListener$1;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final listener:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl$listener$1;

.field public final tracker:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;

.field public final userSwitcherDialogController:Lcom/android/systemui/qs/user/UserSwitchDialogController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherFeatureController;Lcom/android/systemui/qs/user/UserSwitchDialogController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;->tracker:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;->featureController:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherFeatureController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;->userSwitcherDialogController:Lcom/android/systemui/qs/user/UserSwitchDialogController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    new-instance p1, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl$listener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl$listener$1;-><init>(Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;->listener:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl$listener$1;

    new-instance p1, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl$featureFlagListener$1;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl$featureFlagListener$1;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;->featureFlagListener:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl$featureFlagListener$1;

    return-void
.end method


# virtual methods
.method public final onViewAttached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;->tracker:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;->listener:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl$listener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->addCallback(Lcom/android/systemui/statusbar/phone/userswitcher/CurrentUserChipInfoUpdatedListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;->featureController:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherFeatureController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;->featureFlagListener:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl$featureFlagListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherFeatureController;->addCallback(Lcom/android/systemui/statusbar/phone/userswitcher/OnUserSwitcherPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

    new-instance v1, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl$onViewAttached$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl$onViewAttached$1;-><init>(Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;->updateEnabled()V

    return-void
.end method

.method public final onViewDetached()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;->tracker:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;->listener:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl$listener$1;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->listening:Z

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->userInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->userInfoChangedListener:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker$userInfoChangedListener$1;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;->featureController:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherFeatureController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;->featureFlagListener:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl$featureFlagListener$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherFeatureController;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final updateChip()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;->text:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;->tracker:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->currentUserName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;->avatar:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    move-object v1, v0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;->tracker:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->currentUserAvatar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final updateEnabled()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;->featureController:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherFeatureController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherFeatureController;->flags:Lcom/android/systemui/flags/FeatureFlags;

    sget-object v1, Lcom/android/systemui/flags/Flags;->STATUS_BAR_USER_SWITCHER:Lcom/android/systemui/flags/ResourceBooleanFlag;

    invoke-interface {v0, v1}, Lcom/android/systemui/flags/FeatureFlags;->isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;->tracker:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->userSwitcherEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherControllerImpl;->updateChip()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
