.class public final Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideSysUIMainExecutorFactory;
.super Ljava/lang/Object;
.source "WMShellConcurrencyModule_ProvideSysUIMainExecutorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/wm/shell/common/ShellExecutor;",
        ">;"
    }
.end annotation


# instance fields
.field private final sysuiMainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideSysUIMainExecutorFactory;->sysuiMainHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideSysUIMainExecutorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideSysUIMainExecutorFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideSysUIMainExecutorFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideSysUIMainExecutorFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideSysUIMainExecutor(Landroid/os/Handler;)Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShellConcurrencyModule;->provideSysUIMainExecutor(Landroid/os/Handler;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideSysUIMainExecutorFactory;->sysuiMainHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideSysUIMainExecutorFactory;->provideSysUIMainExecutor(Landroid/os/Handler;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/wmshell/WMShellConcurrencyModule_ProvideSysUIMainExecutorFactory;->get()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p0

    return-object p0
.end method
