.class public final Lcom/google/android/systemui/smartspace/SmartSpaceController;
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
.field public static final DEBUG:Z


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public mAlarmRegistered:Z

.field public final mBackgroundHandler:Landroid/os/Handler;

.field public final mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

.field public final mExpireAlarmAction:Lcom/google/android/systemui/smartspace/SmartSpaceController$$ExternalSyntheticLambda0;

.field public mHidePrivateData:Z

.field public mHideWorkData:Z

.field public final mKeyguardMonitorCallback:Lcom/google/android/systemui/smartspace/SmartSpaceController$1;

.field public final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field public mSmartSpaceEnabledBroadcastSent:Z

.field public final mStore:Lcom/google/android/systemui/smartspace/ProtoStore;

.field public final mUiHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "SmartSpaceController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;Landroid/app/AlarmManager;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/dump/DumpManager;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/systemui/smartspace/SmartSpaceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mExpireAlarmAction:Lcom/google/android/systemui/smartspace/SmartSpaceController$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/systemui/smartspace/SmartSpaceController$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController$1;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mKeyguardMonitorCallback:Lcom/google/android/systemui/smartspace/SmartSpaceController$1;

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/smartspace/ProtoStore;

    invoke-direct {v1, p1}, Lcom/google/android/systemui/smartspace/ProtoStore;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mStore:Lcom/google/android/systemui/smartspace/ProtoStore;

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "smartspace-background"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    iput-object p3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mBackgroundHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    iput p3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    iput-object p4, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmManager:Landroid/app/AlarmManager;

    iput-object p5, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    new-instance p3, Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-direct {p3}, Lcom/google/android/systemui/smartspace/SmartSpaceData;-><init>()V

    iput-object p3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->isSmartSpaceDisabledByExperiments()Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->loadSmartSpaceData(Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object p2

    iput-object p2, p3, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->loadSmartSpaceData(Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object p4

    iput-object p4, p3, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->update()V

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->onGsaChanged()V

    new-instance p3, Lcom/google/android/systemui/smartspace/SmartSpaceController$2;

    invoke-direct {p3, p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController$2;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V

    const/4 p4, 0x4

    const-string p5, "android.intent.action.PACKAGE_ADDED"

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    filled-new-array {p5, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move v1, p2

    :goto_0
    if-ge v1, p4, :cond_1

    aget-object v2, p5, v1

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo p4, "package"

    invoke-virtual {v0, p4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string p4, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, p4, p2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const/4 p2, 0x2

    invoke-virtual {p1, p3, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance p3, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;

    invoke-direct {p3, p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    const-string p2, "com.google.android.apps.nexuslauncher.UPDATE_SMARTSPACE"

    invoke-direct {v2, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/systemui/smartspace/SmartSpaceBroadcastReceiver;

    iget-object p2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    invoke-direct {v1, p0, p2}, Lcom/google/android/systemui/smartspace/SmartSpaceBroadcastReceiver;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/android/systemui/broadcast/BroadcastSender;)V

    iget-object v4, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mUiHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    const-string v3, "android.permission.CAPTURE_AUDIO_HOTWORD"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const-class p1, Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p2, "SmartspaceController"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  initial broadcast: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mSmartSpaceEnabledBroadcastSent:Z

    const-string v1, "  weather "

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  current "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    iget-object v2, v2, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p2, "serialized:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->loadSmartSpaceData(Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->loadSmartSpaceData(Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "disabled by experiment: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->isSmartSpaceDisabledByExperiments()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final isSmartSpaceDisabledByExperiments()Z
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

    const-string/jumbo p0, "smart_space_enabled"

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

.method public final loadSmartSpaceData(Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;
    .locals 8

    new-instance v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;

    invoke-direct {v0}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;-><init>()V

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mStore:Lcom/google/android/systemui/smartspace/ProtoStore;

    const-string/jumbo v2, "smartspace_"

    invoke-static {v2}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProtoStore"

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/ProtoStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v1, v6

    new-array v6, v1, [B

    invoke-virtual {v5, v6, v2, v1}, Ljava/io/FileInputStream;->read([BII)I

    invoke-static {v0, v6}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v2, v4

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "unable to load data"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    const-string v1, "no cached data"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mContext:Landroid/content/Context;

    xor-int/2addr p1, v4

    invoke-static {p0, v0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->fromWrapper(Landroid/content/Context;Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onExpire(Z)V
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
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->update()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final onGsaChanged()V
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

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.systemui.smartspace.ENABLE_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastSender;->sendBroadcast(Landroid/content/Intent;)V

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

.method public final update()V
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    sget-boolean v1, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    const-string v2, "SmartSpaceController"

    if-eqz v1, :cond_0

    const-string/jumbo v3, "update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v3, v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmRegistered:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mExpireAlarmAction:Lcom/google/android/systemui/smartspace/SmartSpaceController$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iput-boolean v4, v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmRegistered:Z

    :cond_1
    iget-object v3, v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {v3}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->hasCurrent()Z

    move-result v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_3

    iget-object v5, v3, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    if-eqz v5, :cond_2

    move v5, v8

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    if-eqz v5, :cond_3

    iget-object v5, v3, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {v5}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v9

    iget-object v3, v3, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {v3}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->hasCurrent()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v3, v3, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {v3}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v9

    goto :goto_2

    :cond_4
    iget-object v3, v3, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    if-eqz v3, :cond_5

    move v5, v8

    goto :goto_1

    :cond_5
    move v5, v4

    :goto_1
    if-eqz v5, :cond_6

    invoke-virtual {v3}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->getExpiration()J

    move-result-wide v9

    :goto_2
    move-wide v13, v9

    goto :goto_3

    :cond_6
    move-wide v13, v6

    :goto_3
    cmp-long v3, v13, v6

    if-lez v3, :cond_7

    iget-object v11, v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v12, 0x0

    iget-object v3, v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mExpireAlarmAction:Lcom/google/android/systemui/smartspace/SmartSpaceController$$ExternalSyntheticLambda0;

    iget-object v5, v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mUiHandler:Landroid/os/Handler;

    const-string v15, "SmartSpace"

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    invoke-virtual/range {v11 .. v17}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    iput-boolean v8, v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmRegistered:Z

    :cond_7
    iget-object v3, v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_9

    if-eqz v1, :cond_8

    const-string v1, "notifying listeners data="

    invoke-static {v1}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_4
    if-ge v4, v2, :cond_9

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;

    iget-object v5, v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-interface {v3, v5}, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;->onSmartSpaceUpdated(Lcom/google/android/systemui/smartspace/SmartSpaceData;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method
