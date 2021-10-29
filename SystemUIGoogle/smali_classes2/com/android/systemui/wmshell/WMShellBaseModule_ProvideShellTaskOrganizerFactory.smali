.class public final Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellTaskOrganizerFactory;
.super Ljava/lang/Object;
.source "WMShellBaseModule_ProvideShellTaskOrganizerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/wm/shell/ShellTaskOrganizer;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mainExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeCompatUIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;",
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
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->contextProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->sizeCompatUIProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellTaskOrganizerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;",
            ">;)",
            "Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellTaskOrganizerFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellTaskOrganizerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellTaskOrganizerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideShellTaskOrganizer(Lcom/android/wm/shell/common/ShellExecutor;Landroid/content/Context;Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;)Lcom/android/wm/shell/ShellTaskOrganizer;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/wmshell/WMShellBaseModule;->provideShellTaskOrganizer(Lcom/android/wm/shell/common/ShellExecutor;Landroid/content/Context;Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;)Lcom/android/wm/shell/ShellTaskOrganizer;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/ShellTaskOrganizer;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/ShellTaskOrganizer;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->mainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->sizeCompatUIProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->provideShellTaskOrganizer(Lcom/android/wm/shell/common/ShellExecutor;Landroid/content/Context;Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;)Lcom/android/wm/shell/ShellTaskOrganizer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->get()Lcom/android/wm/shell/ShellTaskOrganizer;

    move-result-object p0

    return-object p0
.end method
