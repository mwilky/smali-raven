.class public final Lcom/google/android/systemui/lowlightclock/LowLightDockManager_Factory;
.super Ljava/lang/Object;
.source "LowLightDockManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/lowlightclock/LowLightDockManager;",
        ">;"
    }
.end annotation


# instance fields
.field public final ambientLightModeMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;",
            ">;"
        }
    .end annotation
.end field

.field public final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final mainExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final powerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;"
        }
    .end annotation
.end field

.field public final secureSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            ">;"
        }
    .end annotation
.end field

.field public final uiEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/biometrics/UdfpsShell_Factory;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager_Factory;->ambientLightModeMonitorProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager_Factory;->secureSettingsProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager_Factory;->powerManagerProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager_Factory;->ambientLightModeMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager_Factory;->mainExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager_Factory;->secureSettingsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager_Factory;->powerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/PowerManager;

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/internal/logging/UiEventLogger;

    new-instance p0, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/systemui/lowlightclock/LowLightDockManager;-><init>(Landroid/content/Context;Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/PowerManager;Lcom/android/internal/logging/UiEventLogger;)V

    return-object p0
.end method
