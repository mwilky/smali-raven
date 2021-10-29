.class public final Lcom/android/systemui/classifier/SingleTapClassifier_Factory;
.super Ljava/lang/Object;
.source "SingleTapClassifier_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/classifier/SingleTapClassifier;",
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

.field private final touchSlopProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Float;",
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
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/SingleTapClassifier_Factory;->dataProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/classifier/SingleTapClassifier_Factory;->touchSlopProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/classifier/SingleTapClassifier_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/FalsingDataProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/android/systemui/classifier/SingleTapClassifier_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/classifier/SingleTapClassifier_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/classifier/SingleTapClassifier_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/classifier/FalsingDataProvider;F)Lcom/android/systemui/classifier/SingleTapClassifier;
    .locals 1

    new-instance v0, Lcom/android/systemui/classifier/SingleTapClassifier;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/classifier/SingleTapClassifier;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;F)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/classifier/SingleTapClassifier;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/classifier/SingleTapClassifier_Factory;->dataProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/classifier/FalsingDataProvider;

    iget-object p0, p0, Lcom/android/systemui/classifier/SingleTapClassifier_Factory;->touchSlopProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {v0, p0}, Lcom/android/systemui/classifier/SingleTapClassifier_Factory;->newInstance(Lcom/android/systemui/classifier/FalsingDataProvider;F)Lcom/android/systemui/classifier/SingleTapClassifier;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/classifier/SingleTapClassifier_Factory;->get()Lcom/android/systemui/classifier/SingleTapClassifier;

    move-result-object p0

    return-object p0
.end method
