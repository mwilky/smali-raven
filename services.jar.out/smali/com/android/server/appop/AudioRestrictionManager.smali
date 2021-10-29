.class public Lcom/android/server/appop/AudioRestrictionManager;
.super Ljava/lang/Object;
.source "AudioRestrictionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appop/AudioRestrictionManager$Restriction;
    }
.end annotation


# static fields
.field static final CAMERA_AUDIO_RESTRICTIONS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "AudioRestriction"


# instance fields
.field mCameraAudioRestriction:I

.field final mZenModeAudioRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/appop/AudioRestrictionManager$Restriction;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    sget-object v2, Landroid/media/AudioAttributes;->SDK_USAGES:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v3, :cond_3

    aget v6, v2, v4

    sget-object v7, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    const/4 v9, 0x2

    if-eq v7, v9, :cond_1

    const/4 v9, 0x4

    if-ne v7, v9, :cond_0

    goto :goto_1

    :cond_0
    const/4 v8, 0x5

    if-eq v7, v8, :cond_2

    const/4 v8, 0x6

    if-eq v7, v8, :cond_2

    if-eq v7, v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown audio suppression behavior"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "AudioRestriction"

    invoke-static {v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v0, v6, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    invoke-virtual {v1, v6, v8}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/android/server/appop/AudioRestrictionManager;->CAMERA_AUDIO_RESTRICTIONS:Landroid/util/SparseArray;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v2, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    return-void
.end method

.method private static cameraRestrictionModeToName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Unknown"

    return-object v0

    :pswitch_1
    const-string v0, "MuteVibrationAndSound"

    return-object v0

    :pswitch_2
    const-string v0, "MuteVibration"

    return-object v0

    :pswitch_3
    const-string v0, "None"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkZenModeRestrictionLocked(IIILjava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, v1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->mode:I

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/16 v2, 0x1c

    if-ne p1, v2, :cond_1

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/android/server/appop/AudioRestrictionManager;->CAMERA_AUDIO_RESTRICTIONS:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AudioRestrictionManager;->checkZenModeRestrictionLocked(IIILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit p0

    return v0

    :cond_2
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)Z
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/appop/AudioRestrictionManager;->hasActiveRestrictions()Z

    move-result v1

    monitor-enter p0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    if-nez v0, :cond_0

    const-string v6, "  Zen Mode Audio Restrictions:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    const-string v7, "    "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " usage="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AudioRestrictionManager$Restriction;

    const-string v8, ": mode="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, v7, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->mode:I

    invoke-static {v8}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, v7, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "      Exceptions:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_2
    iget-object v9, v7, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    const-string v9, "        "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v7, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    iget v2, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Camera Audio Restriction Mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    invoke-static {v3}, Lcom/android/server/appop/AudioRestrictionManager;->cameraRestrictionModeToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public hasActiveRestrictions()Z
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCameraAudioRestriction(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/server/appop/AudioRestrictionManager;->mCameraAudioRestriction:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setZenModeAudioRestriction(IIII[Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/appop/AudioRestrictionManager;->mZenModeAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    if-eqz p4, :cond_3

    new-instance v1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/appop/AudioRestrictionManager$Restriction;-><init>(Lcom/android/server/appop/AudioRestrictionManager$1;)V

    iput p4, v1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->mode:I

    if-eqz p5, :cond_2

    array-length v2, p5

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v3, v1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p5, v3

    if-eqz v4, :cond_1

    iget-object v5, v1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
