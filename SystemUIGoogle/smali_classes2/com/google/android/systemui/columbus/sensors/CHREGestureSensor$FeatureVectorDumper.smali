.class final Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;
.super Ljava/lang/Object;
.source "CHREGestureSensor.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FeatureVectorDumper"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCHREGestureSensor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CHREGestureSensor.kt\ncom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,353:1\n13506#2,2:354\n*E\n*S KotlinDebug\n*F\n+ 1 CHREGestureSensor.kt\ncom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper\n*L\n349#1,2:354\n*E\n"
.end annotation


# instance fields
.field private final featureVectors:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;",
            ">;"
        }
    .end annotation
.end field

.field private lastSingleTapFeatureVector:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;

.field private secondToLastSingleTapFeatureVector:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;


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
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "    Feature Vectors:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;->featureVectors:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "featureVectors.toArray()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    check-cast v2, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onGestureDetected(Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$GestureDetected;)V
    .locals 2

    const-string v0, "gestureDetected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$GestureDetected;->gestureType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;->lastSingleTapFeatureVector:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;->secondToLastSingleTapFeatureVector:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;

    invoke-direct {v0, p1}, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;-><init>(Lcom/google/android/systemui/columbus/proto/nano/ColumbusProto$GestureDetected;)V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;->lastSingleTapFeatureVector:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;->secondToLastSingleTapFeatureVector:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;->lastSingleTapFeatureVector:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;->secondToLastSingleTapFeatureVector:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;

    iput-object v1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;->lastSingleTapFeatureVector:Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVector;

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;->featureVectors:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor$FeatureVectorDumper;->featureVectors:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p0, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, "Columbus/GestureSensor"

    const-string p1, "Received double tap without single taps, event will not appear in sysdump"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
