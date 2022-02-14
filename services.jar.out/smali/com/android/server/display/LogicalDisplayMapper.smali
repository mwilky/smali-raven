.class Lcom/android/server/display/LogicalDisplayMapper;
.super Ljava/lang/Object;
.source "LogicalDisplayMapper.java"

# interfaces
.implements Lcom/android/server/display/DisplayDeviceRepository$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;,
        Lcom/android/server/display/LogicalDisplayMapper$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DISPLAY_GROUP_EVENT_ADDED:I = 0x1

.field public static final DISPLAY_GROUP_EVENT_CHANGED:I = 0x2

.field public static final DISPLAY_GROUP_EVENT_REMOVED:I = 0x3

.field public static final LOGICAL_DISPLAY_EVENT_ADDED:I = 0x1

.field public static final LOGICAL_DISPLAY_EVENT_CHANGED:I = 0x2

.field public static final LOGICAL_DISPLAY_EVENT_DEVICE_STATE_TRANSITION:I = 0x6

.field public static final LOGICAL_DISPLAY_EVENT_FRAME_RATE_OVERRIDES_CHANGED:I = 0x5

.field public static final LOGICAL_DISPLAY_EVENT_REMOVED:I = 0x3

.field public static final LOGICAL_DISPLAY_EVENT_SWAPPED:I = 0x4

.field private static final MSG_TRANSITION_TO_PENDING_DEVICE_STATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LogicalDisplayMapper"

.field private static final TIMEOUT_STATE_TRANSITION_MILLIS:I = 0x12c

.field private static final UPDATE_STATE_NEW:I = 0x0

.field private static final UPDATE_STATE_TRANSITION:I = 0x1

.field private static final UPDATE_STATE_UPDATED:I = 0x2


# instance fields
.field private mCurrentLayout:Lcom/android/server/display/layout/Layout;

.field private mDeviceState:I

.field private final mDeviceStateOnWhichToWakeUp:I

.field private final mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

.field private final mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

.field private final mDisplayGroups:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

.field private final mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

.field private final mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

.field private final mLogicalDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/LogicalDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

.field private mNextNonDefaultGroupId:I

.field private mPendingDeviceState:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mSingleDisplayDemoMode:Z

.field private final mSupportsConcurrentInternalDisplays:Z

.field private final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field private final mTempDisplayInfo:Landroid/view/DisplayInfo;

.field private final mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field private final mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

.field private final mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/LogicalDisplayMapper$Listener;Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    iput-object p4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;-><init>(Lcom/android/server/display/LogicalDisplayMapper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    iput-object p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    iput-object p3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    const-string/jumbo v0, "persist.demo.singledisplay"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSupportsConcurrentInternalDisplays:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateOnWhichToWakeUp:I

    invoke-virtual {p2, p0}, Lcom/android/server/display/DisplayDeviceRepository;->addListener(Lcom/android/server/display/DisplayDeviceRepository$Listener;)V

    new-instance v0, Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-direct {v0}, Lcom/android/server/display/DeviceStateToLayoutMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/LogicalDisplayMapper;)Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/LogicalDisplayMapper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->finishStateTransitionLocked(Z)V

    return-void
.end method

.method private applyLayoutLocked()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    iget v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    invoke-virtual {v1, v2}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applying layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Previous layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LogicalDisplayMapper"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {v1}, Lcom/android/server/display/layout/Layout;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {v4, v3}, Lcom/android/server/display/layout/Layout;->getAt(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v6, v5}, Lcom/android/server/display/DisplayDeviceRepository;->getByAddressLocked(Landroid/view/DisplayAddress;)Lcom/android/server/display/DisplayDevice;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The display device ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "), is not available for the display state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v8

    if-nez v8, :cond_1

    const/4 v9, 0x0

    invoke-direct {p0, v9, v7}, Lcom/android/server/display/LogicalDisplayMapper;->createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v8

    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v9

    if-eq v8, v9, :cond_2

    invoke-virtual {v8, v9}, Lcom/android/server/display/LogicalDisplay;->swapDisplaysLocked(Lcom/android/server/display/LogicalDisplay;)V

    :cond_2
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v10, -0x1

    invoke-direct {p0, v8, v10}, Lcom/android/server/display/LogicalDisplayMapper;->setDisplayPhase(Lcom/android/server/display/LogicalDisplay;I)V

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private areAllTransitioningDisplaysOffLocked()Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getPhase()I

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v5

    iget v6, v5, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    if-eq v6, v2, :cond_1

    const/4 v2, 0x0

    return v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private assignDisplayGroupIdLocked(Z)I
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private assignDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 9

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v4, v3, Landroid/view/DisplayInfo;->flags:I

    and-int/lit16 v4, v4, 0x100

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    if-eq v5, v4, :cond_3

    :cond_2
    invoke-direct {p0, v4}, Lcom/android/server/display/LogicalDisplayMapper;->assignDisplayGroupIdLocked(Z)I

    move-result v1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v6

    if-nez v6, :cond_4

    new-instance v7, Lcom/android/server/display/DisplayGroup;

    invoke-direct {v7, v1}, Lcom/android/server/display/DisplayGroup;-><init>(I)V

    move-object v6, v7

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v7, v1, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_4
    if-eq v2, v6, :cond_7

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Lcom/android/server/display/DisplayGroup;->removeDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    :cond_5
    invoke-virtual {v6, p1}, Lcom/android/server/display/DisplayGroup;->addDisplayLocked(Lcom/android/server/display/LogicalDisplay;)V

    invoke-virtual {p1, v1}, Lcom/android/server/display/LogicalDisplay;->updateDisplayGroupIdLocked(I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting new display group "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for display "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", from previous group: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/server/display/DisplayGroup;->getGroupId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_2

    :cond_6
    const-string/jumbo v8, "null"

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "LogicalDisplayMapper"

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private assignLayerStackLocked(I)I
    .locals 0

    return p1
.end method

.method private createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;
    .locals 3

    invoke-direct {p0, p2}, Lcom/android/server/display/LogicalDisplayMapper;->assignLayerStackLocked(I)I

    move-result v0

    new-instance v1, Lcom/android/server/display/LogicalDisplay;

    invoke-direct {v1, p2, v0, p1}, Lcom/android/server/display/LogicalDisplay;-><init>(IILcom/android/server/display/DisplayDevice;)V

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v1, v2}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Lcom/android/server/display/DisplayDeviceRepository;)V

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->setDisplayPhase(Lcom/android/server/display/LogicalDisplay;I)V

    return-object v1
.end method

.method private displayEventToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "transition"

    return-object v0

    :pswitch_1
    const-string v0, "framerate_override"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "swapped"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "removed"

    return-object v0

    :pswitch_4
    const-string v0, "changed"

    return-object v0

    :pswitch_5
    const-string v0, "added"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private finishStateTransitionLocked(Z)V
    .locals 3

    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->areAllTransitioningDisplaysOffLocked()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->transitionToPendingStateLocked()V

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;->removeMessages(I)V

    :cond_2
    return-void
.end method

.method private handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->initializeInternalDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)V

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/display/layout/Layout;->assignDisplayIdLocked(Z)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/display/LogicalDisplayMapper;->createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    return-void
.end method

.method private initializeInternalDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-nez v2, :cond_2

    iget-boolean v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSupportsConcurrentInternalDisplays:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :cond_2
    :goto_1
    iget-object v4, v1, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/display/layout/Layout;->createDisplayLocked(Landroid/view/DisplayAddress;ZZ)Lcom/android/server/display/layout/Layout$Display;

    return-void
.end method

.method private resetLayoutLocked(III)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    move/from16 v5, p2

    invoke-virtual {v4, v5}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v4

    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_c

    iget-object v8, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v8}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v9

    invoke-virtual {v8}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v10

    if-nez v10, :cond_0

    move-object/from16 v17, v2

    goto/16 :goto_9

    :cond_0
    invoke-virtual {v10}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    const/4 v12, 0x0

    if-eqz v11, :cond_1

    invoke-virtual {v2, v11}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v13

    goto :goto_1

    :cond_1
    move-object v13, v12

    :goto_1
    if-eqz v11, :cond_2

    invoke-virtual {v4, v11}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v12

    :cond_2
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lcom/android/server/display/layout/Layout$Display;->isEnabled()Z

    move-result v16

    if-eqz v16, :cond_3

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/16 v16, 0x1

    :goto_3
    move/from16 v17, v16

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lcom/android/server/display/layout/Layout$Display;->isEnabled()Z

    move-result v16

    if-eqz v16, :cond_5

    goto :goto_4

    :cond_5
    const/16 v16, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/16 v16, 0x1

    :goto_5
    move/from16 v18, v16

    if-eqz v13, :cond_7

    if-eqz v12, :cond_7

    invoke-virtual {v13}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v14

    invoke-virtual {v12}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v15

    if-eq v14, v15, :cond_7

    const/4 v14, 0x1

    goto :goto_6

    :cond_7
    const/4 v14, 0x0

    :goto_6
    nop

    invoke-virtual {v8}, Lcom/android/server/display/LogicalDisplay;->getPhase()I

    move-result v15

    if-eqz v15, :cond_9

    move/from16 v15, v17

    move-object/from16 v17, v2

    move/from16 v2, v18

    if-ne v15, v2, :cond_a

    if-eqz v14, :cond_8

    goto :goto_7

    :cond_8
    const/16 v16, 0x0

    goto :goto_8

    :cond_9
    move/from16 v15, v17

    move-object/from16 v17, v2

    move/from16 v2, v18

    :cond_a
    :goto_7
    const/16 v16, 0x1

    :goto_8
    if-eqz v16, :cond_b

    invoke-direct {v0, v8, v1}, Lcom/android/server/display/LogicalDisplayMapper;->setDisplayPhase(Lcom/android/server/display/LogicalDisplay;I)V

    if-nez v1, :cond_b

    iget-object v1, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    const/4 v0, 0x1

    invoke-virtual {v1, v9, v0}, Landroid/util/SparseIntArray;->put(II)V

    :cond_b
    :goto_9
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, v17

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method private sendUpdatesForDisplaysLocked(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    if-eq v1, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    invoke-interface {v4, v3, p1}, Lcom/android/server/display/LogicalDisplayMapper$Listener;->onLogicalDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private sendUpdatesForGroupsLocked(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    if-eq v1, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    invoke-interface {v3, v2, p1}, Lcom/android/server/display/LogicalDisplayMapper$Listener;->onDisplayGroupEventLocked(II)V

    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setDisplayPhase(Lcom/android/server/display/LogicalDisplay;I)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/view/DisplayInfo;->type:I

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v2, v3

    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not creating a logical display for a secondary display because single display demo mode is enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LogicalDisplayMapper"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/display/LogicalDisplay;->setPhase(I)V

    return-void
.end method

.method private transitionToPendingStateLocked()V
    .locals 3

    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    iget v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->resetLayoutLocked(III)V

    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    return-void
.end method

.method private updateLogicalDisplaysLocked()V
    .locals 14

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-ltz v0, :cond_a

    iget-object v8, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/display/LogicalDisplay;

    iget-object v10, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v9}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    iget-object v10, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v9, v10}, Lcom/android/server/display/LogicalDisplay;->getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V

    iget-object v10, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v9, v10}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Lcom/android/server/display/DisplayDeviceRepository;)V

    invoke-virtual {v9}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v8, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    if-eqz v11, :cond_0

    move v5, v1

    :cond_0
    invoke-virtual {v9}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v12

    const-string v13, "LogicalDisplayMapper"

    if-nez v12, :cond_3

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseIntArray;->delete(I)V

    nop

    invoke-virtual {p0, v8}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v9}, Lcom/android/server/display/DisplayGroup;->removeDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    :cond_1
    if-eqz v5, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->removeAt(I)V

    goto/16 :goto_2

    :cond_3
    if-nez v5, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding new display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v9}, Lcom/android/server/display/LogicalDisplayMapper;->assignDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)V

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v6, v6, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v12, v10, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v6, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-direct {p0, v9}, Lcom/android/server/display/LogicalDisplayMapper;->assignDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)V

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v10}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0, v9}, Lcom/android/server/display/LogicalDisplayMapper;->assignDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)V

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :cond_6
    if-ne v11, v1, :cond_7

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :cond_7
    invoke-virtual {v9}, Lcom/android/server/display/LogicalDisplay;->getPendingFrameRateOverrideUids()Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v9, v2}, Lcom/android/server/display/LogicalDisplay;->getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v3}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    :cond_9
    :goto_1
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_3
    if-ltz v0, :cond_10

    iget-object v8, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/display/DisplayGroup;

    iget-object v10, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    const/4 v11, -0x1

    if-le v10, v11, :cond_b

    move v10, v1

    goto :goto_4

    :cond_b
    move v10, v5

    :goto_4
    invoke-virtual {v9}, Lcom/android/server/display/DisplayGroup;->getChangeCountLocked()I

    move-result v11

    invoke-virtual {v9}, Lcom/android/server/display/DisplayGroup;->isEmptyLocked()Z

    move-result v12

    if-eqz v12, :cond_c

    iget-object v12, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v8}, Landroid/util/SparseIntArray;->delete(I)V

    if-eqz v10, :cond_f

    iget-object v12, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_6

    :cond_c
    if-nez v10, :cond_d

    iget-object v12, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_5

    :cond_d
    iget-object v12, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    if-eq v12, v11, :cond_e

    iget-object v12, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    :cond_e
    :goto_5
    iget-object v12, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v8, v11}, Landroid/util/SparseIntArray;->put(II)V

    :cond_f
    :goto_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_10
    invoke-direct {p0, v4}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    invoke-direct {p0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    invoke-direct {p0, v6}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    invoke-direct {p0, v7}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    invoke-direct {p0, v3}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    invoke-direct {p0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    invoke-direct {p0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    invoke-direct {p0, v7}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    invoke-direct {p0, v6}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 7

    const-string v0, "LogicalDisplayMapper:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSingleDisplayDemoMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCurrentLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDeviceStateOnWhichToWakeUp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateOnWhichToWakeUp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logical Displays: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/LogicalDisplay;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v4, v0}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-virtual {v2, v0}, Lcom/android/server/display/DeviceStateToLayoutMap;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public forEachLocked(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/display/LogicalDisplay;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getDisplayGroupIdFromDisplayIdLocked(I)I
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayGroup;

    invoke-virtual {v4, v0}, Lcom/android/server/display/DisplayGroup;->containsLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayGroup;

    return-object v0
.end method

.method public getDisplayIdsLocked(I)[I
    .locals 8

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    aput v7, v1, v2

    move v2, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eq v2, v0, :cond_2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    return-object v0
.end method

.method public getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v4

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public onDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/LogicalDisplayMapper;->finishStateTransitionLocked(Z)V

    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTraversalRequested()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    invoke-interface {v0}, Lcom/android/server/display/LogicalDisplayMapper$Listener;->onTraversalRequested()V

    return-void
.end method

.method setDeviceStateLocked(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting Transition to state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", from state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", interactive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LogicalDisplayMapper"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->resetLayoutLocked(III)V

    :cond_0
    iput p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    iget v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateOnWhichToWakeUp:I

    const/4 v3, 0x1

    if-ne p1, v1, :cond_1

    if-nez v0, :cond_1

    move v2, v3

    :cond_1
    move v1, v2

    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->areAllTransitioningDisplaysOffLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->transitionToPendingStateLocked()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/16 v6, 0xc

    const-string/jumbo v7, "server.display:unfold"

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
