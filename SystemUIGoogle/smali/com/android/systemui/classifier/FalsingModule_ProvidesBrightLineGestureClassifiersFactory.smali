.class public final Lcom/android/systemui/classifier/FalsingModule_ProvidesBrightLineGestureClassifiersFactory;
.super Ljava/lang/Object;
.source "FalsingModule_ProvidesBrightLineGestureClassifiersFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Set<",
        "Lcom/android/systemui/classifier/FalsingClassifier;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final diagonalClassifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/DiagonalClassifier;",
            ">;"
        }
    .end annotation
.end field

.field public final distanceClassifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/DistanceClassifier;",
            ">;"
        }
    .end annotation
.end field

.field public final pointerCountClassifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/PointerCountClassifier;",
            ">;"
        }
    .end annotation
.end field

.field public final proximityClassifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/ProximityClassifier;",
            ">;"
        }
    .end annotation
.end field

.field public final typeClassifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/TypeClassifier;",
            ">;"
        }
    .end annotation
.end field

.field public final zigZagClassifierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/classifier/ZigZagClassifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/volume/VolumeUI_Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingModule_ProvidesBrightLineGestureClassifiersFactory;->distanceClassifierProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/classifier/FalsingModule_ProvidesBrightLineGestureClassifiersFactory;->proximityClassifierProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/classifier/FalsingModule_ProvidesBrightLineGestureClassifiersFactory;->pointerCountClassifierProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/classifier/FalsingModule_ProvidesBrightLineGestureClassifiersFactory;->typeClassifierProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/classifier/FalsingModule_ProvidesBrightLineGestureClassifiersFactory;->diagonalClassifierProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/android/systemui/classifier/FalsingModule_ProvidesBrightLineGestureClassifiersFactory;->zigZagClassifierProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/volume/VolumeUI_Factory;)Lcom/android/systemui/classifier/FalsingModule_ProvidesBrightLineGestureClassifiersFactory;
    .locals 8

    new-instance v7, Lcom/android/systemui/classifier/FalsingModule_ProvidesBrightLineGestureClassifiersFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/classifier/FalsingModule_ProvidesBrightLineGestureClassifiersFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/volume/VolumeUI_Factory;)V

    return-object v7
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingModule_ProvidesBrightLineGestureClassifiersFactory;->distanceClassifierProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingModule_ProvidesBrightLineGestureClassifiersFactory;->proximityClassifierProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/classifier/FalsingModule_ProvidesBrightLineGestureClassifiersFactory;->pointerCountClassifierProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/classifier/FalsingModule_ProvidesBrightLineGestureClassifiersFactory;->typeClassifierProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/classifier/TypeClassifier;

    iget-object v4, p0, Lcom/android/systemui/classifier/FalsingModule_ProvidesBrightLineGestureClassifiersFactory;->diagonalClassifierProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingModule_ProvidesBrightLineGestureClassifiersFactory;->zigZagClassifierProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast v0, Lcom/android/systemui/classifier/DistanceClassifier;

    check-cast v1, Lcom/android/systemui/classifier/ProximityClassifier;

    check-cast v2, Lcom/android/systemui/classifier/PointerCountClassifier;

    check-cast v4, Lcom/android/systemui/classifier/DiagonalClassifier;

    check-cast p0, Lcom/android/systemui/classifier/ZigZagClassifier;

    new-instance v5, Ljava/util/HashSet;

    const/4 v6, 0x6

    new-array v6, v6, [Lcom/android/systemui/classifier/FalsingClassifier;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v3, v6, v2

    const/4 v2, 0x2

    aput-object v4, v6, v2

    const/4 v2, 0x3

    aput-object v0, v6, v2

    const/4 v0, 0x4

    aput-object v1, v6, v0

    const/4 v0, 0x5

    aput-object p0, v6, v0

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v5, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v5
.end method
