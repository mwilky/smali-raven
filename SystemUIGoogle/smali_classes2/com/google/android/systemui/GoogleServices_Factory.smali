.class public final Lcom/google/android/systemui/GoogleServices_Factory;
.super Ljava/lang/Object;
.source "GoogleServices_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/GoogleServices;",
        ">;"
    }
.end annotation


# instance fields
.field private final alarmManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/AlarmManager;",
            ">;"
        }
    .end annotation
.end field

.field private final autorotateDataServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/autorotate/AutorotateDataService;",
            ">;"
        }
    .end annotation
.end field

.field private final columbusServiceLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;",
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

.field private final featureFlagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardIndicationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceConfigurationGoogleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
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
            "Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/AlarmManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/autorotate/AutorotateDataService;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/GoogleServices_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/GoogleServices_Factory;->serviceConfigurationGoogleProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/GoogleServices_Factory;->statusBarProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/GoogleServices_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/google/android/systemui/GoogleServices_Factory;->columbusServiceLazyProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/google/android/systemui/GoogleServices_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/google/android/systemui/GoogleServices_Factory;->keyguardIndicationControllerProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/google/android/systemui/GoogleServices_Factory;->alarmManagerProvider:Ljavax/inject/Provider;

    iput-object p9, p0, Lcom/google/android/systemui/GoogleServices_Factory;->autorotateDataServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/GoogleServices_Factory;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/AlarmManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/autorotate/AutorotateDataService;",
            ">;)",
            "Lcom/google/android/systemui/GoogleServices_Factory;"
        }
    .end annotation

    new-instance v10, Lcom/google/android/systemui/GoogleServices_Factory;

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

    invoke-direct/range {v0 .. v9}, Lcom/google/android/systemui/GoogleServices_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public static newInstance(Landroid/content/Context;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/internal/logging/UiEventLogger;Ldagger/Lazy;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;Landroid/app/AlarmManager;Lcom/google/android/systemui/autorotate/AutorotateDataService;)Lcom/google/android/systemui/GoogleServices;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Lcom/google/android/systemui/elmyra/ServiceConfigurationGoogle;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Ldagger/Lazy<",
            "Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;",
            ">;",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            "Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;",
            "Landroid/app/AlarmManager;",
            "Lcom/google/android/systemui/autorotate/AutorotateDataService;",
            ")",
            "Lcom/google/android/systemui/GoogleServices;"
        }
    .end annotation

    new-instance v10, Lcom/google/android/systemui/GoogleServices;

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

    invoke-direct/range {v0 .. v9}, Lcom/google/android/systemui/GoogleServices;-><init>(Landroid/content/Context;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/internal/logging/UiEventLogger;Ldagger/Lazy;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;Landroid/app/AlarmManager;Lcom/google/android/systemui/autorotate/AutorotateDataService;)V

    return-object v10
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/GoogleServices;
    .locals 10

    iget-object v0, p0, Lcom/google/android/systemui/GoogleServices_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/systemui/GoogleServices_Factory;->serviceConfigurationGoogleProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/systemui/GoogleServices_Factory;->statusBarProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, p0, Lcom/google/android/systemui/GoogleServices_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/logging/UiEventLogger;

    iget-object v0, p0, Lcom/google/android/systemui/GoogleServices_Factory;->columbusServiceLazyProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/systemui/GoogleServices_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/FeatureFlags;

    iget-object v0, p0, Lcom/google/android/systemui/GoogleServices_Factory;->keyguardIndicationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    iget-object v0, p0, Lcom/google/android/systemui/GoogleServices_Factory;->alarmManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/google/android/systemui/GoogleServices_Factory;->autorotateDataServiceProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-static/range {v1 .. v9}, Lcom/google/android/systemui/GoogleServices_Factory;->newInstance(Landroid/content/Context;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/internal/logging/UiEventLogger;Ldagger/Lazy;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;Landroid/app/AlarmManager;Lcom/google/android/systemui/autorotate/AutorotateDataService;)Lcom/google/android/systemui/GoogleServices;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/GoogleServices_Factory;->get()Lcom/google/android/systemui/GoogleServices;

    move-result-object p0

    return-object p0
.end method
