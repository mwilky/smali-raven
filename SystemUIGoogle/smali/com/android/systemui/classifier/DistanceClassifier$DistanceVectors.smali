.class Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;
.super Ljava/lang/Object;
.source "DistanceClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/DistanceClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DistanceVectors"
.end annotation


# instance fields
.field final mDx:F

.field final mDy:F

.field private final mVx:F

.field private final mVy:F

.field final synthetic this$0:Lcom/android/systemui/classifier/DistanceClassifier;


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/DistanceClassifier;FFFF)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->this$0:Lcom/android/systemui/classifier/DistanceClassifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mDx:F

    iput p3, p0, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mDy:F

    iput p4, p0, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mVx:F

    iput p5, p0, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mVy:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;)F
    .locals 0

    iget p0, p0, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mVx:F

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;)F
    .locals 0

    iget p0, p0, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mVy:F

    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mDx:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mVx:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mDy:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/systemui/classifier/DistanceClassifier$DistanceVectors;->mVy:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    const/4 p0, 0x0

    const-string/jumbo v1, "{dx=%f, vx=%f, dy=%f, vy=%f}"

    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
