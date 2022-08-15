.class public Lcom/android/server/sensorprivacy/PersistedState$PVersion2;
.super Ljava/lang/Object;
.source "PersistedState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sensorprivacy/PersistedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PVersion2"
.end annotation


# instance fields
.field public mStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;",
            "Lcom/android/server/sensorprivacy/SensorState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmStates(Lcom/android/server/sensorprivacy/PersistedState$PVersion2;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;->mStates:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$maddState(Lcom/android/server/sensorprivacy/PersistedState$PVersion2;IIIIJ)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;->addState(IIIIJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smfromPVersion1(Lcom/android/server/sensorprivacy/PersistedState$PVersion1;)Lcom/android/server/sensorprivacy/PersistedState$PVersion2;
    .locals 0

    invoke-static {p0}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;->fromPVersion1(Lcom/android/server/sensorprivacy/PersistedState$PVersion1;)Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;->mStates:Landroid/util/ArrayMap;

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Only version 2 supported"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(ILcom/android/server/sensorprivacy/PersistedState$PVersion2-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;-><init>(I)V

    return-void
.end method

.method public static fromPVersion1(Lcom/android/server/sensorprivacy/PersistedState$PVersion1;)Lcom/android/server/sensorprivacy/PersistedState$PVersion2;
    .locals 15

    invoke-static {p0}, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->-$$Nest$mupgrade(Lcom/android/server/sensorprivacy/PersistedState$PVersion1;)V

    new-instance v7, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    const/4 v0, 0x2

    invoke-direct {v7, v0}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;-><init>(I)V

    invoke-static {p0}, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->-$$Nest$fgetmIndividualEnabled(Lcom/android/server/sensorprivacy/PersistedState$PVersion1;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_1

    invoke-virtual {p0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-virtual {p0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    move v14, v9

    :goto_1
    if-ge v14, v13, :cond_0

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sensorprivacy/SensorState;

    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/android/server/sensorprivacy/SensorState;->getState()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/sensorprivacy/SensorState;->getLastChange()J

    move-result-wide v5

    move-object v0, v7

    move v2, v11

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;->addState(IIIIJ)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    return-object v7
.end method


# virtual methods
.method public final addState(IIIIJ)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;->mStates:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;-><init>(III)V

    new-instance p1, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {p1, p4, p5, p6}, Lcom/android/server/sensorprivacy/SensorState;-><init>(IJ)V

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
