.class public final Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;
.super Ljava/lang/Object;
.source "CHREGestureSensor.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeatureVectorDumper"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCHREGestureSensor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CHREGestureSensor.kt\ncom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,348:1\n13536#2,2:349\n*S KotlinDebug\n*F\n+ 1 CHREGestureSensor.kt\ncom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper\n*L\n344#1:349,2\n*E\n"
.end annotation


# instance fields
.field public final featureVectors:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;",
            ">;"
        }
    .end annotation
.end field

.field public lastSingleTapFeatureVector:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;->featureVectors:Lcom/android/internal/util/RingBuffer;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string v0, "    Feature Vectors:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;->featureVectors:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
