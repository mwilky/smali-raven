.class public Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;
.super Ljava/lang/Object;
.source "DevicePostureControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DevicePostureController;


# instance fields
.field private mCurrentDevicePosture:I

.field private final mDeviceStateToPostureMap:Landroid/util/SparseIntArray;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ERck6Yb9fmZJhgSlOfLaiU1q1Dk(Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->lambda$new$0(Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JNvdl56mGf4aiTwc0IL9JUy_ecI(Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->lambda$new$1(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/devicestate/DeviceStateManager;Ljava/util/concurrent/Executor;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mListeners:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mCurrentDevicePosture:I

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mDeviceStateToPostureMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x1070032

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mDeviceStateToPostureMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    :catch_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;)V

    invoke-virtual {p2, p3, p1}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;)V
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mCurrentDevicePosture:I

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;->onPostureChanged(I)V

    return-void
.end method

.method private synthetic lambda$new$1(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mDeviceStateToPostureMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mCurrentDevicePosture:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mListeners:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;)V

    return-void
.end method

.method public getDevicePosture()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mCurrentDevicePosture:I

    return p0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;)V

    return-void
.end method
