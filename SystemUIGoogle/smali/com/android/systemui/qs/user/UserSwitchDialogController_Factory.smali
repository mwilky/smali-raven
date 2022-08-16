.class public final Lcom/android/systemui/qs/user/UserSwitchDialogController_Factory;
.super Ljava/lang/Object;
.source "UserSwitchDialogController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qs/user/UserSwitchDialogController;",
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

.field public final dialogLaunchAnimatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/animation/DialogLaunchAnimator;",
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

.field public final uiEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;"
        }
    .end annotation
.end field

.field public final userDetailViewAdapterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/UserDetailView_Adapter_Factory;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController_Factory;->userDetailViewAdapterProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController_Factory;->dialogLaunchAnimatorProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    iget-object v1, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController_Factory;->userDetailViewAdapterProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/plugins/FalsingManager;

    iget-object v0, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController_Factory;->dialogLaunchAnimatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/animation/DialogLaunchAnimator;

    iget-object p0, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/internal/logging/UiEventLogger;

    new-instance p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;

    sget-object v6, Lcom/android/systemui/qs/user/UserSwitchDialogController$1;->INSTANCE:Lcom/android/systemui/qs/user/UserSwitchDialogController$1;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/user/UserSwitchDialogController;-><init>(Ljavax/inject/Provider;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/animation/DialogLaunchAnimator;Lcom/android/internal/logging/UiEventLogger;Lkotlin/jvm/functions/Function1;)V

    return-object p0
.end method
