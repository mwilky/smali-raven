.class public final Lcom/google/android/systemui/columbus/ColumbusModule_ProvideFullscreenActionsFactory;
.super Ljava/lang/Object;
.source "ColumbusModule_ProvideFullscreenActionsFactory.java"

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
.field private final dismissTimerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/DismissTimer;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsActionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/SettingsAction;",
            ">;"
        }
    .end annotation
.end field

.field private final silenceCallProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/SilenceCall;",
            ">;"
        }
    .end annotation
.end field

.field private final snoozeAlarmProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/SnoozeAlarm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/DismissTimer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/SnoozeAlarm;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/SilenceCall;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/SettingsAction;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideFullscreenActionsFactory;->dismissTimerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideFullscreenActionsFactory;->snoozeAlarmProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideFullscreenActionsFactory;->silenceCallProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideFullscreenActionsFactory;->settingsActionProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/ColumbusModule_ProvideFullscreenActionsFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/DismissTimer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/SnoozeAlarm;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/SilenceCall;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/SettingsAction;",
            ">;)",
            "Lcom/google/android/systemui/columbus/ColumbusModule_ProvideFullscreenActionsFactory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideFullscreenActionsFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideFullscreenActionsFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideFullscreenActions(Lcom/google/android/systemui/columbus/actions/DismissTimer;Lcom/google/android/systemui/columbus/actions/SnoozeAlarm;Lcom/google/android/systemui/columbus/actions/SilenceCall;Lcom/google/android/systemui/columbus/actions/SettingsAction;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/columbus/actions/DismissTimer;",
            "Lcom/google/android/systemui/columbus/actions/SnoozeAlarm;",
            "Lcom/google/android/systemui/columbus/actions/SilenceCall;",
            "Lcom/google/android/systemui/columbus/actions/SettingsAction;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/systemui/columbus/ColumbusModule;->provideFullscreenActions(Lcom/google/android/systemui/columbus/actions/DismissTimer;Lcom/google/android/systemui/columbus/actions/SnoozeAlarm;Lcom/google/android/systemui/columbus/actions/SilenceCall;Lcom/google/android/systemui/columbus/actions/SettingsAction;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideFullscreenActionsFactory;->get()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideFullscreenActionsFactory;->dismissTimerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/actions/DismissTimer;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideFullscreenActionsFactory;->snoozeAlarmProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/actions/SnoozeAlarm;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideFullscreenActionsFactory;->silenceCallProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/columbus/actions/SilenceCall;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideFullscreenActionsFactory;->settingsActionProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/actions/SettingsAction;

    invoke-static {v0, v1, v2, p0}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideFullscreenActionsFactory;->provideFullscreenActions(Lcom/google/android/systemui/columbus/actions/DismissTimer;Lcom/google/android/systemui/columbus/actions/SnoozeAlarm;Lcom/google/android/systemui/columbus/actions/SilenceCall;Lcom/google/android/systemui/columbus/actions/SettingsAction;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
