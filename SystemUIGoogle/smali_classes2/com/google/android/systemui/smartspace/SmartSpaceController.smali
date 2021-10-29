.class public Lcom/google/android/systemui/smartspace/SmartSpaceController;
.super Ljava/lang/Object;
.source "SmartSpaceController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmRegistered:Z

.field private final mAppContext:Landroid/content/Context;

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

.field private final mExpireAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

.field private mHidePrivateData:Z

.field private mHideWorkData:Z

.field private final mKeyguardMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartSpaceEnabledBroadcastSent:Z

.field private final mStore:Lcom/google/android/systemui/smartspace/ProtoStore;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$5isCNrfyJt5gqOfJoAGI_-ld-FE(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/smartspace/NewCardInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->lambda$onNewCard$2(Lcom/google/android/systemui/smartspace/NewCardInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K_QlODJG5r6W7YnckkJz-jTCf8Q(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$LQ1yDvg1Qcm3M9TXjh_gJ3NhZrM(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/smartspace/NewCardInfo;Lcom/google/android/systemui/smartspace/SmartSpaceCard;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->lambda$onNewCard$1(Lcom/google/android/systemui/smartspace/NewCardInfo;Lcom/google/android/systemui/smartspace/SmartSpaceCard;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SmartSpaceController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;Landroid/app/AlarmManager;Lcom/android/systemui/dump/DumpManager;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/systemui/smartspace/SmartSpaceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mExpireAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v0, Lcom/google/android/systemui/smartspace/SmartSpaceController$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController$1;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mKeyguardMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/systemui/smartspace/ProtoStore;

    invoke-direct {v2, p1}, Lcom/google/android/systemui/smartspace/ProtoStore;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mStore:Lcom/google/android/systemui/smartspace/ProtoStore;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "smartspace-background"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    iput-object p3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mBackgroundHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    iput p3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAppContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance p3, Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-direct {p3}, Lcom/google/android/systemui/smartspace/SmartSpaceData;-><init>()V

    iput-object p3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->isSmartSpaceDisabledByExperiments()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->reloadData()V

    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->onGsaChanged()V

    new-instance p2, Lcom/google/android/systemui/smartspace/SmartSpaceController$2;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController$2;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V

    const-string p3, "android.intent.action.PACKAGE_ADDED"

    const-string p4, "android.intent.action.PACKAGE_CHANGED"

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    filled-new-array {p3, p4, v0, v2}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/systemui/smartspace/GSAIntents;->getGsaPackageFilter([Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance p3, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/smartspace/SmartSpaceController$1;)V

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "com.google.android.apps.nexuslauncher.UPDATE_SMARTSPACE"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance p3, Lcom/google/android/systemui/smartspace/SmartSpaceBroadcastReceiver;

    invoke-direct {p3, p0}, Lcom/google/android/systemui/smartspace/SmartSpaceBroadcastReceiver;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V

    const-string p4, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {p1, p3, p2, p4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-class p1, Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/smartspace/SmartSpaceController;)Lcom/google/android/systemui/smartspace/SmartSpaceData;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->update()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->onGsaChanged()V

    return-void
.end method

.method static synthetic access$402(Lcom/google/android/systemui/smartspace/SmartSpaceController;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/systemui/smartspace/SmartSpaceController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->onExpire(Z)V

    return-void
.end method

.method private clearStore()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mStore:Lcom/google/android/systemui/smartspace/ProtoStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smartspace_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_true"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/google/android/systemui/smartspace/ProtoStore;->store(Lcom/google/protobuf/nano/MessageNano;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mStore:Lcom/google/android/systemui/smartspace/ProtoStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "_false"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lcom/google/android/systemui/smartspace/ProtoStore;->store(Lcom/google/protobuf/nano/MessageNano;Ljava/lang/String;)V

    return-void
.end method

.method private isSmartSpaceDisabledByExperiments()Z
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "always_on_display_constants"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    const-string p0, "smart_space_enabled"

    invoke-virtual {v0, p0, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SmartSpaceController"

    const-string v0, "Bad AOD constants"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v1

    :goto_0
    xor-int/2addr p0, v1

    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->onExpire(Z)V

    return-void
.end method

.method private synthetic lambda$onNewCard$1(Lcom/google/android/systemui/smartspace/NewCardInfo;Lcom/google/android/systemui/smartspace/SmartSpaceCard;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/NewCardInfo;->isPrimary()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    iput-object p2, p1, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    iput-object p2, p1, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    :goto_0
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->handleExpire()Z

    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->update()V

    return-void
.end method

.method private synthetic lambda$onNewCard$2(Lcom/google/android/systemui/smartspace/NewCardInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/smartspace/NewCardInfo;->toWrapper(Landroid/content/Context;)Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHidePrivateData:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHideWorkData:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mStore:Lcom/google/android/systemui/smartspace/ProtoStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smartspace_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/NewCardInfo;->isPrimary()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/systemui/smartspace/ProtoStore;->store(Lcom/google/protobuf/nano/MessageNano;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/NewCardInfo;->shouldDiscard()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/NewCardInfo;->isPrimary()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->fromWrapper(Landroid/content/Context;Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/systemui/smartspace/SmartSpaceController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceController$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/smartspace/NewCardInfo;Lcom/google/android/systemui/smartspace/SmartSpaceCard;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private loadSmartSpaceData(Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;
    .locals 4

    new-instance v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;

    invoke-direct {v0}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;-><init>()V

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mStore:Lcom/google/android/systemui/smartspace/ProtoStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smartspace_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/systemui/smartspace/ProtoStore;->load(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mContext:Landroid/content/Context;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, v0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->fromWrapper(Landroid/content/Context;Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private onExpire(Z)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmRegistered:Z

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->handleExpire()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "SmartSpaceController"

    const-string p1, "onExpire - cancelled"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->update()V

    :cond_2
    :goto_1
    return-void
.end method

.method private onGsaChanged()V
    .locals 3

    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SmartSpaceController"

    const-string v1, "onGsaChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAppContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.systemui.smartspace.ENABLE_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mSmartSpaceEnabledBroadcastSent:Z

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;

    invoke-interface {v1}, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;->onGsaChanged()V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private update()V
    .locals 11

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    const-string v1, "SmartSpaceController"

    if-eqz v0, :cond_0

    const-string v2, "update"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmRegistered:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mExpireAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v2, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iput-boolean v3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmRegistered:Z

    :cond_1
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {v2}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->getExpiresAtMillis()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    cmp-long v2, v6, v4

    if-lez v2, :cond_2

    iget-object v4, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mExpireAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mUiHandler:Landroid/os/Handler;

    const-string v8, "SmartSpace"

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmRegistered:Z

    :cond_2
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifying listeners data="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v3, v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;

    iget-object v4, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-interface {v2, v4}, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;->onSmartSpaceUpdated(Lcom/google/android/systemui/smartspace/SmartSpaceData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;->onSmartSpaceUpdated(Lcom/google/android/systemui/smartspace/SmartSpaceData;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHidePrivateData:Z

    iget-boolean p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHideWorkData:Z

    invoke-interface {p1, v0, p0}, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;->onSensitiveModeChanged(ZZ)V

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "SmartspaceController"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  initial broadcast: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mSmartSpaceEnabledBroadcastSent:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  weather "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  current "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "serialized:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    invoke-direct {p0, p3}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->loadSmartSpaceData(Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x1

    invoke-direct {p0, p3}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->loadSmartSpaceData(Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "disabled by experiment: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->isSmartSpaceDisabledByExperiments()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onNewCard(Lcom/google/android/systemui/smartspace/NewCardInfo;)V
    .locals 4

    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    const-string v1, "SmartSpaceController"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewCard: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/NewCardInfo;->getUserId()I

    move-result v2

    iget v3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    if-eq v2, v3, :cond_2

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignore card that belongs to another user target: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " current: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/smartspace/SmartSpaceController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceController$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/smartspace/NewCardInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public reloadData()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->loadSmartSpaceData(Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->loadSmartSpaceData(Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->update()V

    return-void
.end method

.method public removeListener(Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setHideSensitiveData(ZZ)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHidePrivateData:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHideWorkData:Z

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHidePrivateData:Z

    iput-boolean p2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHideWorkData:Z

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;

    invoke-interface {v3, p1, p2}, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;->onSensitiveModeChanged(ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->getCurrentCard()Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHidePrivateData:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->getCurrentCard()Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->isWorkProfile()Z

    move-result p1

    if-nez p1, :cond_2

    move p1, p2

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mHideWorkData:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->getCurrentCard()Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->isWorkProfile()Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, p2

    :cond_3
    if-nez p1, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->clearStore()V

    :cond_5
    return-void
.end method
