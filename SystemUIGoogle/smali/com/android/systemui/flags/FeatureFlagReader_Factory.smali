.class public final Lcom/android/systemui/flags/FeatureFlagReader_Factory;
.super Ljava/lang/Object;
.source "FeatureFlagReader_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/flags/FeatureFlagReader;",
        ">;"
    }
.end annotation


# instance fields
.field private final buildProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/wrapper/BuildInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final resourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private final systemPropertiesHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/flags/SystemPropertiesHelper;",
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
            "Landroid/content/res/Resources;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/wrapper/BuildInfo;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/flags/SystemPropertiesHelper;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/flags/FeatureFlagReader_Factory;->resourcesProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/flags/FeatureFlagReader_Factory;->buildProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/flags/FeatureFlagReader_Factory;->systemPropertiesHelperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/flags/FeatureFlagReader_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/wrapper/BuildInfo;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/flags/SystemPropertiesHelper;",
            ">;)",
            "Lcom/android/systemui/flags/FeatureFlagReader_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/flags/FeatureFlagReader_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/flags/FeatureFlagReader_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/res/Resources;Lcom/android/systemui/util/wrapper/BuildInfo;Lcom/android/systemui/flags/SystemPropertiesHelper;)Lcom/android/systemui/flags/FeatureFlagReader;
    .locals 1

    new-instance v0, Lcom/android/systemui/flags/FeatureFlagReader;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/flags/FeatureFlagReader;-><init>(Landroid/content/res/Resources;Lcom/android/systemui/util/wrapper/BuildInfo;Lcom/android/systemui/flags/SystemPropertiesHelper;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/flags/FeatureFlagReader;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/flags/FeatureFlagReader_Factory;->resourcesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/android/systemui/flags/FeatureFlagReader_Factory;->buildProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/wrapper/BuildInfo;

    iget-object p0, p0, Lcom/android/systemui/flags/FeatureFlagReader_Factory;->systemPropertiesHelperProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/flags/SystemPropertiesHelper;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/flags/FeatureFlagReader_Factory;->newInstance(Landroid/content/res/Resources;Lcom/android/systemui/util/wrapper/BuildInfo;Lcom/android/systemui/flags/SystemPropertiesHelper;)Lcom/android/systemui/flags/FeatureFlagReader;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/flags/FeatureFlagReader_Factory;->get()Lcom/android/systemui/flags/FeatureFlagReader;

    move-result-object p0

    return-object p0
.end method
