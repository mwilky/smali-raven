.class final Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;
.super Ljava/lang/Object;
.source "VibrationThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibrationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceEffectMap"
.end annotation


# instance fields
.field private final mRequiredSyncCapabilities:J

.field private final mVibratorEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect$Composed;",
            ">;"
        }
    .end annotation
.end field

.field private final mVibratorIds:[I

.field final synthetic this$0:Lcom/android/server/vibrator/VibrationThread;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationThread;Landroid/os/CombinedVibration$Mono;)V
    .locals 6

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/server/vibrator/VibrationThread;->access$400(Lcom/android/server/vibrator/VibrationThread;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/server/vibrator/VibrationThread;->access$400(Lcom/android/server/vibrator/VibrationThread;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorIds:[I

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Lcom/android/server/vibrator/VibrationThread;->access$400(Lcom/android/server/vibrator/VibrationThread;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {p1}, Lcom/android/server/vibrator/VibrationThread;->access$400(Lcom/android/server/vibrator/VibrationThread;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/vibrator/VibrationThread;->access$400(Lcom/android/server/vibrator/VibrationThread;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/vibrator/VibrationThread;->access$1100(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;->apply(Landroid/os/VibrationEffect;Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;

    move-result-object v3

    instance-of v4, v3, Landroid/os/VibrationEffect$Composed;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    move-object v5, v3

    check-cast v5, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorIds:[I

    aput v1, v4, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->calculateRequiredSyncCapabilities(Landroid/util/SparseArray;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mRequiredSyncCapabilities:J

    return-void
.end method

.method constructor <init>(Lcom/android/server/vibrator/VibrationThread;Landroid/os/CombinedVibration$Stereo;)V
    .locals 7

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->this$0:Lcom/android/server/vibrator/VibrationThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {p1}, Lcom/android/server/vibrator/VibrationThread;->access$400(Lcom/android/server/vibrator/VibrationThread;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/android/server/vibrator/VibrationThread;->access$400(Lcom/android/server/vibrator/VibrationThread;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/vibrator/VibrationThread;->access$1100(Lcom/android/server/vibrator/VibrationThread;)Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;

    move-result-object v4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/VibrationEffect;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/vibrator/DeviceVibrationEffectAdapter;->apply(Landroid/os/VibrationEffect;Landroid/os/VibratorInfo;)Landroid/os/VibrationEffect;

    move-result-object v4

    instance-of v5, v4, Landroid/os/VibrationEffect$Composed;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    move-object v6, v4

    check-cast v6, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v5, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorIds:[I

    const/4 p1, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorIds:[I

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    aput v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->calculateRequiredSyncCapabilities(Landroid/util/SparseArray;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mRequiredSyncCapabilities:J

    return-void
.end method

.method private calculateRequiredSyncCapabilities(Landroid/util/SparseArray;)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect$Composed;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    const-wide/16 v4, 0x8

    const-wide/16 v6, 0x4

    const-wide/16 v8, 0x2

    if-ge v2, v3, :cond_3

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    const/4 v10, 0x0

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v10, v3, Landroid/os/vibrator/StepSegment;

    if-eqz v10, :cond_0

    or-long/2addr v0, v8

    goto :goto_1

    :cond_0
    instance-of v8, v3, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v8, :cond_1

    or-long/2addr v0, v6

    goto :goto_1

    :cond_1
    instance-of v6, v3, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v6, :cond_2

    or-long/2addr v0, v4

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v8, v9}, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->requireMixedTriggerCapability(JJ)Z

    move-result v3

    if-eqz v3, :cond_4

    or-int/lit8 v2, v2, 0x10

    :cond_4
    invoke-direct {p0, v0, v1, v6, v7}, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->requireMixedTriggerCapability(JJ)Z

    move-result v3

    if-eqz v3, :cond_5

    or-int/lit8 v2, v2, 0x20

    :cond_5
    invoke-direct {p0, v0, v1, v4, v5}, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->requireMixedTriggerCapability(JJ)Z

    move-result v3

    if-eqz v3, :cond_6

    or-int/lit8 v2, v2, 0x40

    :cond_6
    const-wide/16 v3, 0x1

    or-long/2addr v3, v0

    int-to-long v5, v2

    or-long/2addr v3, v5

    return-wide v3
.end method

.method private requireMixedTriggerCapability(JJ)Z
    .locals 4

    and-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    not-long v0, p3

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public effectAt(I)Landroid/os/VibrationEffect$Composed;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    return-object v0
.end method

.method public getRequiredSyncCapabilities()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mRequiredSyncCapabilities:J

    return-wide v0
.end method

.method public getVibratorIds()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorIds:[I

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorIds:[I

    array-length v0, v0

    return v0
.end method

.method public vibratorIdAt(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread$DeviceEffectMap;->mVibratorEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method
