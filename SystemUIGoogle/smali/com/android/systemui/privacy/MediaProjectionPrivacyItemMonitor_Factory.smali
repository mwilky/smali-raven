.class public final Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor_Factory;
.super Ljava/lang/Object;
.source "MediaProjectionPrivacyItemMonitor_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final bgHandlerProvider:Ljavax/inject/Provider;

.field public final loggerProvider:Ljavax/inject/Provider;

.field public final mediaProjectionManagerProvider:Ljavax/inject/Provider;

.field public final packageManagerProvider:Ljavax/inject/Provider;

.field public final privacyConfigProvider:Ljavax/inject/Provider;

.field public final systemClockProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p7, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor_Factory;->mediaProjectionManagerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor_Factory;->packageManagerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor_Factory;->privacyConfigProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor_Factory;->bgHandlerProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor_Factory;->systemClockProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor_Factory;->loggerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor_Factory;->mediaProjectionManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/media/projection/MediaProjectionManager;

    iget-object v0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor_Factory;->packageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor_Factory;->privacyConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/privacy/PrivacyConfig;

    iget-object v0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor_Factory;->bgHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor_Factory;->systemClockProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/util/time/SystemClock;

    iget-object p0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor_Factory;->loggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/systemui/privacy/logging/PrivacyLogger;

    new-instance p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor;-><init>(Landroid/media/projection/MediaProjectionManager;Landroid/content/pm/PackageManager;Lcom/android/systemui/privacy/PrivacyConfig;Landroid/os/Handler;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/privacy/logging/PrivacyLogger;)V

    return-object p0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor_Factory;->mediaProjectionManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor_Factory;->packageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    iget-object v0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor_Factory;->privacyConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/notification/SectionClassifier;

    iget-object v0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor_Factory;->bgHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    iget-object v0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor_Factory;->systemClockProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    iget-object p0, p0, Lcom/android/systemui/privacy/MediaProjectionPrivacyItemMonitor_Factory;->loggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    new-instance p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;Lcom/android/systemui/statusbar/notification/SectionClassifier;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
