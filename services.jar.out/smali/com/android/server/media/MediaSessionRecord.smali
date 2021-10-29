.class public Lcom/android/server/media/MediaSessionRecord;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/media/MediaSessionRecordImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionRecord$MessageHandler;,
        Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;,
        Lcom/android/server/media/MediaSessionRecord$ControllerStub;,
        Lcom/android/server/media/MediaSessionRecord$SessionCb;,
        Lcom/android/server/media/MediaSessionRecord$SessionStub;
    }
.end annotation


# static fields
.field private static final ALWAYS_PRIORITY_STATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field private static final DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final OPTIMISTIC_VOLUME_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MediaSessionRecord"

.field private static final TRANSITION_PRIORITY_STATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAudioAttrs:Landroid/media/AudioAttributes;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

.field private final mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentVolume:I

.field private mDestroyed:Z

.field private mDuration:J

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:J

.field private final mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

.field private mIsActive:Z

.field private mLaunchIntent:Landroid/app/PendingIntent;

.field private final mLock:Ljava/lang/Object;

.field private mMaxVolume:I

.field private mMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

.field private mMetadata:Landroid/media/MediaMetadata;

.field private mMetadataDescription:Ljava/lang/String;

.field private mOptimisticVolume:I

.field private final mOwnerPid:I

.field private final mOwnerUid:I

.field private final mPackageName:Ljava/lang/String;

.field private mPlaybackState:Landroid/media/session/PlaybackState;

.field private mPolicies:I

.field private mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueTitle:Ljava/lang/CharSequence;

.field private mRatingType:I

.field private final mService:Lcom/android/server/media/MediaSessionService;

.field private final mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

.field private final mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

.field private final mSessionInfo:Landroid/os/Bundle;

.field private final mSessionToken:Landroid/media/session/MediaSession$Token;

.field private final mTag:Ljava/lang/String;

.field private final mUserId:I

.field private mVolumeControlId:Ljava/lang/String;

.field private mVolumeControlType:I

.field private mVolumeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "MediaSessionRecord"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x2

    aput-object v0, v2, v5

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaSessionRecord;->ALWAYS_PRIORITY_STATES:Ljava/util/List;

    new-array v0, v1, [Ljava/lang/Integer;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaSessionRecord;->TRANSITION_PRIORITY_STATES:Ljava/util/List;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaSessionRecord;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/media/MediaSessionService;Landroid/os/Looper;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDuration:J

    new-instance v1, Lcom/android/server/media/MediaSessionRecord$3;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionRecord$3;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    iput p2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    iput p3, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    iput-object p4, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionInfo:Landroid/os/Bundle;

    new-instance v1, Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    new-instance v2, Landroid/media/session/MediaSession$Token;

    invoke-direct {v2, p2, v1}, Landroid/media/session/MediaSession$Token;-><init>(ILandroid/media/session/ISessionController;)V

    iput-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionToken:Landroid/media/session/MediaSession$Token;

    new-instance v1, Lcom/android/server/media/MediaSessionRecord$SessionStub;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/media/MediaSessionRecord$SessionStub;-><init>(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord$1;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    new-instance v1, Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-direct {v1, p0, p5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionCallback;)V

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    iput-object p8, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {p8}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    invoke-direct {v3, p0, p9}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    sget-object v2, Lcom/android/server/media/MediaSessionRecord;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    iput-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    iput p10, p0, Lcom/android/server/media/MediaSessionRecord;->mPolicies:I

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->access$100(Lcom/android/server/media/MediaSessionRecord$SessionCb;)Landroid/media/session/ISessionCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$ControllerStub;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/media/MediaSessionRecord;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/media/MediaSessionRecord;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/server/media/MediaSessionRecord;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPolicies:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaButtonReceiverHolder;)Lcom/android/server/media/MediaButtonReceiverHolder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/media/MediaSessionRecord;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/MediaMetadata;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/media/MediaSessionRecord;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/media/MediaSessionRecord;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/media/MediaSessionRecord;->mDuration:J

    return-wide p1
.end method

.method static synthetic access$2102(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadataDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object p1
.end method

.method static synthetic access$2300()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/server/media/MediaSessionRecord;->ALWAYS_PRIORITY_STATES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2400()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/server/media/MediaSessionRecord;->TRANSITION_PRIORITY_STATES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/media/MediaSessionRecord;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/android/server/media/MediaSessionRecord;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    return p1
.end method

.method static synthetic access$3302(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/media/MediaSessionRecord;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->getControllerHolderIndexForCb(Landroid/media/session/ISessionControllerCallback;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$3800()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/MediaController$PlaybackInfo;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionRecord;->setVolumeTo(Ljava/lang/String;Ljava/lang/String;IIII)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushMetadataUpdate()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushPlaybackStateUpdate()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushQueueUpdate()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushQueueTitleUpdate()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushExtrasUpdate()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord;->pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushSessionDestroyed()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    return-object v0
.end method

.method private getControllerHolderIndexForCb(Landroid/media/session/ISessionControllerCallback;)I
    .locals 3

    invoke-interface {p1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$500(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;
    .locals 18

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v2

    return-object v0

    :cond_0
    iget-object v0, v1, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    iget-wide v3, v1, Lcom/android/server/media/MediaSessionRecord;->mDuration:J

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_4

    :cond_1
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_4

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v9

    sub-long v10, v14, v5

    long-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-long v9, v9

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v11

    add-long/2addr v9, v11

    cmp-long v11, v3, v7

    if-ltz v11, :cond_2

    cmp-long v11, v9, v3

    if-lez v11, :cond_2

    move-wide v9, v3

    move-wide/from16 v16, v9

    goto :goto_0

    :cond_2
    cmp-long v7, v9, v7

    if-gez v7, :cond_3

    const-wide/16 v9, 0x0

    move-wide/from16 v16, v9

    goto :goto_0

    :cond_3
    move-wide/from16 v16, v9

    :goto_0
    new-instance v7, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v7, v0}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v8

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v11

    move-wide/from16 v9, v16

    move-wide v12, v14

    invoke-virtual/range {v7 .. v13}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    invoke-virtual {v7}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    move-object v5, v0

    goto :goto_1

    :cond_5
    move-object v5, v2

    :goto_1
    return-object v5

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;
    .locals 11

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v1, 0x2

    if-ne v2, v1, :cond_1

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    :goto_0
    move v6, v1

    new-instance v1, Landroid/media/session/MediaController$PlaybackInfo;

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    iget v4, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    iget v5, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    iget-object v7, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    iget-object v8, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlId:Ljava/lang/String;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroid/media/session/MediaController$PlaybackInfo;-><init>(IIIILandroid/media/AudioAttributes;Ljava/lang/String;)V

    monitor-exit v0

    return-object v1

    :cond_1
    nop

    iget-object v6, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6}, Lcom/android/server/media/MediaSessionRecord;->getVolumeStream(Landroid/media/AudioAttributes;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v8

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    new-instance v10, Landroid/media/session/MediaController$PlaybackInfo;

    const/4 v3, 0x2

    const/4 v7, 0x0

    move-object v1, v10

    move v4, v8

    move v5, v9

    invoke-direct/range {v1 .. v7}, Landroid/media/session/MediaController$PlaybackInfo;-><init>(IIIILandroid/media/AudioAttributes;Ljava/lang/String;)V

    return-object v10

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getVolumeStream(Landroid/media/AudioAttributes;)I
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Lcom/android/server/media/MediaSessionRecord;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    sget-object v1, Lcom/android/server/media/MediaSessionRecord;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    move-result v1

    return v1

    :cond_1
    return v0
.end method

.method private logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callback package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$400(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private postAdjustLocalVolume(IIILjava/lang/String;IIZZI)V
    .locals 18

    move-object/from16 v10, p0

    move/from16 v11, p7

    sget-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjusting local volume, stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p1

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p2

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", asSystemService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", useSuggested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p8

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p8

    :goto_0
    if-eqz v11, :cond_1

    iget-object v0, v10, Lcom/android/server/media/MediaSessionRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    move-object v15, v0

    move/from16 v16, v1

    move/from16 v17, v2

    goto :goto_1

    :cond_1
    move-object/from16 v0, p4

    move/from16 v1, p6

    move/from16 v2, p5

    move-object v15, v0

    move/from16 v16, v1

    move/from16 v17, v2

    :goto_1
    iget-object v9, v10, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    new-instance v8, Lcom/android/server/media/MediaSessionRecord$2;

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v2, p8

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object v6, v15

    move/from16 v7, v16

    move-object v10, v8

    move/from16 v8, v17

    move-object v11, v9

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/server/media/MediaSessionRecord$2;-><init>(Lcom/android/server/media/MediaSessionRecord;ZIIILjava/lang/String;III)V

    invoke-virtual {v11, v10}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    :try_start_1
    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$500(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/media/session/ISessionControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string/jumbo v4, "unexpected exception in pushEvent"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_2

    :catch_1
    move-exception v3

    if-nez v0, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v4, "Removing dead callback in pushEvent"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    :goto_1
    nop

    :goto_2
    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private pushExtrasUpdate()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    :try_start_1
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$500(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/media/session/ISessionControllerCallback;->onExtrasChanged(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string/jumbo v5, "unexpected exception in pushExtrasUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_2

    :catch_1
    move-exception v4

    if-nez v0, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v5, "Removing dead callback in pushExtrasUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    :goto_1
    nop

    :goto_2
    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private pushMetadataUpdate()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    :try_start_1
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$500(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/media/session/ISessionControllerCallback;->onMetadataChanged(Landroid/media/MediaMetadata;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string/jumbo v5, "unexpected exception in pushMetadataUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_2

    :catch_1
    move-exception v4

    if-nez v0, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v5, "Removing dead callback in pushMetadataUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    :goto_1
    nop

    :goto_2
    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private pushPlaybackStateUpdate()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    :try_start_1
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$500(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/media/session/ISessionControllerCallback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string/jumbo v5, "unexpected exception in pushPlaybackStateUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_2

    :catch_1
    move-exception v4

    if-nez v0, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v5, "Removing dead callback in pushPlaybackStateUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    :goto_1
    nop

    :goto_2
    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private pushQueueTitleUpdate()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    :try_start_1
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$500(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/media/session/ISessionControllerCallback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string/jumbo v5, "unexpected exception in pushQueueTitleUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_2

    :catch_1
    move-exception v4

    if-nez v0, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v5, "Removing dead callback in pushQueueTitleUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    :goto_1
    nop

    :goto_2
    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private pushQueueUpdate()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/pm/ParceledListSlice;->setInlineCountLimit(I)V

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    :try_start_1
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$500(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/media/session/ISessionControllerCallback;->onQueueChanged(Landroid/content/pm/ParceledListSlice;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    const-string/jumbo v5, "unexpected exception in pushQueueUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_3

    :catch_1
    move-exception v4

    if-nez v0, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v5, "Removing dead callback in pushQueueUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    :goto_2
    nop

    :goto_3
    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private pushSessionDestroyed()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    :try_start_1
    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$500(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/session/ISessionControllerCallback;->onSessionDestroyed()V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v3, "unexpected exception in pushSessionDestroyed"

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v3, "Removing dead callback in pushSessionDestroyed"

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    :goto_1
    nop

    :goto_2
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private pushVolumeUpdate()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    :try_start_1
    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->access$500(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/media/session/ISessionControllerCallback;->onVolumeInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string/jumbo v5, "unexpected exception in pushVolumeUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    goto :goto_2

    :catch_1
    move-exception v4

    if-nez v0, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v5, "Removing dead callback in pushVolumeUpdate"

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/media/MediaSessionRecord;->logCallbackException(Ljava/lang/String;Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;Ljava/lang/Exception;)V

    :goto_1
    nop

    :goto_2
    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private setVolumeTo(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 12

    move-object v8, p0

    iget v0, v8, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, v8, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->getVolumeStream(Landroid/media/AudioAttributes;)I

    move-result v9

    move/from16 v3, p5

    iget-object v10, v8, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    new-instance v11, Lcom/android/server/media/MediaSessionRecord$1;

    move-object v0, v11

    move-object v1, p0

    move v2, v9

    move/from16 v4, p6

    move-object v5, p2

    move/from16 v6, p4

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/media/MediaSessionRecord$1;-><init>(Lcom/android/server/media/MediaSessionRecord;IIILjava/lang/String;II)V

    invoke-virtual {v10, v11}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(Ljava/lang/Runnable;)Z

    move-object v3, p1

    move v4, p3

    move/from16 v5, p4

    move/from16 v0, p5

    move/from16 v6, p6

    goto/16 :goto_0

    :cond_0
    iget v0, v8, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iget v0, v8, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    move/from16 v1, p5

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, v8, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-object v3, p1

    move v4, p3

    move/from16 v5, p4

    invoke-virtual {v1, p1, p3, v5, v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->setVolumeTo(Ljava/lang/String;III)V

    iget v1, v8, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-gez v1, :cond_2

    iget v1, v8, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    :cond_2
    iget v6, v8, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v8, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    iget-object v2, v8, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v6, v8, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v6}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, v8, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v6, v8, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v9, 0x3e8

    invoke-virtual {v2, v6, v9, v10}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v2, v8, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-eq v1, v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    :cond_3
    iget-object v2, v8, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    move/from16 v6, p6

    invoke-virtual {v2, v6, p0}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    sget-boolean v2, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set optimistic volume to "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v8, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " max is "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v8, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "MediaSessionRecord"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public adjustVolume(Ljava/lang/String;Ljava/lang/String;IIZIIZ)V
    .locals 15

    move-object v10, p0

    move/from16 v11, p6

    and-int/lit8 v12, p7, 0x4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionRecord;->checkPlaybackActiveState(Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->isSystemPriority()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v13, p7

    goto :goto_1

    :cond_1
    :goto_0
    and-int/lit8 v1, p7, -0x5

    move v13, v1

    :goto_1
    iget v1, v10, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    if-ne v1, v0, :cond_2

    iget-object v0, v10, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->getVolumeStream(Landroid/media/AudioAttributes;)I

    move-result v14

    move-object v0, p0

    move v1, v14

    move/from16 v2, p6

    move v3, v13

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p8

    move v9, v12

    invoke-direct/range {v0 .. v9}, Lcom/android/server/media/MediaSessionRecord;->postAdjustLocalVolume(IIILjava/lang/String;IIZZI)V

    move-object/from16 v8, p1

    move/from16 v9, p5

    goto/16 :goto_3

    :cond_2
    iget v0, v10, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/16 v0, 0x65

    const-string v6, "MediaSessionRecord"

    if-eq v11, v0, :cond_9

    const/16 v0, -0x64

    if-eq v11, v0, :cond_9

    const/16 v0, 0x64

    if-ne v11, v0, :cond_4

    move-object/from16 v8, p1

    move/from16 v9, p5

    goto/16 :goto_4

    :cond_4
    sget-boolean v7, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v7, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjusting volume, pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", asSystemService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p5

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    move-object/from16 v8, p1

    move/from16 v9, p5

    :goto_2
    iget-object v0, v10, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->adjustVolume(Ljava/lang/String;IIZI)V

    iget v0, v10, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-gez v0, :cond_6

    iget v0, v10, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    :cond_6
    add-int v1, v0, v11

    iput v1, v10, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    const/4 v2, 0x0

    iget v3, v10, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v10, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    iget-object v1, v10, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, v10, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, v10, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, v10, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v1, v10, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-eq v0, v1, :cond_7

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    :cond_7
    iget-object v1, v10, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1, v13, p0}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    if-eqz v7, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adjusted optimistic volume to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " max is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    return-void

    :cond_9
    move-object/from16 v8, p1

    move/from16 v9, p5

    :goto_4
    const-string v0, "Muting remote playback is not supported"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaSessionService;->onSessionDied(Lcom/android/server/media/MediaSessionRecordImpl;)V

    return-void
.end method

.method public checkPlaybackActiveState(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->isActive()Z

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->access$100(Lcom/android/server/media/MediaSessionRecord$SessionCb;)Landroid/media/session/ISessionCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/session/ISessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ownerPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ownerUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "launchIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mediaButtonReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rating type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "controllers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbackHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "audioAttrs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "volumeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", controlType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "metadata: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadataDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "queueTitle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Ljava/util/List;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getMediaButtonReceiver()Lcom/android/server/media/MediaButtonReceiverHolder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionBinder()Landroid/media/session/ISession;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    return-object v0
.end method

.method public getSessionPolicies()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPolicies:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSessionToken()Landroid/media/session/MediaSession$Token;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionToken:Landroid/media/session/MediaSession$Token;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    return v0
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isClosed()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPlaybackTypeLocal()Z
    .locals 2

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSystemPriority()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public setSessionPolicies(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mPolicies:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
