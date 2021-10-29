.class public final Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusActionsFactory;
.super Ljava/lang/Object;
.source "ColumbusModule_ProvideColumbusActionsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/List<",
        "Lcom/google/android/systemui/columbus/actions/Action;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final fullscreenActionsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;>;"
        }
    .end annotation
.end field

.field private final unpinNotificationsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/UnpinNotifications;",
            ">;"
        }
    .end annotation
.end field

.field private final userSelectedActionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/UserSelectedAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/UnpinNotifications;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/UserSelectedAction;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusActionsFactory;->fullscreenActionsProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusActionsFactory;->unpinNotificationsProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusActionsFactory;->userSelectedActionProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusActionsFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/UnpinNotifications;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/UserSelectedAction;",
            ">;)",
            "Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusActionsFactory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusActionsFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusActionsFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideColumbusActions(Ljava/util/List;Lcom/google/android/systemui/columbus/actions/UnpinNotifications;Lcom/google/android/systemui/columbus/actions/UserSelectedAction;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;",
            "Lcom/google/android/systemui/columbus/actions/UnpinNotifications;",
            "Lcom/google/android/systemui/columbus/actions/UserSelectedAction;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/systemui/columbus/ColumbusModule;->provideColumbusActions(Ljava/util/List;Lcom/google/android/systemui/columbus/actions/UnpinNotifications;Lcom/google/android/systemui/columbus/actions/UserSelectedAction;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusActionsFactory;->get()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusActionsFactory;->fullscreenActionsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusActionsFactory;->unpinNotificationsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusActionsFactory;->userSelectedActionProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/actions/UserSelectedAction;

    invoke-static {v0, v1, p0}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusActionsFactory;->provideColumbusActions(Ljava/util/List;Lcom/google/android/systemui/columbus/actions/UnpinNotifications;Lcom/google/android/systemui/columbus/actions/UserSelectedAction;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
