.class public Lcom/android/server/display/DisplayModeDirector$HbmObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HbmObserver"
.end annotation


# instance fields
.field private final mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

.field private final mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mHandler:Landroid/os/Handler;

.field private final mHbmMode:Landroid/util/SparseIntArray;

.field private final mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

.field private mRefreshRateInHbmHdr:I

.field private mRefreshRateInHbmSunlight:I


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector$Injector;Lcom/android/server/display/DisplayModeDirector$BallotBox;Landroid/os/Handler;Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

    iput-object p3, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    return-void
.end method

.method private onDeviceConfigRefreshRateInHbmChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->recalculateVotesForDisplay(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private recalculateVotesForDisplay(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget v3, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    if-lez v3, :cond_0

    int-to-float v2, v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal;->getRefreshRateLimitations(I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;

    iget v6, v5, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;->type:I

    if-ne v6, v2, :cond_1

    iget-object v2, v5, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;->range:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    iget-object v6, v5, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;->range:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v6, v6, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    invoke-static {v2, v6}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    iget v3, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    if-lez v3, :cond_3

    int-to-float v4, v3

    int-to-float v3, v3

    invoke-static {v4, v3}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    :cond_3
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

    invoke-interface {v3, p1, v2, v1}, Lcom/android/server/display/DisplayModeDirector$BallotBox;->vote(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method


# virtual methods
.method dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "   HbmObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     mHbmMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     mRefreshRateInHbmSunlight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     mRefreshRateInHbmHdr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method getRefreshRateInHbmHdr()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    return v0
.end method

.method getRefreshRateInHbmSunlight()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    return v0
.end method

.method public observe()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInHbmSunlight()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInHbmHdr()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/server/display/DisplayModeDirector$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    return-void
.end method

.method public onDeviceConfigRefreshRateInHbmHdrChanged(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->onDeviceConfigRefreshRateInHbmChanged()V

    :cond_0
    return-void
.end method

.method public onDeviceConfigRefreshRateInHbmSunlightChanged(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->onDeviceConfigRefreshRateInHbmChanged()V

    :cond_0
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    invoke-interface {v0, p1}, Lcom/android/server/display/DisplayModeDirector$Injector;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, Landroid/hardware/display/BrightnessInfo;->highBrightnessMode:I

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->recalculateVotesForDisplay(I)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/display/DisplayModeDirector$BallotBox;->vote(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    return-void
.end method
