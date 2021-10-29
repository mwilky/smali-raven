.class public final Lcom/google/android/systemui/gamedashboard/GameMenuActivity_Factory;
.super Ljava/lang/Object;
.source "GameMenuActivity_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/gamedashboard/GameMenuActivity;",
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

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final entryPointControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/EntryPointController;",
            ">;"
        }
    .end annotation
.end field

.field private final gameModeDndControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/GameModeDndController;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutInflaterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field private final mainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final shortcutBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/ShortcutBarController;",
            ">;"
        }
    .end annotation
.end field

.field private final uiEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/EntryPointController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/ShortcutBarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/GameModeDndController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/LayoutInflater;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity_Factory;->entryPointControllerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity_Factory;->shortcutBarControllerProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity_Factory;->gameModeDndControllerProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity_Factory;->layoutInflaterProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/gamedashboard/GameMenuActivity_Factory;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/EntryPointController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/ShortcutBarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/GameModeDndController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/LayoutInflater;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;",
            ">;)",
            "Lcom/google/android/systemui/gamedashboard/GameMenuActivity_Factory;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/systemui/gamedashboard/GameMenuActivity_Factory;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static newInstance(Landroid/content/Context;Lcom/google/android/systemui/gamedashboard/EntryPointController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Lcom/google/android/systemui/gamedashboard/GameModeDndController;Landroid/view/LayoutInflater;Landroid/os/Handler;Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;)Lcom/google/android/systemui/gamedashboard/GameMenuActivity;
    .locals 10

    new-instance v9, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;-><init>(Landroid/content/Context;Lcom/google/android/systemui/gamedashboard/EntryPointController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Lcom/google/android/systemui/gamedashboard/GameModeDndController;Landroid/view/LayoutInflater;Landroid/os/Handler;Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;)V

    return-object v9
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/gamedashboard/GameMenuActivity;
    .locals 9

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity_Factory;->entryPointControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/systemui/gamedashboard/EntryPointController;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity_Factory;->shortcutBarControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity_Factory;->gameModeDndControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity_Factory;->layoutInflaterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

    invoke-static/range {v1 .. v8}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity_Factory;->newInstance(Landroid/content/Context;Lcom/google/android/systemui/gamedashboard/EntryPointController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Lcom/google/android/systemui/gamedashboard/GameModeDndController;Landroid/view/LayoutInflater;Landroid/os/Handler;Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;)Lcom/google/android/systemui/gamedashboard/GameMenuActivity;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity_Factory;->get()Lcom/google/android/systemui/gamedashboard/GameMenuActivity;

    move-result-object p0

    return-object p0
.end method
