.class public final Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideTimeoutToUserZeroPreconditionsFactory;
.super Ljava/lang/Object;
.source "DockModule_ProvideTimeoutToUserZeroPreconditionsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Set<",
        "Lcom/android/systemui/util/condition/Condition;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final featureEnabledConditionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroFeatureCondition;",
            ">;"
        }
    .end annotation
.end field

.field public final settingsEnabledConditionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsShell_Factory;Lcom/android/systemui/settings/dagger/SettingsModule_ProvideUserTrackerFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideTimeoutToUserZeroPreconditionsFactory;->featureEnabledConditionProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideTimeoutToUserZeroPreconditionsFactory;->settingsEnabledConditionProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideTimeoutToUserZeroPreconditionsFactory;->featureEnabledConditionProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroFeatureCondition;

    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideTimeoutToUserZeroPreconditionsFactory;->settingsEnabledConditionProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition;

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/systemui/util/condition/Condition;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p0, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method
