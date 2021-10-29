.class public final Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;
.super Ljava/lang/Object;
.source "WMShellBaseModule_ProvideTaskViewFactoryControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/wm/shell/TaskViewFactoryController;",
        ">;"
    }
.end annotation


# instance fields
.field private final mainExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final shellTaskOrganizerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;->shellTaskOrganizerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)",
            "Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideTaskViewFactoryController(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/TaskViewFactoryController;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/wmshell/WMShellBaseModule;->provideTaskViewFactoryController(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/TaskViewFactoryController;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/TaskViewFactoryController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/TaskViewFactoryController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;->shellTaskOrganizerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {v0, p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;->provideTaskViewFactoryController(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/TaskViewFactoryController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;->get()Lcom/android/wm/shell/TaskViewFactoryController;

    move-result-object p0

    return-object p0
.end method
