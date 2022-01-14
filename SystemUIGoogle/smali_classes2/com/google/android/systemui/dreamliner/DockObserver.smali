.class public Lcom/google/android/systemui/dreamliner/DockObserver;
.super Landroid/content/BroadcastReceiver;
.source "DockObserver.java"

# interfaces
.implements Lcom/android/systemui/dock/DockManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;,
        Lcom/google/android/systemui/dreamliner/DockObserver$GetFeaturesCallback;,
        Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthChallengeResponseCallback;,
        Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificateCallback;,
        Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthDigestsCallback;,
        Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeCallback;,
        Lcom/google/android/systemui/dreamliner/DockObserver$KeyExchangeCallback;,
        Lcom/google/android/systemui/dreamliner/DockObserver$SetFanCallback;,
        Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformationCallback;,
        Lcom/google/android/systemui/dreamliner/DockObserver$GetFanSimpleInformationCallback;,
        Lcom/google/android/systemui/dreamliner/DockObserver$GetInformationCallback;,
        Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresentCallback;,
        Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;,
        Lcom/google/android/systemui/dreamliner/DockObserver$GetFeatures;,
        Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;,
        Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthChallengeResponse;,
        Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthCertificate;,
        Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthDigests;,
        Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;,
        Lcom/google/android/systemui/dreamliner/DockObserver$SetFan;,
        Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;,
        Lcom/google/android/systemui/dreamliner/DockObserver$GetFanSimpleInformation;,
        Lcom/google/android/systemui/dreamliner/DockObserver$KeyExchangeWithDock;,
        Lcom/google/android/systemui/dreamliner/DockObserver$GetDockInfo;,
        Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresent;
    }
.end annotation


# static fields
.field static final ACTION_ALIGN_STATE_CHANGE:Ljava/lang/String; = "com.google.android.systemui.dreamliner.ALIGNMENT_CHANGE"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_CHALLENGE:Ljava/lang/String; = "com.google.android.systemui.dreamliner.ACTION_CHALLENGE"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_DOCK_UI_ACTIVE:Ljava/lang/String; = "com.google.android.systemui.dreamliner.ACTION_DOCK_UI_ACTIVE"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_DOCK_UI_IDLE:Ljava/lang/String; = "com.google.android.systemui.dreamliner.ACTION_DOCK_UI_IDLE"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_GET_DOCK_INFO:Ljava/lang/String; = "com.google.android.systemui.dreamliner.ACTION_GET_DOCK_INFO"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_KEY_EXCHANGE:Ljava/lang/String; = "com.google.android.systemui.dreamliner.ACTION_KEY_EXCHANGE"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_REBIND_DOCK_SERVICE:Ljava/lang/String; = "com.google.android.systemui.dreamliner.ACTION_REBIND_DOCK_SERVICE"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ACTION_START_DREAMLINER_CONTROL_SERVICE:Ljava/lang/String; = "com.google.android.apps.dreamliner.START"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final COMPONENTNAME_DREAMLINER_CONTROL_SERVICE:Ljava/lang/String; = "com.google.android.apps.dreamliner/.DreamlinerControlService"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final DEBUG:Z

.field static final EXTRA_ALIGN_STATE:Ljava/lang/String; = "align_state"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final EXTRA_CHALLENGE_DATA:Ljava/lang/String; = "challenge_data"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final EXTRA_CHALLENGE_DOCK_ID:Ljava/lang/String; = "challenge_dock_id"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final EXTRA_PUBLIC_KEY:Ljava/lang/String; = "public_key"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_SHOWING:Ljava/lang/String; = "showing"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final RESULT_NOT_FOUND:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final RESULT_OK:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static volatile mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static sIsDockingUiShowing:Z


# instance fields
.field private final mAlignmentStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/dock/DockManager$AlignmentStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/dock/DockManager$DockEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mContext:Landroid/content/Context;

.field private final mDockAlignmentController:Lcom/google/android/systemui/dreamliner/DockAlignmentController;

.field mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mDockState:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mDreamlinerGear:Landroid/widget/ImageView;

.field final mDreamlinerReceiver:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mDreamlinerServiceConn:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mFanLevel:I

.field private mIndicationController:Lcom/google/android/systemui/dreamliner/DockIndicationController;

.field private final mInterruptSuppressor:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;

.field mLastAlignState:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private mPhotoAction:Ljava/lang/Runnable;

.field private mPhotoPreview:Landroid/widget/FrameLayout;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private final mWirelessCharger:Lcom/google/android/systemui/dreamliner/WirelessCharger;


# direct methods
.method public static synthetic $r8$lambda$0DiK3Rj89ujrATdW8grLJKFfv_g(Lcom/google/android/systemui/dreamliner/DockObserver;Lcom/android/systemui/dock/DockManager$DockEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->lambda$addListener$0(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9US75gxDVyU6QIEY3FTTm5E7Kgg(Ljava/util/ArrayList;[B)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->lambda$createWpcAuthDigestsResponseBundle$4(Ljava/util/ArrayList;[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$Im8EFxwbYD6qcZxIjQRTaNxq6us(Lcom/google/android/systemui/dreamliner/DockObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->lambda$onFanLevelChange$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$R8VYfUvs-rdz6kYxxTGsqtNuuuA(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->lambda$configPhotoAction$3(Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xC08-WAotA1428Kfr4dV2QIxuvQ(Lcom/google/android/systemui/dreamliner/DockObserver;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->lambda$refreshFanLevel$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DLObserver"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->sIsDockingUiShowing:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/dreamliner/WirelessCharger;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;)V

    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerReceiver:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mLastAlignState:I

    iput v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mFanLevel:I

    new-instance v0, Lcom/google/android/systemui/dreamliner/DockObserver$2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/dreamliner/DockObserver$2;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;)V

    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mInterruptSuppressor:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;

    iput-object p7, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mContext:Landroid/content/Context;

    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    iput-object p7, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mClients:Ljava/util/List;

    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    iput-object p7, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mAlignmentStateListeners:Ljava/util/List;

    new-instance p7, Lcom/google/android/systemui/dreamliner/DockObserver$1;

    invoke-direct {p7, p0, p3, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$1;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/Context;)V

    iput-object p7, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Lcom/google/android/systemui/dreamliner/WirelessCharger;

    if-nez p2, :cond_0

    const-string p3, "DLObserver"

    const-string p7, "wireless charger is null, check dock component."

    invoke-static {p3, p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p4, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->getDockIntentFilter()Landroid/content/IntentFilter;

    move-result-object p3

    invoke-virtual {p1, p0, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Lcom/google/android/systemui/dreamliner/DockAlignmentController;

    invoke-direct {p1, p2, p0}, Lcom/google/android/systemui/dreamliner/DockAlignmentController;-><init>(Lcom/google/android/systemui/dreamliner/WirelessCharger;Lcom/google/android/systemui/dreamliner/DockObserver;)V

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockAlignmentController:Lcom/google/android/systemui/dreamliner/DockAlignmentController;

    invoke-interface {p5, v0}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;->addSuppressor(Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;)V

    iput-object p6, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->refreshFanLevel(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->stopDreamlinerService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/systemui/dreamliner/DockObserver;)Lcom/google/android/systemui/dreamliner/WirelessCharger;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Lcom/google/android/systemui/dreamliner/WirelessCharger;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/systemui/dreamliner/DockObserver;BBBLjava/util/ArrayList;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/systemui/dreamliner/DockObserver;->createWpcAuthChallengeResponseBundle(BBBLjava/util/ArrayList;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/android/systemui/dreamliner/DockObserver;J)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/dreamliner/DockObserver;->createGetFeatureResponse(J)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->sendDockIdleIntent(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->triggerKeyExchangeWithDock(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->triggerChallengeWithDock(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->tryTurnScreenOff(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/systemui/dreamliner/DockObserver;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/dreamliner/DockObserver;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/google/android/systemui/dreamliner/DockObserver;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->onDockStateChanged(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/systemui/dreamliner/DockObserver;)Lcom/google/android/systemui/dreamliner/DockIndicationController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mIndicationController:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->sendDockActiveIntent(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->configPhotoAction(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/android/systemui/dreamliner/DockObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->runPhotoAction()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/systemui/dreamliner/DockObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->handlePhotoFailure()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/systemui/dreamliner/DockObserver;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->refreshFanLevel(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/android/systemui/dreamliner/DockObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->notifyDreamlinerLatestFanLevel()V

    return-void
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/google/android/systemui/dreamliner/DockObserver;->sIsDockingUiShowing:Z

    return p0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/systemui/dreamliner/DockObserver;->startDreamlinerService(Landroid/content/Context;III)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/systemui/dreamliner/DockObserver;BLjava/util/ArrayList;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/dreamliner/DockObserver;->createKeyExchangeResponseBundle(BLjava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/systemui/dreamliner/DockObserver;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->createChallengeResponseBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/systemui/dreamliner/DockObserver;BBLjava/util/ArrayList;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/systemui/dreamliner/DockObserver;->createWpcAuthDigestsResponseBundle(BBLjava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/android/systemui/dreamliner/DockObserver;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->createWpcAuthCertificateResponseBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DLObserver"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private checkIsDockPresentIfNeeded(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Lcom/google/android/systemui/dreamliner/WirelessCharger;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->isWirelessCharging(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresent;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$IsDockPresent;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private configPhotoAction(Landroid/content/Intent;)V
    .locals 3

    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DLObserver"

    const-string v1, "handlePhotoAction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "android.intent.extra.RESULT_RECEIVER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    const-string v2, "enabled"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/google/android/systemui/dreamliner/DockGestureController;->setPhotoEnabled(Z)V

    :cond_2
    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mIndicationController:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    if-eqz p1, :cond_3

    new-instance p1, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v0}, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;)V

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mPhotoAction:Ljava/lang/Runnable;

    :cond_3
    return-void
.end method

.method private convertArrayListToPrimitiveArray(Ljava/util/ArrayList;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array v0, p0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private createChallengeResponseBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->convertArrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "challenge_response"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private createGetFeatureResponse(J)Landroid/os/Bundle;
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "charger_feature"

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method private createKeyExchangeResponseBundle(BLjava/util/ArrayList;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/systemui/dreamliner/DockObserver;->convertArrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "dock_id"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string p1, "dock_public_key"

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private createWpcAuthCertificateResponseBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->convertArrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "wpc_cert"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private createWpcAuthChallengeResponseBundle(BBBLjava/util/ArrayList;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BBB",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "max_protocol_ver"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string p1, "slot_populated_mask"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string p1, "cert_lsb"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    invoke-direct {p0, p4}, Lcom/google/android/systemui/dreamliner/DockObserver;->convertArrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p1

    const-string p2, "signature_r"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-direct {p0, p5}, Lcom/google/android/systemui/dreamliner/DockObserver;->convertArrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object p0

    const-string p1, "signature_s"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0
.end method

.method private createWpcAuthDigestsResponseBundle(BBLjava/util/ArrayList;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BB",
            "Ljava/util/ArrayList<",
            "[B>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "slot_populated_mask"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string p1, "slot_returned_mask"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    new-instance p2, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda4;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda4;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    const-string p2, "wpc_digests"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method private dispatchDockEvent(Lcom/android/systemui/dock/DockManager$DockEventListener;)V
    .locals 2

    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDockEvent mDockState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    invoke-interface {p1, p0}, Lcom/android/systemui/dock/DockManager$DockEventListener;->onEvent(I)V

    return-void
.end method

.method private getDockIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_REBIND_DOCK_SERVICE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_GET_FEATURES"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.google.android.systemui.dreamliner.ACTION_SET_FEATURES"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    return-object p0
.end method

.method private getDreamManagerInstance()Landroid/service/dreams/IDreamManager;
    .locals 0

    const-string p0, "dreams"

    invoke-static {p0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object p0

    return-object p0
.end method

.method private getFeatures(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "charger_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gF, id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "DLObserver"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "android.intent.extra.RESULT_RECEIVER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    if-eqz p1, :cond_2

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    const/4 p0, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeatures;

    invoke-direct {v0, p0, p1, v3, v4}, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeatures;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;J)V

    invoke-static {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handlePhotoFailure()V
    .locals 2

    const-string v0, "DLObserver"

    const-string v1, "Fail to launch photo"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->handlePhotoFailure()V

    :cond_0
    return-void
.end method

.method public static isDockingUiShowing()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->sIsDockingUiShowing:Z

    return v0
.end method

.method private isWirelessCharging(Landroid/content/Context;)Z
    .locals 3

    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "DLObserver"

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "null battery intent when checking plugged status"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p1

    :cond_1
    const/4 v1, -0x1

    const-string v2, "plugged"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    sget-boolean v1, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plugged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const/4 p1, 0x1

    :cond_3
    return p1
.end method

.method private synthetic lambda$addListener$0(Lcom/android/systemui/dock/DockManager$DockEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->dispatchDockEvent(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    return-void
.end method

.method private synthetic lambda$configPhotoAction$3(Landroid/os/ResultReceiver;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mIndicationController:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->showPromo(Landroid/os/ResultReceiver;)V

    return-void
.end method

.method private static synthetic lambda$createWpcAuthDigestsResponseBundle$4(Ljava/util/ArrayList;[B)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "wpc_digest"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$onFanLevelChange$2()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->notifyDreamlinerLatestFanLevel()V

    return-void
.end method

.method private synthetic lambda$refreshFanLevel$1(Ljava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Lcom/google/android/systemui/dreamliner/WirelessCharger;

    const-string v1, "DLObserver"

    if-nez v0, :cond_0

    const-string v0, "hint is UNKNOWN for null wireless charger HAL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mFanLevel:I

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Lcom/google/android/systemui/dreamliner/WirelessCharger;

    invoke-virtual {v0}, Lcom/google/android/systemui/dreamliner/WirelessCharger;->getFanLevel()I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mFanLevel:I

    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "command=2, l="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mFanLevel:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", spending time="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method private notifyDreamlinerAlignStateChanged(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->isDocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.systemui.dreamliner.ALIGNMENT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "align_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method private notifyDreamlinerLatestFanLevel()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify l="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mFanLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isDocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->isDocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->isDocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.systemui.dreamliner.ACTION_UPDATE_FAN_LEVEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mFanLevel:I

    const-string v2, "fan_level"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method private notifyForceEnabledAmbientDisplay(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->getDreamManagerInstance()Landroid/service/dreams/IDreamManager;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/service/dreams/IDreamManager;->forceAmbientDisplayEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string p0, "DLObserver"

    const-string p1, "DreamManager not found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_0
    :goto_0
    return-void
.end method

.method private onDockStateChanged(I)V
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dock state changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    iput p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mClients:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/dock/DockManager$DockEventListener;

    invoke-direct {p0, v2}, Lcom/google/android/systemui/dreamliner/DockObserver;->dispatchDockEvent(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mIndicationController:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->isDocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->setDocking(Z)V

    :cond_3
    if-nez v0, :cond_4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    iget p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mLastAlignState:I

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->notifyDreamlinerAlignStateChanged(I)V

    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->notifyDreamlinerLatestFanLevel()V

    :cond_4
    return-void
.end method

.method private refreshFanLevel(Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "DLObserver"

    const-string v1, "command=2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static runOnBackgroundThread(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_0
    sget-object v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private runPhotoAction()V
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mLastAlignState:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mPhotoAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mIndicationController:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    invoke-virtual {v0}, Lcom/google/android/systemui/dreamliner/DockIndicationController;->isPromoShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mPhotoAction:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3

    invoke-static {v1, v2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    :cond_1
    :goto_0
    return-void
.end method

.method private sendDockActiveIntent(Landroid/content/Context;)V
    .locals 1

    sget-boolean p0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "DLObserver"

    const-string v0, "sendDockActiveIntent()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.DOCK_ACTIVE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendDockIdleIntent(Landroid/content/Context;)V
    .locals 1

    sget-boolean p0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "DLObserver"

    const-string v0, "sendDockIdleIntent()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.DOCK_IDLE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setFeatures(Landroid/content/Intent;)V
    .locals 10

    const-string v0, "charger_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v0, "charger_feature"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v0, "android.intent.extra.RESULT_RECEIVER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/os/ResultReceiver;

    sget-boolean p1, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sF, id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", feature="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DLObserver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v5, :cond_3

    cmp-long p1, v6, v1

    if-eqz p1, :cond_2

    cmp-long p1, v8, v1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;JJ)V

    invoke-static {p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    const/4 p1, 0x0

    invoke-virtual {v5, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private declared-synchronized startDreamlinerService(Landroid/content/Context;III)V
    .locals 9

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->notifyForceEnabledAmbientDisplay(Z)V

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerServiceConn:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerReceiver:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;

    invoke-virtual {v1, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->registerReceiver(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/systemui/dreamliner/DockGestureController;

    iget-object v4, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerGear:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mPhotoPreview:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/view/View;

    iget-object v7, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    const-class v2, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/systemui/dreamliner/DockGestureController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/view/View;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V

    iput-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    iget-object v2, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.apps.dreamliner.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.apps.dreamliner/.DreamlinerControlService"

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "type"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "orientation"

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "id"

    invoke-virtual {v1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "occluded"

    new-instance p3, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;

    invoke-direct {p3, p1}, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Lcom/google/android/systemui/elmyra/gates/KeyguardVisibility;->isKeyguardOccluded()Z

    move-result p3

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance p2, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;

    invoke-direct {p2, p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerServiceConn:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;

    new-instance p3, Landroid/os/UserHandle;

    iget-object p4, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {p4}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result p4

    invoke-direct {p3, p4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v1, p2, v0, p3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {p1}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "DLObserver"

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerServiceConn:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;

    const-string p1, "DLObserver"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to bind Dreamliner service: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private stopDreamlinerService(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->notifyForceEnabledAmbientDisplay(Z)V

    invoke-direct {p0, v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->onDockStateChanged(I)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerServiceConn:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    const-class v1, Lcom/google/android/systemui/dreamliner/DockGestureController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/systemui/dreamliner/DockObserver;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v2, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    invoke-virtual {v0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->stopMonitoring()V

    iput-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockGestureController:Lcom/google/android/systemui/dreamliner/DockGestureController;

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerReceiver:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerBroadcastReceiver;->unregisterReceiver(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerServiceConn:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerServiceConn:Lcom/google/android/systemui/dreamliner/DockObserver$DreamlinerServiceConn;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DLObserver"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private triggerChallengeWithDock(Landroid/content/Intent;)V
    .locals 3

    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DLObserver"

    const-string v1, "triggerChallengeWithDock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "android.intent.extra.RESULT_RECEIVER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    if-eqz v0, :cond_4

    const/4 v1, -0x1

    const-string v2, "challenge_dock_id"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v1

    const-string v2, "challenge_data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_3

    array-length v2, p1

    if-lez v2, :cond_3

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;B[B)V

    invoke-static {v2}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private triggerKeyExchangeWithDock(Landroid/content/Intent;)V
    .locals 2

    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DLObserver"

    const-string v1, "triggerKeyExchangeWithDock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "android.intent.extra.RESULT_RECEIVER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    if-eqz v0, :cond_4

    const-string v1, "public_key"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_3

    array-length v1, p1

    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/android/systemui/dreamliner/DockObserver$KeyExchangeWithDock;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$KeyExchangeWithDock;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;[B)V

    invoke-static {v1}, Lcom/google/android/systemui/dreamliner/DockObserver;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private tryTurnScreenOff(Landroid/content/Context;)V
    .locals 2

    const-class p0, Landroid/os/PowerManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addAlignmentStateListener(Lcom/android/systemui/dock/DockManager$AlignmentStateListener;)V
    .locals 2

    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add alignment listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mAlignmentStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mAlignmentStateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V
    .locals 2

    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isDocked()Z
    .locals 2

    iget p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isHidden()Z
    .locals 1

    iget p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method onAlignStateChanged(I)V
    .locals 2

    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAlignStateChanged alignState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mLastAlignState:I

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mAlignmentStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/dock/DockManager$AlignmentStateListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/dock/DockManager$AlignmentStateListener;->onAlignmentStateChanged(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->runPhotoAction()V

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->notifyDreamlinerAlignStateChanged(I)V

    return-void
.end method

.method onFanLevelChange()V
    .locals 1

    new-instance v0, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/dreamliner/DockObserver$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;)V

    invoke-direct {p0, v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->refreshFanLevel(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive(); "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "com.google.android.systemui.dreamliner.ACTION_REBIND_DOCK_SERVICE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v2, "com.google.android.systemui.dreamliner.ACTION_GET_FEATURES"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v2, "com.google.android.systemui.dreamliner.ACTION_SET_FEATURES"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v1, v3

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->checkIsDockPresentIfNeeded(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/google/android/systemui/dreamliner/DockObserver;->getFeatures(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->updateCurrentDockingStatus(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p2}, Lcom/google/android/systemui/dreamliner/DockObserver;->setFeatures(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->stopDreamlinerService(Landroid/content/Context;)V

    sput-boolean v3, Lcom/google/android/systemui/dreamliner/DockObserver;->sIsDockingUiShowing:Z

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7073f927 -> :sswitch_5
        -0x6f14376c -> :sswitch_4
        0x2f94f923 -> :sswitch_3
        0x34980820 -> :sswitch_2
        0x3cbf870b -> :sswitch_1
        0x4e98453e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public registerDockAlignInfo()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDockAlignmentController:Lcom/google/android/systemui/dreamliner/DockAlignmentController;

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->registerAlignInfoListener()V

    return-void
.end method

.method public removeListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V
    .locals 2

    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockObserver;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mClients:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDreamlinerGear(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mDreamlinerGear:Landroid/widget/ImageView;

    return-void
.end method

.method public setIndicationController(Lcom/google/android/systemui/dreamliner/DockIndicationController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mIndicationController:Lcom/google/android/systemui/dreamliner/DockIndicationController;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public setPhotoPreview(Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mPhotoPreview:Landroid/widget/FrameLayout;

    return-void
.end method

.method final updateCurrentDockingStatus(Landroid/content/Context;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->notifyForceEnabledAmbientDisplay(Z)V

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->checkIsDockPresentIfNeeded(Landroid/content/Context;)V

    return-void
.end method
