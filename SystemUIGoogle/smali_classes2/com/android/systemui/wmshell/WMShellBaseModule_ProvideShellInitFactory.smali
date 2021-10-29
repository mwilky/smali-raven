.class public final Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellInitFactory;
.super Ljava/lang/Object;
.source "WMShellBaseModule_ProvideShellInitFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/wm/shell/ShellInit;",
        ">;"
    }
.end annotation


# instance fields
.field private final implProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/ShellInitImpl;",
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
            "Lcom/android/wm/shell/ShellInitImpl;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellInitFactory;->implProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellInitFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/ShellInitImpl;",
            ">;)",
            "Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellInitFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellInitFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellInitFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideShellInit(Lcom/android/wm/shell/ShellInitImpl;)Lcom/android/wm/shell/ShellInit;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule;->provideShellInit(Lcom/android/wm/shell/ShellInitImpl;)Lcom/android/wm/shell/ShellInit;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/ShellInit;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/ShellInit;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellInitFactory;->implProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/ShellInitImpl;

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellInitFactory;->provideShellInit(Lcom/android/wm/shell/ShellInitImpl;)Lcom/android/wm/shell/ShellInit;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideShellInitFactory;->get()Lcom/android/wm/shell/ShellInit;

    move-result-object p0

    return-object p0
.end method
