.class public final Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSizeCompatUIControllerFactory;
.super Ljava/lang/Object;
.source "WMShellBaseModule_ProvideSizeCompatUIControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;",
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

.field private final displayControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;"
        }
    .end annotation
.end field

.field private final imeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            ">;"
        }
    .end annotation
.end field

.field private final syncQueueProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
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
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSizeCompatUIControllerFactory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSizeCompatUIControllerFactory;->displayControllerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSizeCompatUIControllerFactory;->imeControllerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSizeCompatUIControllerFactory;->syncQueueProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSizeCompatUIControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            ">;)",
            "Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSizeCompatUIControllerFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSizeCompatUIControllerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSizeCompatUIControllerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideSizeCompatUIController(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/SyncTransactionQueue;)Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/wmshell/WMShellBaseModule;->provideSizeCompatUIController(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/SyncTransactionQueue;)Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSizeCompatUIControllerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSizeCompatUIControllerFactory;->displayControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/common/DisplayController;

    iget-object v2, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSizeCompatUIControllerFactory;->imeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/DisplayImeController;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSizeCompatUIControllerFactory;->syncQueueProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSizeCompatUIControllerFactory;->provideSizeCompatUIController(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/SyncTransactionQueue;)Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/wmshell/WMShellBaseModule_ProvideSizeCompatUIControllerFactory;->get()Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;

    move-result-object p0

    return-object p0
.end method
