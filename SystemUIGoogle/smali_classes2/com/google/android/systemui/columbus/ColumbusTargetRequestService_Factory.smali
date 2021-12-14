.class public final Lcom/google/android/systemui/columbus/ColumbusTargetRequestService_Factory;
.super Ljava/lang/Object;
.source "ColumbusTargetRequestService_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;",
        ">;"
    }
.end annotation


# instance fields
.field private final columbusSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ColumbusSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final columbusStructuredDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final looperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
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

.field private final sysUIContextProvider:Ljavax/inject/Provider;
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

.field private final userTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/UserTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/UserTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ColumbusSettings;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService_Factory;->sysUIContextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService_Factory;->userTrackerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService_Factory;->columbusSettingsProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService_Factory;->columbusStructuredDataManagerProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService_Factory;->looperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/ColumbusTargetRequestService_Factory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/UserTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ColumbusSettings;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)",
            "Lcom/google/android/systemui/columbus/ColumbusTargetRequestService_Factory;"
        }
    .end annotation

    new-instance v8, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService_Factory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Lcom/google/android/systemui/columbus/ColumbusSettings;Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;Lcom/android/internal/logging/UiEventLogger;Landroid/os/Handler;Landroid/os/Looper;)Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;
    .locals 9

    new-instance v8, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Lcom/google/android/systemui/columbus/ColumbusSettings;Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;Lcom/android/internal/logging/UiEventLogger;Landroid/os/Handler;Landroid/os/Looper;)V

    return-object v8
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;
    .locals 8

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService_Factory;->sysUIContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService_Factory;->userTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/settings/UserTracker;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService_Factory;->columbusSettingsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService_Factory;->columbusStructuredDataManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/internal/logging/UiEventLogger;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService_Factory;->looperProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Landroid/os/Looper;

    invoke-static/range {v1 .. v7}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Lcom/google/android/systemui/columbus/ColumbusSettings;Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;Lcom/android/internal/logging/UiEventLogger;Landroid/os/Handler;Landroid/os/Looper;)Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/ColumbusTargetRequestService_Factory;->get()Lcom/google/android/systemui/columbus/ColumbusTargetRequestService;

    move-result-object p0

    return-object p0
.end method
