.class public final Lcom/google/android/systemui/power/PowerModuleGoogle_ProvideWarningsUiFactory;
.super Ljava/lang/Object;
.source "PowerModuleGoogle_ProvideWarningsUiFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/power/PowerUI$WarningsUI;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private final broadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final uiEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
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
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/power/PowerModuleGoogle_ProvideWarningsUiFactory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/power/PowerModuleGoogle_ProvideWarningsUiFactory;->activityStarterProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/power/PowerModuleGoogle_ProvideWarningsUiFactory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/power/PowerModuleGoogle_ProvideWarningsUiFactory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/power/PowerModuleGoogle_ProvideWarningsUiFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;)",
            "Lcom/google/android/systemui/power/PowerModuleGoogle_ProvideWarningsUiFactory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/power/PowerModuleGoogle_ProvideWarningsUiFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/systemui/power/PowerModuleGoogle_ProvideWarningsUiFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideWarningsUi(Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/internal/logging/UiEventLogger;)Lcom/android/systemui/power/PowerUI$WarningsUI;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/systemui/power/PowerModuleGoogle;->provideWarningsUi(Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/internal/logging/UiEventLogger;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/power/PowerUI$WarningsUI;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/power/PowerUI$WarningsUI;
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/power/PowerModuleGoogle_ProvideWarningsUiFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/systemui/power/PowerModuleGoogle_ProvideWarningsUiFactory;->activityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v2, p0, Lcom/google/android/systemui/power/PowerModuleGoogle_ProvideWarningsUiFactory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/google/android/systemui/power/PowerModuleGoogle_ProvideWarningsUiFactory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/logging/UiEventLogger;

    invoke-static {v0, v1, v2, p0}, Lcom/google/android/systemui/power/PowerModuleGoogle_ProvideWarningsUiFactory;->provideWarningsUi(Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/internal/logging/UiEventLogger;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/power/PowerModuleGoogle_ProvideWarningsUiFactory;->get()Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object p0

    return-object p0
.end method
