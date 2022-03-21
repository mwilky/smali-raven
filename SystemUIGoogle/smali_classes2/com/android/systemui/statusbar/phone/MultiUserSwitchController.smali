.class public Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;
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
.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mQsDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

.field private mUserListener:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserSwitchDialogController:Lcom/android/systemui/qs/user/UserSwitchDialogController;

.field private final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public static synthetic $r8$lambda$f3Xh0uMgQc3xQVfhVz_IXVOpq7Y(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->lambda$getCurrentUser$0()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nttCzDojT0TmKV70WBM8WlvV3RI(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->lambda$isMultiUserEnabled$1()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitch;Landroid/os/UserManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/qs/QSDetailDisplayer;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/qs/user/UserSwitchDialogController;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance p1, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$1;-><init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mUserManager:Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mQsDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mUserSwitchDialogController:Lcom/android/systemui/qs/user/UserSwitchDialogController;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitch;Landroid/os/UserManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/qs/QSDetailDisplayer;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/qs/user/UserSwitchDialogController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$1;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;-><init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitch;Landroid/os/UserManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/qs/QSDetailDisplayer;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/qs/user/UserSwitchDialogController;Lcom/android/systemui/flags/FeatureFlags;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;)Lcom/android/systemui/flags/FeatureFlags;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;)Lcom/android/systemui/qs/user/UserSwitchDialogController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mUserSwitchDialogController:Lcom/android/systemui/qs/user/UserSwitchDialogController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;)Lcom/android/systemui/qs/QSDetailDisplayer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mQsDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->getCurrentUser()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method private getCurrentUser()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;)V

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

.method private synthetic lambda$getCurrentUser$0()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isMultiUserEnabled$1()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$bool;->qs_show_user_switcher_for_single_user:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/os/UserManager;->isUserSwitcherEnabled(Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private registerListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mUserListener:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$2;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$2;-><init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mUserListener:Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->getCurrentUser()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getUserDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object p0
.end method

.method public isMultiUserEnabled()Z
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method protected onInit()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->registerListener()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->getCurrentUser()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->refreshContentDescription(Ljava/lang/String;)V

    return-void
.end method

.method protected onViewAttached()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
