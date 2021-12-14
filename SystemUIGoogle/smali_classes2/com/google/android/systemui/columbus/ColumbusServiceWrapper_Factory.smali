.class public final Lcom/google/android/systemui/columbus/ColumbusServiceWrapper_Factory;
.super Ljava/lang/Object;
.source "ColumbusServiceWrapper_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final columbusServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ColumbusService;",
            ">;"
        }
    .end annotation
.end field

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

.field private final settingsActionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/SettingsAction;",
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
            "Lcom/google/android/systemui/columbus/ColumbusSettings;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ColumbusService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/SettingsAction;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper_Factory;->columbusSettingsProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper_Factory;->columbusServiceProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper_Factory;->settingsActionProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper_Factory;->columbusStructuredDataManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/ColumbusServiceWrapper_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ColumbusSettings;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ColumbusService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/SettingsAction;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;",
            ">;)",
            "Lcom/google/android/systemui/columbus/ColumbusServiceWrapper_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/google/android/systemui/columbus/ColumbusSettings;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/columbus/ColumbusSettings;",
            "Ldagger/Lazy<",
            "Lcom/google/android/systemui/columbus/ColumbusService;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/google/android/systemui/columbus/actions/SettingsAction;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/google/android/systemui/columbus/ColumbusStructuredDataManager;",
            ">;)",
            "Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;-><init>(Lcom/google/android/systemui/columbus/ColumbusSettings;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper_Factory;->columbusSettingsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper_Factory;->columbusServiceProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper_Factory;->settingsActionProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v2

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper_Factory;->columbusStructuredDataManagerProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper_Factory;->newInstance(Lcom/google/android/systemui/columbus/ColumbusSettings;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/ColumbusServiceWrapper_Factory;->get()Lcom/google/android/systemui/columbus/ColumbusServiceWrapper;

    move-result-object p0

    return-object p0
.end method
