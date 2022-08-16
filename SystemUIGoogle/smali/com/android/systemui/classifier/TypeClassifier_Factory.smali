.class public final Lcom/android/systemui/classifier/TypeClassifier_Factory;
.super Ljava/lang/Object;
.source "TypeClassifier_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/classifier/TypeClassifier;",
        ">;"
    }
.end annotation


# instance fields
.field public final dataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/FalsingDataProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/FalsingDataProvider;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/TypeClassifier_Factory;->dataProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/classifier/TypeClassifier_Factory;->dataProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/classifier/FalsingDataProvider;

    new-instance v0, Lcom/android/systemui/classifier/TypeClassifier;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/TypeClassifier;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V

    return-object v0
.end method
