.class public final Lcom/android/systemui/statusbar/phone/MultiUserSwitchController_Factory_Factory;
.super Ljava/lang/Object;
.source "MultiUserSwitchController_Factory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$Factory;",
        ">;"
    }
.end annotation


# instance fields
.field public final activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field public final falsingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;"
        }
    .end annotation
.end field

.field public final featureFlagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/flags/FeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field public final userManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/UserManager;",
            ">;"
        }
    .end annotation
.end field

.field public final userSwitchDialogControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/user/UserSwitchDialogController;",
            ">;"
        }
    .end annotation
.end field

.field public final userSwitcherControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/os/UserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/user/UserSwitchDialogController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/flags/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController_Factory_Factory;->userManagerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController_Factory_Factory;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController_Factory_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController_Factory_Factory;->userSwitchDialogControllerProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController_Factory_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController_Factory_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/MultiUserSwitchController_Factory_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/os/UserManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/user/UserSwitchDialogController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/flags/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/MultiUserSwitchController_Factory_Factory;"
        }
    .end annotation

    new-instance v7, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController_Factory_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController_Factory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController_Factory_Factory;->userManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController_Factory_Factory;->userSwitcherControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController_Factory_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/plugins/FalsingManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController_Factory_Factory;->userSwitchDialogControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/qs/user/UserSwitchDialogController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController_Factory_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/flags/FeatureFlags;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController_Factory_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$Factory;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$Factory;-><init>(Landroid/os/UserManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/qs/user/UserSwitchDialogController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/plugins/ActivityStarter;)V

    return-object p0
.end method
