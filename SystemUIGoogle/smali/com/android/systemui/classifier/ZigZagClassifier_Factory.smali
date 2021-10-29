.class public final Lcom/android/systemui/classifier/ZigZagClassifier_Factory;
.super Ljava/lang/Object;
.source "ZigZagClassifier_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/classifier/ZigZagClassifier;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/FalsingDataProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceConfigProxyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/FalsingDataProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/ZigZagClassifier_Factory;->dataProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/classifier/ZigZagClassifier_Factory;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/classifier/ZigZagClassifier_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/FalsingDataProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            ">;)",
            "Lcom/android/systemui/classifier/ZigZagClassifier_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/classifier/ZigZagClassifier_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/classifier/ZigZagClassifier_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/util/DeviceConfigProxy;)Lcom/android/systemui/classifier/ZigZagClassifier;
    .locals 1

    new-instance v0, Lcom/android/systemui/classifier/ZigZagClassifier;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/classifier/ZigZagClassifier;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/util/DeviceConfigProxy;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/classifier/ZigZagClassifier;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/classifier/ZigZagClassifier_Factory;->dataProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/classifier/FalsingDataProvider;

    iget-object p0, p0, Lcom/android/systemui/classifier/ZigZagClassifier_Factory;->deviceConfigProxyProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DeviceConfigProxy;

    invoke-static {v0, p0}, Lcom/android/systemui/classifier/ZigZagClassifier_Factory;->newInstance(Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/util/DeviceConfigProxy;)Lcom/android/systemui/classifier/ZigZagClassifier;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/classifier/ZigZagClassifier_Factory;->get()Lcom/android/systemui/classifier/ZigZagClassifier;

    move-result-object p0

    return-object p0
.end method
