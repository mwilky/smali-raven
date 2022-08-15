.class public Lcom/android/server/sensorprivacy/PersistedState$PVersion1;
.super Ljava/lang/Object;
.source "PersistedState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sensorprivacy/PersistedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PVersion1"
.end annotation


# instance fields
.field public mIndividualEnabled:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/sensorprivacy/SensorState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIndividualEnabled(Lcom/android/server/sensorprivacy/PersistedState$PVersion1;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->mIndividualEnabled:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$maddState(Lcom/android/server/sensorprivacy/PersistedState$PVersion1;IIZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->addState(IIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupgrade(Lcom/android/server/sensorprivacy/PersistedState$PVersion1;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->upgrade()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smfromPVersion0(Lcom/android/server/sensorprivacy/PersistedState$PVersion0;)Lcom/android/server/sensorprivacy/PersistedState$PVersion1;
    .locals 0

    invoke-static {p0}, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->fromPVersion0(Lcom/android/server/sensorprivacy/PersistedState$PVersion0;)Lcom/android/server/sensorprivacy/PersistedState$PVersion1;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->mIndividualEnabled:Landroid/util/SparseArray;

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Only version 1 supported"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(ILcom/android/server/sensorprivacy/PersistedState$PVersion1-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;-><init>(I)V

    return-void
.end method

.method public static fromPVersion0(Lcom/android/server/sensorprivacy/PersistedState$PVersion0;)Lcom/android/server/sensorprivacy/PersistedState$PVersion1;
    .locals 8

    invoke-static {p0}, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->-$$Nest$mupgrade(Lcom/android/server/sensorprivacy/PersistedState$PVersion0;)V

    new-instance v0, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;-><init>(I)V

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    :try_start_0
    const-class v3, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {}, Lcom/android/server/sensorprivacy/PersistedState;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Unable to get users."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    move v3, v2

    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget v4, v1, v3

    move v5, v2

    :goto_2
    invoke-static {p0}, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->-$$Nest$fgetmIndividualEnabled(Lcom/android/server/sensorprivacy/PersistedState$PVersion0;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-static {p0}, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->-$$Nest$fgetmIndividualEnabled(Lcom/android/server/sensorprivacy/PersistedState$PVersion0;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {p0}, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->-$$Nest$fgetmIndividualEnabled(Lcom/android/server/sensorprivacy/PersistedState$PVersion0;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/sensorprivacy/SensorState;

    invoke-virtual {v7}, Lcom/android/server/sensorprivacy/SensorState;->isEnabled()Z

    move-result v7

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->addState(IIZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final addState(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->mIndividualEnabled:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    iget-object p0, p0, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->mIndividualEnabled:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p0, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {p0, p3}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Z)V

    invoke-virtual {v0, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final upgrade()V
    .locals 0

    return-void
.end method
