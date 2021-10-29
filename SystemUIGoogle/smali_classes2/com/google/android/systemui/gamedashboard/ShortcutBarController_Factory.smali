.class public final Lcom/google/android/systemui/gamedashboard/ShortcutBarController_Factory;
.super Ljava/lang/Object;
.source "ShortcutBarController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/gamedashboard/ShortcutBarController;",
        ">;"
    }
.end annotation


# instance fields
.field private final configurationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
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

.field private final fpsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/FpsController;",
            ">;"
        }
    .end annotation
.end field

.field private final screenRecordControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/ScreenRecordController;",
            ">;"
        }
    .end annotation
.end field

.field private final screenshotControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelper;",
            ">;>;"
        }
    .end annotation
.end field

.field private final screenshotHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final toastProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/ToastController;",
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

.field private final windowManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/WindowManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/WindowManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/FpsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/ScreenRecordController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelper;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/ToastController;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController_Factory;->windowManagerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController_Factory;->fpsControllerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController_Factory;->screenshotHandlerProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController_Factory;->screenRecordControllerProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController_Factory;->screenshotControllerProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    iput-object p9, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController_Factory;->toastProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/gamedashboard/ShortcutBarController_Factory;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/WindowManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/FpsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/ScreenRecordController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelper;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/ToastController;",
            ">;)",
            "Lcom/google/android/systemui/gamedashboard/ShortcutBarController_Factory;"
        }
    .end annotation

    new-instance v10, Lcom/google/android/systemui/gamedashboard/ShortcutBarController_Factory;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public static newInstance(Landroid/content/Context;Landroid/view/WindowManager;Lcom/google/android/systemui/gamedashboard/FpsController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/os/Handler;Lcom/google/android/systemui/gamedashboard/ScreenRecordController;Ljava/util/Optional;Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;Lcom/google/android/systemui/gamedashboard/ToastController;)Lcom/google/android/systemui/gamedashboard/ShortcutBarController;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/WindowManager;",
            "Lcom/google/android/systemui/gamedashboard/FpsController;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Landroid/os/Handler;",
            "Lcom/google/android/systemui/gamedashboard/ScreenRecordController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelper;",
            ">;",
            "Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;",
            "Lcom/google/android/systemui/gamedashboard/ToastController;",
            ")",
            "Lcom/google/android/systemui/gamedashboard/ShortcutBarController;"
        }
    .end annotation

    new-instance v10, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/google/android/systemui/gamedashboard/FpsController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/os/Handler;Lcom/google/android/systemui/gamedashboard/ScreenRecordController;Ljava/util/Optional;Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;Lcom/google/android/systemui/gamedashboard/ToastController;)V

    return-object v10
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/gamedashboard/ShortcutBarController;
    .locals 10

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController_Factory;->windowManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController_Factory;->fpsControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/systemui/gamedashboard/FpsController;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController_Factory;->screenshotHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController_Factory;->screenRecordControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController_Factory;->screenshotControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/Optional;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController_Factory;->toastProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Lcom/google/android/systemui/gamedashboard/ToastController;

    invoke-static/range {v1 .. v9}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController_Factory;->newInstance(Landroid/content/Context;Landroid/view/WindowManager;Lcom/google/android/systemui/gamedashboard/FpsController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/os/Handler;Lcom/google/android/systemui/gamedashboard/ScreenRecordController;Ljava/util/Optional;Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;Lcom/google/android/systemui/gamedashboard/ToastController;)Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController_Factory;->get()Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    move-result-object p0

    return-object p0
.end method
