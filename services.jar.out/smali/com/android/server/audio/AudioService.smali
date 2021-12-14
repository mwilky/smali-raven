.class public Lcom/android/server/audio/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioService$AsdProxy;,
        Lcom/android/server/audio/AudioService$AudioPolicyProxy;,
        Lcom/android/server/audio/AudioService$AudioDeviceArray;,
        Lcom/android/server/audio/AudioService$AudioServiceInternal;,
        Lcom/android/server/audio/AudioService$VolumeController;,
        Lcom/android/server/audio/AudioService$MyHdmiCecVolumeControlFeatureListener;,
        Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;,
        Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;,
        Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;,
        Lcom/android/server/audio/AudioService$SettingsObserver;,
        Lcom/android/server/audio/AudioService$AudioHandler;,
        Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;,
        Lcom/android/server/audio/AudioService$AudioSystemThread;,
        Lcom/android/server/audio/AudioService$VolumeStreamState;,
        Lcom/android/server/audio/AudioService$VolumeGroupState;,
        Lcom/android/server/audio/AudioService$BtProfileConnectionState;,
        Lcom/android/server/audio/AudioService$ConnectionState;,
        Lcom/android/server/audio/AudioService$LoadSoundEffectReply;,
        Lcom/android/server/audio/AudioService$SetModeDeathHandler;,
        Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;,
        Lcom/android/server/audio/AudioService$ForceControlStreamClient;,
        Lcom/android/server/audio/AudioService$StreamVolumeCommand;,
        Lcom/android/server/audio/AudioService$RoleObserver;,
        Lcom/android/server/audio/AudioService$Lifecycle;,
        Lcom/android/server/audio/AudioService$RestorableParameters;
    }
.end annotation


# static fields
.field private static final AUDIO_HAL_SERVICE_PREFIX:Ljava/lang/String; = "android.hardware.audio"

.field public static final BECOMING_NOISY_DELAY_MS:I = 0x3e8

.field private static final CHECK_MODE_FOR_UID_PERIOD_MS:I = 0x1770

.field static final CONNECTION_STATE_CONNECTED:I = 0x1

.field static final CONNECTION_STATE_DISCONNECTED:I = 0x0

.field protected static final DEBUG_AP:Z = false

.field protected static final DEBUG_COMM_RTE:Z = false

.field protected static final DEBUG_DEVICES:Z = false

.field protected static final DEBUG_MODE:Z = false

.field protected static final DEBUG_VOL:Z = false

.field private static final DEFAULT_STREAM_TYPE_OVERRIDE_DELAY_MS:I = 0x0

.field protected static final DEFAULT_VOL_STREAM_NO_PLAYBACK:I = 0x3

.field private static final DEVICE_MEDIA_UNMUTED_ON_PLUG_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_ADJUST_VOLUME:I = 0x1

.field private static final INDICATE_SYSTEM_READY_RETRY_DELAY_MS:I = 0x3e8

.field static final LOG_NB_EVENTS_DEVICE_CONNECTION:I = 0x1e

.field static final LOG_NB_EVENTS_DYN_POLICY:I = 0xa

.field static final LOG_NB_EVENTS_FORCE_USE:I = 0x14

.field static final LOG_NB_EVENTS_LIFECYCLE:I = 0x14

.field static final LOG_NB_EVENTS_PHONE_STATE:I = 0x14

.field static final LOG_NB_EVENTS_VOLUME:I = 0x28

.field protected static MAX_STREAM_VOLUME:[I = null

.field protected static final MIN_ALARM_ATTENUATION_NON_PRIVILEGED_DB:F = -36.0f

.field protected static MIN_STREAM_VOLUME:[I = null

.field private static final MSG_A2DP_DEV_CONFIG_CHANGE:I = 0x27

.field private static final MSG_ACCESSORY_PLUG_MEDIA_UNMUTE:I = 0x15

.field private static final MSG_AUDIO_SERVER_DIED:I = 0x4

.field private static final MSG_BROADCAST_MICROPHONE_MUTE:I = 0x1e

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0x9

.field private static final MSG_CHECK_MODE_FOR_UID:I = 0x1f

.field private static final MSG_CHECK_MUSIC_ACTIVE:I = 0xb

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME:I = 0xc

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME_FORCED:I = 0xd

.field private static final MSG_DISABLE_AUDIO_FOR_UID:I = 0x64

.field private static final MSG_DISPATCH_AUDIO_MODE:I = 0x28

.field private static final MSG_DISPATCH_AUDIO_SERVER_STATE:I = 0x17

.field private static final MSG_DYN_POLICY_MIX_STATE_UPDATE:I = 0x13

.field private static final MSG_ENABLE_SURROUND_FORMATS:I = 0x18

.field private static final MSG_HDMI_VOLUME_CHECK:I = 0x1c

.field private static final MSG_INDICATE_SYSTEM_READY:I = 0x14

.field private static final MSG_INIT_STREAMS_VOLUMES:I = 0x65

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x7

.field private static final MSG_NOTIFY_VOL_EVENT:I = 0x16

.field private static final MSG_OBSERVE_DEVICES_FOR_ALL_STREAMS:I = 0x1b

.field private static final MSG_PERSIST_MUSIC_ACTIVE_MS:I = 0x11

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_SAFE_VOLUME_STATE:I = 0xe

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PERSIST_VOLUME_GROUP:I = 0x2

.field private static final MSG_PLAYBACK_CONFIG_CHANGE:I = 0x1d

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x5

.field private static final MSG_RECORDING_CONFIG_CHANGE:I = 0x25

.field private static final MSG_REINIT_VOLUMES:I = 0x22

.field private static final MSG_SET_A2DP_DEV_CONNECTION_STATE:I = 0x26

.field private static final MSG_SET_ALL_VOLUMES:I = 0xa

.field private static final MSG_SET_DEVICE_STREAM_VOLUME:I = 0x1a

.field private static final MSG_SET_DEVICE_VOLUME:I = 0x0

.field private static final MSG_SET_FORCE_USE:I = 0x8

.field private static final MSG_STREAM_DEVICES_CHANGED:I = 0x20

.field private static final MSG_SYSTEM_READY:I = 0x10

.field private static final MSG_UNLOAD_SOUND_EFFECTS:I = 0xf

.field private static final MSG_UNMUTE_STREAM:I = 0x12

.field private static final MSG_UPDATE_A11Y_SERVICE_UIDS:I = 0x23

.field private static final MSG_UPDATE_AUDIO_MODE:I = 0x24

.field private static final MSG_UPDATE_RINGER_MODE:I = 0x19

.field private static final MSG_UPDATE_VOLUME_STATES_FOR_DEVICE:I = 0x21

.field private static final MUSIC_ACTIVE_POLL_PERIOD_MS:I = 0xea60

.field private static final PERSIST_DELAY:I = 0x1f4

.field private static final RINGER_MODE_NAMES:[Ljava/lang/String;

.field private static final SAFE_MEDIA_VOLUME_ACTIVE:I = 0x3

.field private static final SAFE_MEDIA_VOLUME_DISABLED:I = 0x1

.field private static final SAFE_MEDIA_VOLUME_INACTIVE:I = 0x2

.field private static final SAFE_MEDIA_VOLUME_NOT_CONFIGURED:I = 0x0

.field private static final SAFE_VOLUME_CONFIGURE_TIMEOUT_MS:I = 0x7530

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final STREAM_VOLUME_OPS:[I

.field private static final TAG:Ljava/lang/String; = "AS.AudioService"

.field private static final TOUCH_EXPLORE_STREAM_TYPE_OVERRIDE_DELAY_MS:I = 0x3e8

.field private static final UNMUTE_STREAM_DELAY:I = 0x15e

.field private static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX:I = 0x44aa200

.field private static final UNSET_INDEX:I = -0x1

.field private static final VALID_COMMUNICATION_DEVICE_TYPES:[I

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final VOL_ADJUST_END:I = 0x2

.field private static final VOL_ADJUST_NORMAL:I = 0x0

.field private static final VOL_ADJUST_START:I = 0x1

.field private static final mMetricsId:Ljava/lang/String; = "audio.service."

.field protected static mStreamVolumeAlias:[I

.field static final sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

.field static final sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

.field private static sIndependentA11yVolume:Z

.field static final sLifecycleLogger:Lcom/android/server/audio/AudioEventLogger;

.field private static sStreamOverrideDelayMs:I

.field private static final sVolumeGroupStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/audio/AudioService$VolumeGroupState;",
            ">;"
        }
    .end annotation
.end field

.field static final sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;


# instance fields
.field private final STREAM_VOLUME_ALIAS_DEFAULT:[I

.field private final STREAM_VOLUME_ALIAS_NONE:[I

.field private final STREAM_VOLUME_ALIAS_TELEVISION:[I

.field private final STREAM_VOLUME_ALIAS_VOICE:[I

.field mAbsVolumeMultiModeCaseDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessibilityServiceUids:[I

.field private final mAccessibilityServiceUidsLock:Ljava/lang/Object;

.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAssistantUid:I

.field private mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

.field private final mAudioPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/audio/AudioService$AudioPolicyProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioPolicyCounter:I

.field private final mAudioServerStateListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/audio/AudioService$AsdProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

.field private final mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

.field private volatile mAvrcpAbsVolSupported:Z

.field private mBtScoOnByApp:Z

.field private mCameraSoundForced:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentImeUid:I

.field private final mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

.field private mDockAudioMediaEnabled:Z

.field private mDockState:I

.field private final mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

.field private final mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

.field private mEnabledSurroundFormats:Ljava/lang/String;

.field private mEncodedSurroundMode:I

.field private mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field private final mExtVolumeControllerLock:Ljava/lang/Object;

.field mFixedVolumeDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

.field private final mForceControlStreamLock:Ljava/lang/Object;

.field mFullVolumeDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHasVibrator:Z

.field private mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

.field private mHdmiCecVolumeControlEnabled:Z

.field private final mHdmiClientLock:Ljava/lang/Object;

.field private mHdmiControlStatusChangeListenerCallback:Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;

.field private mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

.field private mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

.field private mHdmiSystemAudioSupported:Z

.field private mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

.field private mHomeSoundEffectEnabled:Z

.field private mHotwordDetectionServiceUid:I

.field private final mHotwordDetectionServiceUidLock:Ljava/lang/Object;

.field private mInputMethodServiceUid:I

.field private final mInputMethodServiceUidLock:Ljava/lang/Object;

.field private mIsCallScreeningModeSupported:Z

.field private final mIsSingleVolume:Z

.field private mLoweredFromNormalToVibrateTime:J

.field private mMcc:I

.field private final mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

.field private mMicMuteFromApi:Z

.field private mMicMuteFromPrivacyToggle:Z

.field private mMicMuteFromRestrictions:Z

.field private mMicMuteFromSwitch:Z

.field private mMicMuteFromSystemCached:Z

.field private mMode:Ljava/util/concurrent/atomic/AtomicInteger;

.field final mModeDispatchers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/IAudioModeDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mModeLogger:Lcom/android/server/audio/AudioEventLogger;

.field private final mMonitorRotation:Z

.field private mMusicActiveMs:I

.field private mMuteAffectedStreams:I

.field private mMyHdmiCecVolumeControlFeatureListener:Lcom/android/server/audio/AudioService$MyHdmiCecVolumeControlFeatureListener;

.field private mNavigationRepeatSoundEffectsEnabled:Z

.field private mNm:Landroid/app/NotificationManager;

.field private mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

.field private final mPlatformType:I

.field private final mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

.field private mPrescaleAbsoluteVolume:[F

.field private mPrevVolDirection:I

.field private mProjectionService:Landroid/media/projection/IMediaProjectionManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

.field private mRestorableParameters:Lcom/android/server/audio/AudioService$RestorableParameters;

.field private mRingerAndZenModeMutedStreams:I

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

.field private mRingerModeExternal:I

.field private volatile mRingtonePlayer:Landroid/media/IRingtonePlayer;

.field private final mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mRmtSbmxFullVolRefCount:I

.field mRoleObserver:Lcom/android/server/audio/AudioService$RoleObserver;

.field private mRttEnabled:Z

.field final mSafeMediaVolumeDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSafeMediaVolumeIndex:I

.field private mSafeMediaVolumeState:I

.field private final mSafeMediaVolumeStateLock:Ljava/lang/Object;

.field private mSafeUsbMediaVolumeDbfs:F

.field private mSafeUsbMediaVolumeIndex:I

.field private final mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

.field final mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

.field private mSfxHelper:Lcom/android/server/audio/SoundEffectsHelper;

.field private mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

.field private mSupportedSystemUsages:[I

.field private final mSupportedSystemUsagesLock:Ljava/lang/Object;

.field private mSupportsMicPrivacyToggle:Z

.field private mSurroundModeChanged:Z

.field private mSystemReady:Z

.field private final mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private final mUseFixedVolume:Z

.field private final mUseVolumeGroupAliases:Z

.field private final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field private final mUserRestrictionsListener:Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;

.field private mUserSelectedVolumeControlStream:Z

.field private mUserSwitchedReceived:Z

.field private mVibrateSetting:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoicePlaybackActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mVoicePlaybackActivityMonitor:Landroid/media/IPlaybackConfigDispatcher;

.field private final mVoiceRecordingActivityMonitor:Landroid/media/IRecordingConfigDispatcher;

.field private mVolumeControlStream:I

.field private final mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

.field private mVolumePolicy:Landroid/media/VolumePolicy;

.field private mZenModeAffectedStreams:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xc

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioService;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/server/audio/AudioService;->VALID_COMMUNICATION_DEVICE_TYPES:[I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioService;->DEVICE_MEDIA_UNMUTED_ON_PLUG_SET:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x20000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioService;->sVolumeGroupStates:Landroid/util/SparseArray;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v1, 0x14

    const-string v2, "audio services lifecycle"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/AudioService;->sLifecycleLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v2, 0x1e

    const-string/jumbo v3, "wired/A2DP/hearing aid device connection"

    invoke-direct {v0, v2, v3}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const-string v2, "force use (logged before setForceUse() is executed)"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v1, 0x28

    const-string/jumbo v2, "volume changes (logged when command received by AudioService)"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    const-string v0, "SILENT"

    const-string v1, "VIBRATE"

    const-string v2, "NORMAL"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x5
        0x7
        0x7
        0xf
        0x7
        0x7
        0xf
        0x7
        0xf
        0xf
        0xf
        0xf
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x22
        0x24
        0x23
        0x24
        0x25
        0x26
        0x27
        0x24
        0x24
        0x24
        0x40
        0x24
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x7
        0x3
        0x16
        0x1
        0x4
        0x17
        0x1a
        0xb
        0x1b
        0x5
        0x9
        0x13
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/android/server/audio/AudioSystemAdapter;->getDefaultAdapter()Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/audio/SystemServerAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/android/server/audio/SystemServerAdapter;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;Lcom/android/server/audio/AudioSystemAdapter;Lcom/android/server/audio/SystemServerAdapter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioSystemAdapter;Lcom/android/server/audio/SystemServerAdapter;)V
    .locals 27

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {p0 .. p0}, Landroid/media/IAudioService$Stub;-><init>()V

    new-instance v0, Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {v0, v7}, Lcom/android/server/audio/AudioService$VolumeController;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, v7, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, v7, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v7, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    const/16 v0, 0xc

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    new-array v2, v0, [I

    fill-array-data v2, :array_2

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_NONE:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, v7, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    iput-boolean v1, v7, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    new-instance v0, Lcom/android/server/audio/AudioService$1;

    invoke-direct {v0, v7}, Lcom/android/server/audio/AudioService$1;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, v7, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    const/4 v0, -0x1

    iput v0, v7, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    iput v1, v7, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    iput v1, v7, Lcom/android/server/audio/AudioService;->mZenModeAffectedStreams:I

    new-instance v2, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, v7, v3}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;

    invoke-direct {v2, v7, v3}, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mUserRestrictionsListener:Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    iput v1, v7, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    iput v0, v7, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    iput-boolean v1, v7, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    iput-object v3, v7, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    new-instance v2, Ljava/util/HashSet;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Integer;

    const/16 v5, 0x1000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/16 v5, 0x800

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/high16 v5, 0x40000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x2

    aput-object v5, v4, v9

    const v5, 0x40001

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x3

    aput-object v5, v4, v10

    const/high16 v5, 0x200000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v11, 0x4

    aput-object v5, v4, v11

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    new-array v4, v6, [Ljava/lang/Integer;

    const/high16 v5, 0x8000000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mAbsVolumeMultiModeCaseDevices:Ljava/util/Set;

    iput-boolean v6, v7, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    new-instance v2, Lcom/android/server/audio/AudioService$RestorableParameters;

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioService$RestorableParameters;-><init>(Lcom/android/server/audio/AudioService$1;)V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mRestorableParameters:Lcom/android/server/audio/AudioService$RestorableParameters;

    iput v1, v7, Lcom/android/server/audio/AudioService;->mDockState:I

    new-array v2, v10, [F

    fill-array-data v2, :array_4

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mPrescaleAbsoluteVolume:[F

    sget-object v2, Landroid/media/VolumePolicy;->DEFAULT:Landroid/media/VolumePolicy;

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iput v0, v7, Lcom/android/server/audio/AudioService;->mHotwordDetectionServiceUid:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mHotwordDetectionServiceUidLock:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    iput v0, v7, Lcom/android/server/audio/AudioService;->mInputMethodServiceUid:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mInputMethodServiceUidLock:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mSupportedSystemUsagesLock:Ljava/lang/Object;

    new-array v2, v6, [I

    const/16 v4, 0x11

    aput v4, v2, v1

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mSupportedSystemUsages:[I

    new-instance v2, Lcom/android/server/audio/AudioService$2;

    invoke-direct {v2, v7}, Lcom/android/server/audio/AudioService$2;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mUidObserver:Landroid/app/IUidObserver;

    iput-boolean v1, v7, Lcom/android/server/audio/AudioService;->mRttEnabled:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mVoicePlaybackActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Lcom/android/server/audio/AudioService$3;

    invoke-direct {v2, v7}, Lcom/android/server/audio/AudioService$3;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mVoicePlaybackActivityMonitor:Landroid/media/IPlaybackConfigDispatcher;

    new-instance v2, Lcom/android/server/audio/AudioService$4;

    invoke-direct {v2, v7}, Lcom/android/server/audio/AudioService$4;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mVoiceRecordingActivityMonitor:Landroid/media/IRecordingConfigDispatcher;

    iput v1, v7, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    iput-boolean v1, v7, Lcom/android/server/audio/AudioService;->mIsCallScreeningModeSupported:Z

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mModeDispatchers:Landroid/os/RemoteCallbackList;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    iput v1, v7, Lcom/android/server/audio/AudioService;->mMcc:I

    new-instance v2, Ljava/util/HashSet;

    new-array v4, v10, [Ljava/lang/Integer;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/high16 v5, 0x4000000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:Ljava/util/Set;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    iput-boolean v1, v7, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    new-instance v2, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;

    invoke-direct {v2, v7, v3}, Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mHdmiControlStatusChangeListenerCallback:Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;

    new-instance v2, Lcom/android/server/audio/AudioService$MyHdmiCecVolumeControlFeatureListener;

    invoke-direct {v2, v7, v3}, Lcom/android/server/audio/AudioService$MyHdmiCecVolumeControlFeatureListener;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mMyHdmiCecVolumeControlFeatureListener:Lcom/android/server/audio/AudioService$MyHdmiCecVolumeControlFeatureListener;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger;

    const/16 v3, 0x14

    const-string/jumbo v4, "phone state (logged after successful call to AudioSystem.setPhoneState(int, int))"

    invoke-direct {v2, v3, v4}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger;

    const/16 v3, 0xa

    const-string v4, "dynamic policy events (logged when command received by AudioService)"

    invoke-direct {v2, v3, v4}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    new-instance v2, Lcom/android/server/audio/AudioService$6;

    invoke-direct {v2, v7}, Lcom/android/server/audio/AudioService$6;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    iput v1, v7, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    sget-object v2, Lcom/android/server/audio/AudioService;->sLifecycleLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v4, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v5, "AudioService()"

    invoke-direct {v4, v5}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    iput-object v8, v7, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "appops"

    invoke-virtual {v8, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v9, p2

    iput-object v9, v7, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    move-object/from16 v12, p3

    iput-object v12, v7, Lcom/android/server/audio/AudioService;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v2

    iput v2, v7, Lcom/android/server/audio/AudioService;->mPlatformType:I

    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v7, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-class v2, Landroid/hardware/SensorPrivacyManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorPrivacyManagerInternal;

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    const-string/jumbo v2, "power"

    invoke-virtual {v8, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/os/PowerManager;

    const-string v2, "handleAudioEvent"

    invoke-virtual {v13, v6, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Lcom/android/server/audio/SoundEffectsHelper;

    invoke-direct {v2, v8}, Lcom/android/server/audio/SoundEffectsHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mSfxHelper:Lcom/android/server/audio/SoundEffectsHelper;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v8, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    :goto_0
    iput-boolean v2, v7, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    const-class v2, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v8, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v2, v6}, Landroid/hardware/SensorPrivacyManager;->supportsSensorToggle(I)Z

    move-result v2

    iput-boolean v2, v7, Lcom/android/server/audio/AudioService;->mSupportsMicPrivacyToggle:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x11100f1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v7, Lcom/android/server/audio/AudioService;->mUseVolumeGroupAliases:Z

    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    :goto_1
    if-ltz v4, :cond_3

    nop

    invoke-static {v4}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForStrategyWithLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-static {v5}, Landroid/media/AudioSystem;->getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v14

    if-eq v14, v0, :cond_1

    sget-object v15, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v14, v15, v4

    :cond_1
    invoke-static {v5}, Landroid/media/AudioSystem;->getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v15

    if-eq v15, v0, :cond_2

    sget-object v16, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aput v15, v16, v4

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    iget-boolean v4, v7, Lcom/android/server/audio/AudioService;->mUseVolumeGroupAliases:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    :goto_2
    sget-object v5, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    array-length v5, v5

    if-ge v4, v5, :cond_4

    sget-object v5, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v0, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const-string/jumbo v2, "ro.config.vc_call_vol_steps"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    if-eq v14, v0, :cond_5

    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v14, v2, v1

    :cond_5
    const-string/jumbo v2, "ro.config.vc_call_vol_default"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    if-eq v15, v0, :cond_6

    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v2, v2, v1

    if-gt v15, v2, :cond_6

    sget-object v2, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget v2, v2, v1

    if-lt v15, v2, :cond_6

    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v15, v2, v1

    goto :goto_3

    :cond_6
    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v4, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v4, v4, v1

    mul-int/2addr v4, v10

    div-int/2addr v4, v11

    aput v4, v2, v1

    :goto_3
    const-string/jumbo v2, "ro.config.media_vol_steps"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v0, :cond_7

    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v5, v2, v10

    :cond_7
    const-string/jumbo v2, "ro.config.media_vol_default"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v0, :cond_8

    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v2, v2, v10

    if-gt v4, v2, :cond_8

    sget-object v2, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget v2, v2, v10

    if-lt v4, v2, :cond_8

    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v4, v2, v10

    goto :goto_4

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v16, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v16, v16, v10

    div-int/lit8 v16, v16, 0x4

    aput v16, v2, v10

    goto :goto_4

    :cond_9
    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v16, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v16, v16, v10

    div-int/lit8 v16, v16, 0x3

    aput v16, v2, v10

    :goto_4
    const-string/jumbo v2, "ro.config.alarm_vol_steps"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-eq v10, v0, :cond_a

    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v10, v2, v11

    :cond_a
    const-string/jumbo v2, "ro.config.alarm_vol_default"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_b

    sget-object v16, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v3, v16, v11

    if-gt v2, v3, :cond_b

    sget-object v3, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v2, v3, v11

    goto :goto_5

    :cond_b
    sget-object v3, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v16, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v16, v16, v11

    mul-int/lit8 v16, v16, 0x6

    div-int/lit8 v16, v16, 0x7

    aput v16, v3, v11

    :goto_5
    const-string/jumbo v3, "ro.config.system_vol_steps"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v0, :cond_c

    sget-object v16, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v3, v16, v6

    :cond_c
    const-string/jumbo v11, "ro.config.system_vol_default"

    invoke-static {v11, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-eq v11, v0, :cond_d

    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v0, v0, v6

    if-gt v11, v0, :cond_d

    sget-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v11, v0, v6

    goto :goto_6

    :cond_d
    sget-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v18, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v18, v18, v6

    aput v18, v0, v6

    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->createAudioSystemThread()V

    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v0}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->updateAudioHalPids()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, v0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v7, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    iget-object v6, v7, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v20, 0x8

    const/16 v21, 0x2

    const/16 v22, 0x4

    if-eqz v0, :cond_e

    const/16 v19, 0xb

    move/from16 v23, v19

    goto :goto_7

    :cond_e
    move/from16 v23, v1

    :goto_7
    new-instance v1, Ljava/lang/String;

    move/from16 v26, v0

    const-string v0, "AudioService ctor"

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/16 v25, 0x0

    move-object/from16 v19, v6

    move-object/from16 v24, v1

    invoke-static/range {v19 .. v25}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "audio_safe_volume_state"

    const/4 v6, 0x0

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, v7, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/16 v1, 0xa

    mul-int/2addr v0, v1

    iput v0, v7, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v7}, Lcom/android/server/audio/AudioDeviceBroker;-><init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V

    iput-object v0, v7, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v0, Lcom/android/server/audio/RecordingActivityMonitor;

    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/audio/RecordingActivityMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mVoiceRecordingActivityMonitor:Landroid/media/IRecordingConfigDispatcher;

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v6}, Lcom/android/server/audio/RecordingActivityMonitor;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;Z)V

    const-string v1, "AS.AudioService"

    const/4 v6, 0x0

    invoke-direct {v7, v6, v1}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readUserRestrictions()V

    new-instance v1, Lcom/android/server/audio/PlaybackActivityMonitor;

    sget-object v6, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/16 v16, 0x4

    aget v6, v6, v16

    invoke-direct {v1, v8, v6}, Lcom/android/server/audio/PlaybackActivityMonitor;-><init>(Landroid/content/Context;I)V

    iput-object v1, v7, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    iget-object v6, v7, Lcom/android/server/audio/AudioService;->mVoicePlaybackActivityMonitor:Landroid/media/IPlaybackConfigDispatcher;

    move/from16 v16, v2

    const/4 v2, 0x1

    invoke-virtual {v1, v6, v2}, Lcom/android/server/audio/PlaybackActivityMonitor;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;Z)V

    new-instance v2, Lcom/android/server/audio/MediaFocusControl;

    iget-object v6, v7, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6, v1}, Lcom/android/server/audio/MediaFocusControl;-><init>(Landroid/content/Context;Lcom/android/server/audio/PlayerFocusEnforcer;)V

    iput-object v2, v7, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    invoke-static {}, Landroid/media/AudioSystem;->isCallScreeningModeSupported()Z

    move-result v1

    iput-boolean v1, v7, Lcom/android/server/audio/AudioService;->mIsCallScreeningModeSupported:Z

    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {v1}, Lcom/android/server/audio/SystemServerAdapter;->isPrivileged()Z

    move-result v1

    if-eqz v1, :cond_f

    const-class v1, Landroid/media/AudioManagerInternal;

    new-instance v2, Lcom/android/server/audio/AudioService$AudioServiceInternal;

    invoke-direct {v2, v7}, Lcom/android/server/audio/AudioService$AudioServiceInternal;-><init>(Lcom/android/server/audio/AudioService;)V

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget-object v2, v7, Lcom/android/server/audio/AudioService;->mUserRestrictionsListener:Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerInternal;->addUserRestrictionsListener(Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;)V

    invoke-virtual {v0}, Lcom/android/server/audio/RecordingActivityMonitor;->initMonitor()V

    :cond_f
    const-string/jumbo v0, "ro.audio.monitorRotation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0x65

    const/4 v6, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v20, v26

    move-object/from16 v0, p0

    move/from16 v21, v3

    move v3, v6

    move/from16 v22, v4

    move/from16 v4, v17

    move/from16 v17, v5

    move-object/from16 v5, v18

    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
        0x3
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x6
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
        0x3
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/RecordingActivityMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/server/audio/AudioService;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    return-object v0
.end method

.method static synthetic access$10002(Lcom/android/server/audio/AudioService;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    return-object p1
.end method

.method static synthetic access$10100(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mInputMethodServiceUidLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioHandler;)Lcom/android/server/audio/AudioService$AudioHandler;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$10200(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mInputMethodServiceUid:I

    return v0
.end method

.method static synthetic access$10202(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mInputMethodServiceUid:I

    return p1
.end method

.method static synthetic access$10308(Lcom/android/server/audio/AudioService;)I
    .locals 2

    iget v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    return v0
.end method

.method static synthetic access$10400(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setExtVolumeController(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioEventLogger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10802(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/IAudioPolicyCallback;)Landroid/media/audiopolicy/IAudioPolicyCallback;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    return-object p1
.end method

.method static synthetic access$10900(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$ForceControlStreamClient;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    return p1
.end method

.method static synthetic access$1902(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    return p1
.end method

.method static synthetic access$200(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SystemServerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/audio/AudioService;)[F
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPrescaleAbsoluteVolume:[F

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/audio/AudioService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isFullVolumeDevice(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/audio/AudioService;III)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/audio/AudioService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isFixedVolumeDevice(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/audio/AudioService;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStreamInt(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/audio/AudioService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onDispatchAudioServerStateChange(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SoundEffectsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSfxHelper:Lcom/android/server/audio/SoundEffectsHelper;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->onInitStreamsAndVolumes()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onCheckMusicActive(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onConfigureSafeVolume(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/audio/AudioService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onAccessoryPlugMediaUnmute(I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/audio/AudioService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onUnmuteStream(II)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onDynPolicyMixStateUpdate(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/audio/AudioService;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onEnableSurroundFormats(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->onUpdateRingerModeServiceInt()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onSetVolumeIndexOnDevice(Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/audio/AudioService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onObserveDevicesForAllStreams(I)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onCheckVolumeCecOnHdmiConnection(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/audio/AudioService;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onPlaybackConfigChange(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/audio/AudioService;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onRecordingConfigChange(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onUpdateVolumeStatesForAudioDevice(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onReinitVolumes(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->onUpdateAccessibilityServiceUids()V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    return v0
.end method

.method static synthetic access$6402(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    return p1
.end method

.method static synthetic access$6502(Lcom/android/server/audio/AudioService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mEnabledSurroundFormats:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerAndZenModeAffectedStreams()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/android/server/audio/AudioService;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/audio/AudioService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateMasterBalance(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSurroundModeChanged:Z

    return v0
.end method

.method static synthetic access$7102(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mSurroundModeChanged:Z

    return p1
.end method

.method static synthetic access$7200(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    return v0
.end method

.method static synthetic access$7402(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    return p1
.end method

.method static synthetic access$7500(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    return v0
.end method

.method static synthetic access$7600(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z

    return v0
.end method

.method static synthetic access$7702(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z

    return p1
.end method

.method static synthetic access$7800(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/server/audio/AudioService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSupportsMicPrivacyToggle:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/audio/AudioService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateAssistantUId(Z)V

    return-void
.end method

.method static synthetic access$8002(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromPrivacyToggle:Z

    return p1
.end method

.method static synthetic access$8100(Lcom/android/server/audio/AudioService;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method static synthetic access$8200(Lcom/android/server/audio/AudioService;)Landroid/hardware/SensorPrivacyManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/server/audio/AudioService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(I)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/audio/AudioService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/audio/AudioService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->handleAudioEffectBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$8702(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromRestrictions:Z

    return p1
.end method

.method static synthetic access$8800(Lcom/android/server/audio/AudioService;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->setMasterMuteInternalNoCallerCheck(ZII)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/android/server/audio/AudioService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateHdmiCecSinkLocked(Z)V

    return-void
.end method

.method static synthetic access$9202(Lcom/android/server/audio/AudioService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecVolumeControlEnabled:Z

    return p1
.end method

.method static synthetic access$9500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$VolumeController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/server/audio/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object v0
.end method

.method static synthetic access$9602(Lcom/android/server/audio/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object p1
.end method

.method static synthetic access$9700(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHotwordDetectionServiceUidLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/android/server/audio/AudioService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mHotwordDetectionServiceUid:I

    return v0
.end method

.method static synthetic access$9802(Lcom/android/server/audio/AudioService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mHotwordDetectionServiceUid:I

    return p1
.end method

.method static synthetic access$9900(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    return-object v0
.end method

.method private addAudioSystemDeviceOutToFixedVolumeDevices(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAudioSystemDeviceOutToFullVolumeDevices(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;IIZI)V
    .locals 20

    move-object/from16 v11, p0

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v7, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p6

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v7

    move/from16 v3, p2

    move/from16 v4, p1

    move/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    goto :goto_0

    :cond_0
    move/from16 v14, p6

    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->notifyExternalVolumeController(I)Z

    move-result v15

    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v1, "audio.service.adjustSuggestedStreamVolume"

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v0, v1, v12}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->CLIENT_NAME:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v0, v1, v13}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->DIRECTION:Landroid/media/MediaMetrics$Key;

    if-lez p1, :cond_1

    const-string/jumbo v2, "up"

    goto :goto_1

    :cond_1
    const-string v2, "down"

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->EXTERNAL:Landroid/media/MediaMetrics$Key;

    if-eqz v15, :cond_2

    const-string/jumbo v2, "yes"

    goto :goto_2

    :cond_2
    const-string/jumbo v2, "no"

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->FLAGS:Landroid/media/MediaMetrics$Key;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    if-eqz v15, :cond_3

    return-void

    :cond_3
    iget-object v1, v11, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, v11, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    iget v0, v11, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    move/from16 v10, p2

    goto :goto_6

    :cond_4
    move/from16 v10, p2

    invoke-direct {v11, v10}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result v0

    const/4 v3, 0x0

    if-eq v0, v2, :cond_6

    const/4 v4, 0x5

    if-ne v0, v4, :cond_5

    goto :goto_3

    :cond_5
    iget-object v4, v11, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/audio/AudioSystemAdapter;->isStreamActive(II)Z

    move-result v3

    goto :goto_4

    :cond_6
    :goto_3
    invoke-direct {v11, v0, v3}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v3

    :goto_4
    if-nez v3, :cond_8

    iget v4, v11, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    goto :goto_5

    :cond_7
    move v0, v4

    goto :goto_6

    :cond_8
    :goto_5
    move v4, v0

    :goto_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    move-result v9

    invoke-direct {v11, v0}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v8, v1, v0

    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_9

    if-eq v8, v2, :cond_9

    and-int/lit8 v1, p3, -0x5

    goto :goto_7

    :cond_9
    move/from16 v1, p3

    :goto_7
    iget-object v2, v11, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v2, v8, v1, v9}, Lcom/android/server/audio/AudioService$VolumeController;->suppressAdjustment(IIZ)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-boolean v2, v11, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-nez v2, :cond_a

    const/4 v2, 0x0

    and-int/lit8 v1, v1, -0x5

    and-int/lit8 v1, v1, -0x11

    move/from16 v17, v1

    move/from16 v16, v2

    goto :goto_8

    :cond_a
    move/from16 v16, p1

    move/from16 v17, v1

    :goto_8
    move-object/from16 v1, p0

    move v2, v0

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v18, v8

    move/from16 v8, p7

    move/from16 v19, v9

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;IIZI)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private broadcastMasterMuteStatus(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastRingerMode(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    move-result v1

    const-string v2, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private callerHasPermission(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private callingHasAudioSettingsPermission()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private callingOrSelfHasAudioSettingsPermission()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canChangeAccessibilityVolume()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_ACCESSIBILITY_VOLUME"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2

    aget v4, v4, v3

    if-ne v4, v1, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private canProjectAudio(Landroid/media/projection/IMediaProjection;)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "AS.AudioService"

    if-nez p1, :cond_0

    const-string v2, "MediaProjection is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getProjectionService()Landroid/media/projection/IMediaProjectionManager;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "Can\'t get service IMediaProjectionManager"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    :try_start_0
    invoke-interface {v2, p1}, Landroid/media/projection/IMediaProjectionManager;->isValidMediaProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "App passed invalid MediaProjection token"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    return v0

    :cond_2
    nop

    :try_start_1
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->canProjectAudio()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "App passed MediaProjection that can not project audio"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :cond_3
    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call .canProjectAudio() on valid IMediaProjection"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :catch_1
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call .isValidMediaProjection() on IMediaProjectionManager"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/media/projection/IMediaProjectionManager;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private checkAllAliasStreamVolumes()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v4, v3

    sget-object v6, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v6, v6, v3

    aget-object v4, v4, v6

    const-string v6, "AS.AudioService"

    invoke-virtual {v5, v4, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private checkAllFixedVolumeDevices()V
    .locals 3

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkAllFixedVolumeDevices(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    return-void
.end method

.method private checkForRingerModeChange(IIIZLjava/lang/String;I)I
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v1

    if-nez v1, :cond_14

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    const/16 v2, 0x64

    const-string v3, "AS.AudioService"

    const/16 v4, 0x65

    const/4 v5, 0x1

    const/4 v6, -0x1

    packed-switch v1, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkForRingerModeChange() wrong ringer mode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_0
    if-ne p2, v6, :cond_2

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_1

    if-gt p3, p1, :cond_11

    mul-int/lit8 v2, p3, 0x2

    if-ge p1, v2, :cond_11

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    goto/16 :goto_3

    :cond_1
    if-ne p1, p3, :cond_11

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v2, v2, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v2, :cond_11

    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v2, :cond_11

    if-eq p2, v4, :cond_3

    const/16 v2, -0x64

    if-ne p2, v2, :cond_11

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v0, v0, -0x2

    goto/16 :goto_3

    :pswitch_1
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v7, :cond_5

    const-string v2, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_5
    if-ne p2, v6, :cond_9

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v2, :cond_6

    mul-int/lit8 v2, p3, 0x2

    if-lt p1, v2, :cond_6

    if-eqz p4, :cond_6

    const/4 v1, 0x2

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    if-eq v2, v6, :cond_b

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v2, v2, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v2, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget v4, v4, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_7

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-interface {v4}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->canVolumeDownEnterSilent()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v1, 0x0

    :cond_7
    goto :goto_1

    :cond_8
    or-int/lit16 v0, v0, 0x800

    goto :goto_1

    :cond_9
    if-eq p2, v5, :cond_a

    if-eq p2, v4, :cond_a

    if-ne p2, v2, :cond_b

    :cond_a
    const/4 v1, 0x2

    :cond_b
    :goto_1
    and-int/lit8 v0, v0, -0x2

    goto :goto_3

    :pswitch_2
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v3, :cond_c

    if-ne p2, v6, :cond_c

    mul-int/lit8 v3, p3, 0x2

    if-lt p1, v3, :cond_c

    if-eqz p4, :cond_c

    const/4 v1, 0x2

    goto :goto_2

    :cond_c
    if-eq p2, v5, :cond_d

    if-eq p2, v4, :cond_d

    if-ne p2, v2, :cond_10

    :cond_d
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v2, v2, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    if-nez v2, :cond_e

    or-int/lit16 v0, v0, 0x80

    goto :goto_2

    :cond_e
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_f

    if-ne p2, v5, :cond_f

    const/4 v1, 0x1

    goto :goto_2

    :cond_f
    const/4 v1, 0x2

    :cond_10
    :goto_2
    and-int/lit8 v0, v0, -0x2

    nop

    :cond_11
    :goto_3
    invoke-direct {p0, p5}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v2, p5}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    and-int/lit16 v2, p6, 0x1000

    if-eqz v2, :cond_12

    goto :goto_4

    :cond_12
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Not allowed to change Do Not Disturb state"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    :goto_4
    const/4 v2, 0x0

    const-string v3, "AS.AudioService.checkForRingerModeChange"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    iput p2, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    return v0

    :cond_14
    :goto_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkMonitorAudioServerStatePermission()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not allowed to monitor audioserver state"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private checkMuteAffectedStreams()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1200(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1200(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1200(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    not-int v3, v3

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkNoteAppOp(IILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1, p1, p2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v0

    :cond_0
    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error noting op:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " on uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioService"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private checkSafeMediaVolume(III)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, p1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p3}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v1

    if-le p2, v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const-string v2, " / uid "

    const-string v3, " for pid "

    const-string v4, "AS.AudioService"

    if-nez v0, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    if-nez v5, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", unregistered policy"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    return-object v5
.end method

.method private checkVolumeRangeInitialization(Ljava/lang/String;)Z
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v5, v4}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-static {v5}, Landroid/media/AudioSystem;->getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v6

    if-ltz v6, :cond_1

    invoke-static {v5}, Landroid/media/AudioSystem;->getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v6

    if-gez v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    nop

    :cond_2
    if-nez v0, :cond_3

    sget-object v2, Lcom/android/server/audio/AudioService;->sLifecycleLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": initStreamVolume succeeded but invalid mix/max levels, will retry"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    const-string v5, "AS.AudioService"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(ILjava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0x22

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v10, 0x7d0

    move-object v9, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_3
    return v0

    :array_0
    .array-data 4
        0x4
        0x2
        0x3
        0x0
        0xa
    .end array-data
.end method

.method private createAudioSystemThread()V
    .locals 1

    new-instance v0, Lcom/android/server/audio/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$AudioSystemThread;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioSystemThread;->start()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->waitForAudioHandlerCreation()V

    return-void
.end method

.method private createStreamStates()V
    .locals 6

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    new-array v1, v0, [Lcom/android/server/audio/AudioService$VolumeStreamState;

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    sget-object v5, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v2, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$1;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateDefaultVolumes()V

    return-void
.end method

.method private discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->forget()V

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    return v2

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private dumpAccessibilityServiceUids(Ljava/io/PrintWriter;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSupportedSystemUsagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-lez v1, :cond_0

    const-string v1, "  Accessibility service Uids:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "  No accessibility service Uids."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpAudioMode(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "\nAudio mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Requested mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Actual mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "- Mode owner: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getAudioModeOwnerHandler()Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->dump(Ljava/io/PrintWriter;I)V

    goto :goto_0

    :cond_0
    const-string v1, "   None"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    const-string v1, "- Mode owner stack: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "   Empty"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->dump(Ljava/io/PrintWriter;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private dumpAudioPolicies(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "\nAudio policies:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpDeviceTypes(Ljava/util/Set;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private dumpRingerMode(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "\nRinger mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode (internal) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- mode (external) = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- zen mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    const-string v1, "affected"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    const-string/jumbo v1, "muted"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v0, "- delegate = "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method private dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 5

    const-string v0, "- ringer mode "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " streams = 0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p3, :cond_5

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v3, 0x2c

    if-ge v1, v2, :cond_2

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    and-int v4, p3, v2

    if-eqz v4, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    :cond_0
    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    not-int v3, v2

    and-int/2addr p3, v3

    const/4 v0, 0x0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_4

    if-nez v0, :cond_3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    :cond_3
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    :cond_4
    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private dumpStreamStates(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "\nStream volumes (device: index)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-static {v2, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1400(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "\n- mute affected streams = 0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private dumpSupportedSystemUsage(Ljava/io/PrintWriter;)V
    .locals 6

    const-string v0, "Supported System Usages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSupportedSystemUsagesLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSupportedSystemUsages:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    const-string v3, "\t%s\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget v2, v2, v1

    invoke-static {v2}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpVolumeGroups(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "\nVolume Groups (device: index)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeGroupStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$VolumeGroupState;

    invoke-static {v1, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->access$2400(Lcom/android/server/audio/AudioService$VolumeGroupState;Ljava/io/PrintWriter;)V

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private enforceModifyAudioRoutingPermission()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Missing MODIFY_AUDIO_ROUTING permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceQueryAudioStateForTest(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Doesn\'t have QUERY_AUDIO_STATE permission for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " test API"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "AS.AudioService"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private enforceQueryStateOrModifyRoutingPermission()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Missing MODIFY_AUDIO_ROUTING or QUERY_AUDIO_STATE permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private enforceSafeMediaVolume(Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v11

    invoke-direct {p0, v10}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v2

    if-le v11, v2, :cond_0

    invoke-direct {p0, v10}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v10, p1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v5, v10

    move-object v7, v0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private enforceVolumeController(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only SystemUI can "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private ensureValidAttributes(Landroid/media/audiopolicy/AudioVolumeGroup;)V
    .locals 4

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioVolumeGroup;->getAudioAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda4;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Volume Group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has no valid audio attributes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private ensureValidDirection(I)V
    .locals 3

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    nop

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method private ensureValidRingerMode(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad ringer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureValidStreamType(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private forceFocusDuckingForAccessibility(Landroid/media/AudioAttributes;II)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_6

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "a11y_force_ducking"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    if-nez p3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    if-eqz v4, :cond_4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    array-length v7, v6

    if-ge v5, v7, :cond_4

    aget v6, v6, v5

    if-ne v6, v4, :cond_3

    monitor-exit v3

    return v2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v3

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :goto_1
    return v0

    :cond_6
    :goto_2
    return v0
.end method

.method private getActiveStreamType(I)I
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const/4 v1, 0x3

    const/high16 v2, -0x80000000

    if-eqz v0, :cond_0

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x5

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoActive()Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v4

    :cond_2
    if-ne p1, v2, :cond_5

    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v5, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_3

    return v5

    :cond_3
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v6, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_4

    return v6

    :cond_4
    return v1

    :cond_5
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v6, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_6

    return v6

    :cond_6
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v5, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_7

    return v5

    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoActive()Z

    move-result v0

    if-eqz v0, :cond_8

    return v3

    :cond_8
    return v4

    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    sget v3, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-virtual {v0, v6, v3}, Lcom/android/server/audio/AudioSystemAdapter;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_a

    return v6

    :cond_a
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    sget v3, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-virtual {v0, v5, v3}, Lcom/android/server/audio/AudioSystemAdapter;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_b

    return v5

    :cond_b
    if-ne p1, v2, :cond_e

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    sget v2, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-virtual {v0, v6, v2}, Lcom/android/server/audio/AudioSystemAdapter;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_c

    return v6

    :cond_c
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    sget v2, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-virtual {v0, v5, v2}, Lcom/android/server/audio/AudioSystemAdapter;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_d

    return v5

    :cond_d
    return v1

    :cond_e
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getAudioHalPids()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    nop

    invoke-interface {v0}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    iget v5, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    const-string v6, "android.hardware.audio"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :cond_1
    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    return-object v1
.end method

.method private getAudioModeOwnerHandler()Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->isActive()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->isPrivileged()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getUpdateTime()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getUpdateTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    :cond_0
    move-object v1, v3

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getUpdateTime()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getUpdateTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    :cond_2
    move-object v0, v3

    :cond_3
    :goto_1
    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    move-object v2, v1

    goto :goto_2

    :cond_5
    move-object v2, v0

    :goto_2
    return-object v2
.end method

.method private getAudioVolumeGroupById(I)Landroid/media/audiopolicy/AudioVolumeGroup;
    .locals 3

    invoke-static {}, Landroid/media/audiopolicy/AudioVolumeGroup;->getAudioVolumeGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioVolumeGroup;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": invalid volume group id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requested"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private getCurrentUserId()I
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v2, 0x0

    return v2
.end method

.method private getDevicesForStreamInt(I)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getEnabledFormats()Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "encoded_surround_output_enabled_formats"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, ","

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;->INSTANCE:Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda3;-><init>(Ljava/util/HashSet;)V

    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AS.AudioService"

    const-string v4, "ENCODED_SURROUND_OUTPUT_ENABLED_FORMATS misformatted."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method private getHearingAidStreamType(I)I
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVoicePlaybackActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :pswitch_0
    return v0

    :cond_0
    const/4 v0, 0x3

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getIndexRange(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getNewRingerMode(III)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    return v0

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    return v0

    :cond_2
    :goto_0
    if-nez p2, :cond_5

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v0, v0, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    :goto_1
    nop

    goto :goto_2

    :cond_5
    const/4 v0, 0x2

    :goto_2
    return v0
.end method

.method private getProjectionService()Landroid/media/projection/IMediaProjectionManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    return-object v0
.end method

.method private getSafeUsbMediaVolumeIndex()I
    .locals 7

    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00b6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    :goto_0
    sub-int v3, v2, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    add-int v3, v2, v0

    div-int/lit8 v3, v3, 0x2

    const/high16 v4, 0x4000000

    invoke-static {v1, v3, v4}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    iget v5, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    cmpl-float v6, v4, v5

    if-nez v6, :cond_1

    move v0, v3

    goto :goto_2

    :cond_1
    cmpg-float v5, v4, v5

    if-gez v5, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    goto :goto_0

    :cond_3
    :goto_2
    mul-int/lit8 v1, v0, 0xa

    return v1
.end method

.method private static getSettingsNameForDeviceVolumeBehavior(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioService_DeviceVolumeBehavior_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUiDefaultRescaledIndex(II)I
    .locals 1

    sget-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget v0, v0, p1

    mul-int/lit8 v0, v0, 0xa

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private getVolumeGroupIdForAttributes(Landroid/media/AudioAttributes;)I
    .locals 2

    const-string v0, "attributes must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getVolumeGroupIdForAttributesInt(Landroid/media/AudioAttributes;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    sget-object v1, Landroid/media/audiopolicy/AudioProductStrategy;->sDefaultAttributes:Landroid/media/AudioAttributes;

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->getVolumeGroupIdForAttributesInt(Landroid/media/AudioAttributes;)I

    move-result v1

    return v1
.end method

.method private getVolumeGroupIdForAttributesInt(Landroid/media/AudioAttributes;)I
    .locals 4

    const-string v0, "attributes must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioProductStrategy;

    invoke-virtual {v1, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getVolumeGroupIdForAudioAttributes(Landroid/media/AudioAttributes;)I

    move-result v3

    if-eq v3, v2, :cond_0

    return v3

    :cond_0
    goto :goto_0

    :cond_1
    return v2
.end method

.method private handleAudioEffectBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effect broadcast already targeted to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v2, 0x20

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_1
    const-string v3, "couldn\'t find receiver package for effect intent"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleConfigurationChanged(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    move-object v2, v0

    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "AS.AudioService"

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v0

    move v3, v0

    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v0, v1, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v0, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    move v7, v0

    iput-boolean v3, v1, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    if-eqz v7, :cond_4

    iget-boolean v0, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const/4 v8, 0x7

    if-nez v0, :cond_2

    const-class v9, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v10, v0, v8

    if-eqz v3, :cond_1

    invoke-virtual {v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexesToMax()V

    iget v0, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v0, v0, -0x81

    iput v0, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_1

    :cond_1
    aget-object v0, v0, v5

    const-string v5, "AS.AudioService"

    invoke-virtual {v10, v0, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    iget v0, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v0, v0, 0x80

    iput v0, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    :goto_1
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {v1, v0, v6}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :cond_2
    :goto_2
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v5, 0x4

    if-eqz v3, :cond_3

    const/16 v6, 0xb

    goto :goto_3

    :cond_3
    nop

    :goto_3
    const-string v9, "handleConfigurationChanged"

    invoke-virtual {v0, v5, v6, v9}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v11, 0xa

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v15, v0, v8

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_4
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService$VolumeController;->setLayoutDirection(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "AS.AudioService"

    const-string v3, "Error handling configuration change: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-void
.end method

.method private hasAudioSettingsPermission(II)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v0, v1, p2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasDeviceVolumeBehavior(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->retrieveStoredDeviceVolumeBehavior(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private initA11yMonitoring()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->updateDefaultStreamOverrideDelay(Z)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityVolumeStreamActive()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->updateA11yVolumeAlias(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Landroid/os/Handler;)V

    invoke-virtual {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;Landroid/os/Handler;)V

    return-void
.end method

.method private initExternalEventReceivers()V
    .locals 8

    new-instance v0, Lcom/android/server/audio/AudioService$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$SettingsObserver;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-static {v1, v2}, Lcom/android/server/audio/RotationHelper;->init(Landroid/content/Context;Landroid/os/Handler;)V

    :cond_0
    const-string v1, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private initVolumeGroupStates()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getAudioVolumeGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioVolumeGroup;

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->ensureValidAttributes(Landroid/media/audiopolicy/AudioVolumeGroup;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    sget-object v2, Lcom/android/server/audio/AudioService;->sVolumeGroupStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioVolumeGroup;->getId()I

    move-result v3

    new-instance v4, Lcom/android/server/audio/AudioService$VolumeGroupState;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v1, v5}, Lcom/android/server/audio/AudioService$VolumeGroupState;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioVolumeGroup;Lcom/android/server/audio/AudioService$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeGroupStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$VolumeGroupState;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->applyAllVolumes()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private isAlarm(I)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAndroidNPlus(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x18

    if-lt v2, v4, :cond_0

    return v0

    :cond_0
    return v3

    :catch_0
    move-exception v1

    return v0
.end method

.method private isFixedVolumeDevice(I)Z
    .locals 2

    const v0, 0x8000

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0}, Lcom/android/server/audio/RecordingActivityMonitor;->isLegacyRemoteSubmixActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isFullVolumeDevice(I)Z
    .locals 2

    const v0, 0x8000

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0}, Lcom/android/server/audio/RecordingActivityMonitor;->isLegacyRemoteSubmixActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isMedia(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isMicrophoneSupposedToBeMuted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromSwitch:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromRestrictions:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromApi:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromPrivacyToggle:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isMuteAdjust(I)Z
    .locals 1

    const/16 v0, -0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isNotificationOrRinger(I)Z
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isPolicyRegisterAllowed(Landroid/media/audiopolicy/AudioPolicyConfig;ZZLandroid/media/projection/IMediaProjection;)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    or-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    or-int/lit8 v2, v2, 0x1

    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "AS.AudioService"

    const/4 v7, 0x0

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/audiopolicy/AudioMix;

    invoke-virtual {v5}, Landroid/media/audiopolicy/AudioMix;->getRule()Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/audiopolicy/AudioMixingRule;->allowPrivilegedMediaPlaybackCapture()Z

    move-result v8

    if-eqz v8, :cond_4

    nop

    invoke-virtual {v5}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v8

    invoke-static {v8}, Landroid/media/audiopolicy/AudioMix;->canBeUsedForPrivilegedMediaCapture(Landroid/media/AudioFormat;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_3
    or-int/lit8 v1, v1, 0x1

    :cond_4
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/media/audiopolicy/AudioMix;->containsMatchAttributeRuleForUsage(I)Z

    move-result v6

    const/4 v7, 0x3

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Landroid/media/audiopolicy/AudioMix;->getRouteFlags()I

    move-result v6

    if-ne v6, v7, :cond_6

    if-nez v3, :cond_5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v6

    :cond_5
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v5}, Landroid/media/audiopolicy/AudioMix;->getRouteFlags()I

    move-result v6

    if-ne v6, v7, :cond_7

    if-eqz p4, :cond_7

    or-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    or-int/lit8 v2, v2, 0x1

    :goto_3
    goto :goto_2

    :cond_8
    if-eqz v1, :cond_9

    const-string v4, "android.permission.CAPTURE_MEDIA_OUTPUT"

    invoke-direct {p0, v4}, Lcom/android/server/audio/AudioService;->callerHasPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-direct {p0, v4}, Lcom/android/server/audio/AudioService;->callerHasPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "Privileged audio capture requires CAPTURE_MEDIA_OUTPUT or CAPTURE_AUDIO_OUTPUT system permission"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_9
    const/4 v4, 0x1

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    const-string v5, "android.permission.CAPTURE_VOICE_COMMUNICATION_OUTPUT"

    invoke-direct {p0, v5}, Lcom/android/server/audio/AudioService;->callerHasPermission(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v4, "Audio capture for voice communication requires CAPTURE_VOICE_COMMUNICATION_OUTPUT system permission"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/audiopolicy/AudioMix;

    invoke-virtual {v8}, Landroid/media/audiopolicy/AudioMix;->getRule()Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/media/audiopolicy/AudioMixingRule;->setVoiceCommunicationCaptureAllowed(Z)V

    goto :goto_4

    :cond_b
    if-eqz v0, :cond_c

    invoke-direct {p0, p4}, Lcom/android/server/audio/AudioService;->canProjectAudio(Landroid/media/projection/IMediaProjection;)Z

    move-result v5

    if-nez v5, :cond_c

    return v7

    :cond_c
    if-eqz v2, :cond_d

    const-string v5, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-direct {p0, v5}, Lcom/android/server/audio/AudioService;->callerHasPermission(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v4, "Can not capture audio without MODIFY_AUDIO_ROUTING"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_d
    return v4
.end method

.method private isStreamMutedByRingerOrZenMode(I)Z
    .locals 3

    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSupportedSystemUsage(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSupportedSystemUsagesLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSupportedSystemUsages:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isSurroundFormat(I)Z
    .locals 5

    sget-object v0, Landroid/media/AudioFormat;->SURROUND_SOUND_ENCODING:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne v4, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isSystem(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isUiSoundsStreamType(I)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseVolumeGroupAliases:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    aget v3, v0, p1

    aget v0, v0, v2

    if-ne v3, v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, v2

    if-ne p1, v0, :cond_1

    move v1, v2

    :cond_1
    :goto_0
    return v1
.end method

.method private isValidAudioAttributesUsage(Landroid/media/AudioAttributes;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioAttributes;->isSystemUsage(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->callerHasPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isSupportedSystemUsage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    return v2
.end method

.method private isValidCommunicationDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 6

    sget-object v0, Lcom/android/server/audio/AudioService;->VALID_COMMUNICATION_DEVICE_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    if-ne v5, v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getHomeActivityForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    :cond_0
    const-string v2, "android.permission.RECORD_AUDIO"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v3, v2, v4, v5}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/16 v7, 0x2710

    if-ge v6, v7, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v7, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    const-string/jumbo v10, "killBackgroundUserProcessesWithAudioRecordPermission"

    invoke-interface {v7, v8, v9, v10}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const-string v7, "AS.AudioService"

    const-string v8, "Error calling killUid"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_4
    return-void

    :catch_1
    move-exception v3

    new-instance v4, Landroid/util/AndroidRuntimeException;

    invoke-direct {v4, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method static synthetic lambda$ensureValidAttributes$5(Landroid/media/AudioAttributes;)Z
    .locals 1

    sget-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->sDefaultAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v0}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$setPreferredDevicesForCapturePreset$3(Landroid/media/AudioDeviceAttributes;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setPreferredDevicesForCapturePreset$4(Landroid/media/AudioDeviceAttributes;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getRole()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$setPreferredDevicesForStrategy$1(Landroid/media/AudioDeviceAttributes;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setPreferredDevicesForStrategy$2(Landroid/media/AudioDeviceAttributes;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getRole()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static makeAlsaAddressString(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "card="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private maybeSendSystemAudioStatusCommand(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecVolumeControlEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v5

    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->isStreamMute(I)Z

    move-result v3

    invoke-virtual {v2, p1, v4, v5, v3}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->sendReportAudioStatusCecCommand(ZIIZ)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private maybeVibrate(Landroid/os/VibrationEffect;Ljava/lang/String;)Z
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, -0x2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    return v1

    :cond_2
    if-nez p1, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/android/server/audio/AudioService;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/media/AudioAttributes;)V

    return v2
.end method

.method private muteRingerModeStreams()V
    .locals 27

    move-object/from16 v1, p0

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    :cond_0
    iget v3, v1, Lcom/android/server/audio/AudioService;->mRingerMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v4

    :goto_1
    if-ne v3, v4, :cond_3

    iget-object v6, v1, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoActive()Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "muteRingerModeStreams() from u/pid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v10, 0x8

    const/4 v11, 0x2

    const/4 v12, 0x7

    if-eqz v6, :cond_4

    const/4 v8, 0x3

    move v13, v8

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    :goto_3
    const/4 v15, 0x0

    move-object v14, v7

    invoke-static/range {v9 .. v15}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    add-int/lit8 v8, v2, -0x1

    :goto_4
    if-ltz v8, :cond_e

    invoke-direct {v1, v8}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v9

    const/4 v10, 0x2

    if-eqz v6, :cond_6

    if-eq v8, v10, :cond_5

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    move v11, v4

    :goto_6
    invoke-direct {v1, v8}, Lcom/android/server/audio/AudioService;->shouldZenMuteStream(I)Z

    move-result v12

    if-nez v12, :cond_8

    if-eqz v5, :cond_7

    invoke-virtual {v1, v8}, Lcom/android/server/audio/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v13

    if-eqz v13, :cond_7

    if-eqz v11, :cond_7

    goto :goto_7

    :cond_7
    const/4 v13, 0x0

    goto :goto_8

    :cond_8
    :goto_7
    move v13, v4

    :goto_8
    if-ne v9, v13, :cond_9

    move/from16 v17, v2

    move/from16 v19, v3

    move v3, v4

    const/4 v2, 0x0

    goto/16 :goto_d

    :cond_9
    if-nez v13, :cond_d

    sget-object v14, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v14, v14, v8

    if-ne v14, v10, :cond_c

    const-class v10, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v10

    :try_start_0
    iget-object v14, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v14, v14, v8

    const/4 v15, 0x0

    :goto_9
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$2000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge v15, v0, :cond_b

    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$2000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$2000(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_a

    move/from16 v17, v2

    :try_start_1
    const-string v2, "AS.AudioService"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v19, v3

    move/from16 v18, v4

    const/16 v3, 0xa

    const/4 v4, 0x1

    :try_start_2
    invoke-virtual {v14, v3, v0, v2, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    goto :goto_a

    :catchall_0
    move-exception v0

    move/from16 v19, v3

    goto :goto_b

    :cond_a
    move/from16 v17, v2

    move/from16 v19, v3

    move/from16 v18, v4

    :goto_a
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v17

    move/from16 v3, v19

    const/4 v4, 0x1

    goto :goto_9

    :cond_b
    move/from16 v17, v2

    move/from16 v19, v3

    invoke-virtual {v1, v8}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v23

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v21, 0x1

    const/16 v22, 0x2

    const/16 v24, 0x0

    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v25, v2, v8

    const/16 v26, 0x1f4

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v26}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    monitor-exit v10

    goto :goto_c

    :catchall_1
    move-exception v0

    move/from16 v17, v2

    move/from16 v19, v3

    :goto_b
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_b

    :cond_c
    move/from16 v17, v2

    move/from16 v19, v3

    :goto_c
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)Z

    iget v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    const/4 v3, 0x1

    shl-int v4, v3, v8

    not-int v4, v4

    and-int/2addr v0, v4

    iput v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    goto :goto_d

    :cond_d
    move/from16 v17, v2

    move/from16 v19, v3

    move v3, v4

    const/4 v2, 0x0

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    invoke-virtual {v0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)Z

    iget v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    shl-int v4, v3, v8

    or-int/2addr v0, v4

    iput v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    :goto_d
    add-int/lit8 v8, v8, -0x1

    move v4, v3

    move/from16 v2, v17

    move/from16 v3, v19

    goto/16 :goto_4

    :cond_e
    return-void
.end method

.method private notifyExternalVolumeController(I)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x16

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v5, p1

    move-object v7, v1

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onAccessoryPlugMediaUnmute(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/audio/AudioService;->DEVICE_MEDIA_UNMUTED_ON_PLUG_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForStream(I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v1, v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)Z

    :cond_0
    return-void
.end method

.method private onCheckMusicActive(Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0xb

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v10, 0xea60

    move-object v9, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/android/server/audio/AudioSystemAdapter;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v1

    if-le v3, v1, :cond_1

    iget v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const v4, 0xea60

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const v4, 0x44aa200

    if-le v1, v4, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    iput v5, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->saveMusicActiveMs()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onCheckVolumeCecOnHdmiConnection(ILjava/lang/String;)V
    .locals 10

    const/4 v0, 0x1

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-ne p1, v0, :cond_3

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0xb

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v9, 0xea60

    move-object v8, p2

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->updateHdmiCecSinkLocked(Z)V

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->updateHdmiCecSinkLocked(Z)V

    :cond_4
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :cond_5
    :goto_1
    return-void
.end method

.method private onConfigureSafeVolume(ZLjava/lang/String;)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->mcc:I

    iget v2, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    if-ne v2, v1, :cond_0

    if-nez v2, :cond_6

    if-eqz p1, :cond_6

    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getSafeUsbMediaVolumeIndex()I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    const-string v2, "audio.safemedia.force"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x1110124

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    :goto_1
    const-string v5, "audio.safemedia.bypass"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v2, :cond_4

    if-nez v3, :cond_4

    const/4 v4, 0x3

    iget v5, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    iget v5, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    if-nez v5, :cond_3

    const/4 v5, 0x3

    iput v5, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iput v6, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    goto :goto_2

    :cond_4
    const/4 v5, 0x1

    iput v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    move v4, v5

    :cond_5
    :goto_2
    iput v1, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v7, 0xe

    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v9, v4

    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onDispatchAudioServerStateChange(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$AsdProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AsdProxy;->callback()Landroid/media/IAudioServerStateDispatcher;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/media/IAudioServerStateDispatcher;->dispatchAudioServerStateChange(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "AS.AudioService"

    const-string v5, "Could not call dispatchAudioServerStateChange()"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private onDynPolicyMixStateUpdate(Ljava/lang/String;I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getMixes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/audiopolicy/AudioMix;

    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioMix;->getRegistration()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    :try_start_1
    iget-object v1, v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyMixStateUpdate(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "AS.AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t call notifyMixStateUpdate() on IAudioPolicyCallback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v6}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    monitor-exit v0

    return-void

    :cond_0
    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private onEnableSurroundFormats(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroid/media/AudioFormat;->SURROUND_SOUND_ENCODING:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setSurroundFormatEnabled(IZ)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enable surround format:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AS.AudioService"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onInitStreamsAndVolumes()V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->createStreamStates()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->initVolumeGroupStates()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getSafeUsbMediaVolumeIndex()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    const/4 v1, 0x3

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1130003

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    aput v2, v1, v0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1130004

    invoke-virtual {v0, v2, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    aput v0, v1, v4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1130005

    invoke-virtual {v0, v2, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    const/4 v2, 0x2

    aput v0, v1, v2

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    const/4 v2, 0x0

    aget v3, v1, v0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    aget v2, v1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mPrescaleAbsoluteVolume:[F

    aget v3, v1, v0

    aput v3, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->initExternalEventReceivers()V

    const-string v0, "AudioService()"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->checkVolumeRangeInitialization(Ljava/lang/String;)Z

    return-void
.end method

.method private onObserveDevicesForAllStreams(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    if-eq v2, p1, :cond_0

    aget-object v3, v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioSystem;->generateAudioDeviceTypesSet(I)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "AudioService#onObserveDevicesForAllStreams"

    invoke-direct {p0, v7, v2, v8}, Lcom/android/server/audio/AudioService;->updateVolumeStates(IILjava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private onPlaybackConfigChange(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v6

    if-eq v6, v5, :cond_0

    if-ne v6, v4, :cond_1

    :cond_0
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v7

    if-ne v7, v5, :cond_1

    const/4 v0, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    move v2, v0

    :goto_1
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mVoicePlaybackActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eq v0, v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->updateHearingAidVolumeOnVoiceActivityUpdate()V

    :cond_3
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    const/4 v6, 0x2

    const/16 v7, 0x1770

    :try_start_0
    iget-object v8, v1, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v9}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->isActive()Z

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setPlaybackActive(Z)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v12}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v13

    invoke-virtual {v13}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v13

    invoke-virtual {v12}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v14

    invoke-virtual {v9}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getUid()I

    move-result v15

    if-ne v14, v15, :cond_5

    if-eq v13, v5, :cond_4

    if-ne v13, v4, :cond_5

    :cond_4
    invoke-virtual {v12}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v14

    if-ne v14, v5, :cond_5

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setPlaybackActive(Z)V

    goto :goto_4

    :cond_5
    goto :goto_3

    :cond_6
    :goto_4
    invoke-virtual {v9}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->isActive()Z

    move-result v11

    if-eq v10, v11, :cond_7

    const/4 v0, 0x1

    invoke-virtual {v9}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->isActive()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getAudioModeOwnerHandler()Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    move-result-object v11

    if-ne v9, v11, :cond_7

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_7
    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v10, 0x24

    const/4 v12, -0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move v11, v6

    move v15, v7

    invoke-static/range {v9 .. v15}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_9
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onRecordingConfigChange(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x1770

    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->isActive()Z

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setRecordingActive(Z)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioRecordingConfiguration;

    invoke-virtual {v8}, Landroid/media/AudioRecordingConfiguration;->getClientUid()I

    move-result v9

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getUid()I

    move-result v10

    if-ne v9, v10, :cond_0

    invoke-virtual {v8}, Landroid/media/AudioRecordingConfiguration;->getAudioSource()I

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_0

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setRecordingActive(Z)V

    goto :goto_2

    :cond_0
    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->isActive()Z

    move-result v7

    if-eq v6, v7, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->isActive()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getAudioModeOwnerHandler()Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    move-result-object v7

    if-ne v5, v7, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_2
    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v6, 0x24

    const/4 v8, -0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move v7, v2

    move v11, v3

    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onReinitVolumes(Ljava/lang/String;)V
    .locals 11

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    const-string v3, "AS.AudioService"

    if-ltz v2, :cond_1

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v2

    nop

    invoke-static {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    invoke-static {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1000(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    invoke-static {v2, v5, v6}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    move-result v5

    if-eqz v5, :cond_0

    move v1, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to initStreamVolume ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") for stream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    sget-object v2, Lcom/android/server/audio/AudioService;->sLifecycleLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v4, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": initStreamVolume failed with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " will retry"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(ILjava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0x22

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v10, 0x7d0

    move-object v9, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->checkVolumeRangeInitialization(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    sget-object v2, Lcom/android/server/audio/AudioService;->sLifecycleLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v4, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": initStreamVolume succeeded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(ILjava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    return-void
.end method

.method private onSetStreamVolume(IIIILjava/lang/String;Z)V
    .locals 8

    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, p1

    const/4 v5, 0x0

    move-object v1, p0

    move v2, v0

    move v3, p2

    move v4, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;Z)V

    and-int/lit8 v1, p3, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/audio/AudioService;->getNewRingerMode(III)I

    move-result v1

    const-string v3, "AS.AudioService.onSetStreamVolume"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    :cond_1
    const/4 v1, 0x6

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    if-nez p2, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)Z

    :cond_3
    return-void
.end method

.method private onSetVolumeIndexOnDevice(Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v1, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mStreamType:I

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->hasVolumeIndex()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->getVolumeIndex()I

    move-result v1

    iget v2, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mStreamType:I

    iget v3, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v1

    :cond_0
    iget v2, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    iget-object v3, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    sget-object v2, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " dev:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " volIdx:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " update vol on dev:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    :goto_0
    iget v1, p1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mDevice:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioService;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    return-void
.end method

.method private onUnmuteStream(II)V
    .locals 10

    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)Z

    move-result v2

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    move-object v4, p0

    move v5, p1

    move v7, v6

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIIII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->maybeSendSystemAudioStatusCommand(Z)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private onUpdateAccessibilityServiceUids()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Landroid/media/AudioSystem;->setA11yServicesUids([I)I

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onUpdateRingerModeServiceInt()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method private onUpdateVolumeStatesForAudioDevice(ILjava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-class v2, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    :try_start_1
    invoke-direct {p0, p1, v3, p2}, Lcom/android/server/audio/AudioService;->updateVolumeStates(IILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method private persistDeviceVolumeBehavior(II)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->getSettingsNameForDeviceVolumeBehavior(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x2

    invoke-static {v2, v3, p2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private postUpdateVolumeStatesForAudioDevice(ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x21

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method private queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 11

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-object v2, p0

    iget-object v3, v2, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v6, 0x2

    move-object v4, p1

    move v5, p2

    move v7, p3

    move v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method private static readAndSetLowRamDevice()V
    .locals 7

    const-string v0, "AS.AudioService"

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    const-wide/32 v2, 0x40000000

    :try_start_0
    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/app/IActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v5, v4, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v5

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "Cannot obtain MemoryInfo from ActivityManager, assume low memory device"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setLowRamDevice(ZJ)I

    move-result v4

    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AudioFlinger informed of device\'s low RAM attribute; status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private readAudioSettings(Z)V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readUserRestrictions()V

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ge v1, v0, :cond_4

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v1

    if-eqz p1, :cond_0

    sget-object v5, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v1

    if-ne v5, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    const-class v5, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v5

    :try_start_0
    invoke-static {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {v4, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1102(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z

    :cond_3
    monitor-exit v5

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "unsafe_volume_music_active_ms"

    const/4 v6, -0x2

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const v5, 0x44aa200

    invoke-static {v4, v3, v5}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    iput v3, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    iget v3, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-ne v3, v2, :cond_5

    const-string v2, "AS.AudioService"

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readVolumeGroupsSettings()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->restoreDeviceVolumeBehavior()V

    return-void

    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private readCameraSoundForced()Z
    .locals 3

    const-string v0, "audio.camerasound.force"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110045

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private readDockAudioSettings(Landroid/content/ContentResolver;)V
    .locals 10

    const-string v0, "dock_audio_media_enabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eqz v2, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    nop

    :goto_1
    move v7, v1

    new-instance v8, Ljava/lang/String;

    const-string/jumbo v0, "readDockAudioSettings"

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method private readPersistedSettings()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "mode_ringer"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    move v3, v1

    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x2

    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v5, :cond_2

    const/4 v3, 0x0

    :cond_2
    if-eq v3, v1, :cond_3

    const-string/jumbo v5, "mode_ringer"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v5, :cond_5

    :cond_4
    const/4 v3, 0x2

    :cond_5
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iput v3, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    iget v6, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    iput v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    :cond_6
    nop

    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    move v6, v2

    goto :goto_0

    :cond_7
    move v6, v7

    :goto_0
    invoke-static {v7, v4, v6}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v6

    iput v6, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    nop

    iget-boolean v8, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v8, :cond_8

    goto :goto_1

    :cond_8
    move v2, v7

    :goto_1
    invoke-static {v6, v7, v2}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerAndZenModeAffectedStreams()Z

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    const-string/jumbo v2, "readPersistedSettings"

    invoke-direct {p0, v0, v2}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(Landroid/content/ContentResolver;Ljava/lang/String;)V

    invoke-direct {p0, v0, v4}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    invoke-direct {p0, v4}, Lcom/android/server/audio/AudioService;->updateAssistantUId(Z)V

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mRttEnabled:Z

    invoke-static {v2}, Landroid/media/AudioSystem;->setRttEnabled(Z)I

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v2, "mute_streams_affected"

    const/16 v5, 0x6f

    const/4 v6, -0x2

    invoke-static {v0, v2, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateMasterBalance(Landroid/content/ContentResolver;)V

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    iget v5, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    invoke-direct {p0, v2, v5}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    const-string v2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    iget v5, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    invoke-direct {p0, v2, v5}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    invoke-direct {p0, v7}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    invoke-direct {p0, v4}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$VolumeController;->loadSettings(Landroid/content/ContentResolver;)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private readUserRestrictions()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const-string v2, "disallow_unmute_device"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const-string/jumbo v2, "no_adjust_volume"

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const-string/jumbo v3, "no_unmute_microphone"

    invoke-virtual {v2, v0, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromRestrictions:Z

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(I)V

    return-void
.end method

.method private readVolumeGroupsSettings()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeGroupStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$VolumeGroupState;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->readSettings()V

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->applyAllVolumes()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeAudioSystemDeviceOutFromFixedVolumeDevices(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private removeAudioSystemDeviceOutFromFullVolumeDevices(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private rescaleIndex(III)I
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->getIndexRange(I)I

    move-result v0

    invoke-direct {p0, p3}, Lcom/android/server/audio/AudioService;->getIndexRange(I)I

    move-result v1

    if-nez v0, :cond_0

    const-string v2, "AS.AudioService"

    const-string/jumbo v3, "rescaleIndex : index range should not be zero"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v2

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v3

    sub-int v3, p1, v3

    mul-int/2addr v3, v1

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    div-int/2addr v3, v0

    add-int/2addr v2, v3

    return v2
.end method

.method private rescaleStep(III)I
    .locals 4

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->getIndexRange(I)I

    move-result v0

    invoke-direct {p0, p3}, Lcom/android/server/audio/AudioService;->getIndexRange(I)I

    move-result v1

    if-nez v0, :cond_0

    const-string v2, "AS.AudioService"

    const-string/jumbo v3, "rescaleStep : index range should not be zero"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_0
    mul-int v2, p1, v1

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    div-int/2addr v2, v0

    return v2
.end method

.method private restoreDeviceVolumeBehavior()V
    .locals 4

    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->retrieveStoredDeviceVolumeBehavior(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "AudioService.restoreDeviceVolumeBehavior()"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/audio/AudioService;->setDeviceVolumeBehaviorInternal(IILjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private restoreVolumeGroups()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeGroupStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$VolumeGroupState;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->applyAllVolumes()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private retrieveStoredDeviceVolumeBehavior(I)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->getSettingsNameForDeviceVolumeBehavior(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private safeMediaVolumeIndex(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0

    :cond_0
    const/high16 v0, 0x4000000

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    return v0

    :cond_1
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    return v0
.end method

.method private static safeMediaVolumeStateToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "SAFE_MEDIA_VOLUME_ACTIVE"

    return-object v0

    :pswitch_1
    const-string v0, "SAFE_MEDIA_VOLUME_INACTIVE"

    return-object v0

    :pswitch_2
    const-string v0, "SAFE_MEDIA_VOLUME_DISABLED"

    return-object v0

    :pswitch_3
    const-string v0, "SAFE_MEDIA_VOLUME_NOT_CONFIGURED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private saveMusicActiveMs()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {v0}, Lcom/android/server/audio/SystemServerAdapter;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V
    .locals 12

    iget v0, p0, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "encoded_surround_output_enabled_formats"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mEnabledSurroundFormats:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mEnabledSurroundFormats:Ljava/lang/String;

    const-string v2, ","

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, v3, v6

    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/audio/AudioService;->isSurroundFormat(I)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_1

    :catch_0
    move-exception v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid enabled surround format:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "AS.AudioService"

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v2, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v0, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v6, 0x18

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v10, v4

    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method private sendEncodedSurroundMode(ILjava/lang/String;)V
    .locals 3

    const/16 v0, 0x10

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSurroundSoundSettings: illegal value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const/16 v0, 0xf

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xe

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xd

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    nop

    :goto_0
    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendEncodedSurroundMode(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2

    const-string v0, "encoded_surround_output"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(ILjava/lang/String;)V

    return-void
.end method

.method private sendMasterMuteUpdate(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->updateFlagsForTvPlatform(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->postMasterMuteChanged(I)V

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 4

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p6

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .locals 4

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setDeviceVolumeBehaviorInternal(IILjava/lang/String;)V
    .locals 4

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Absolute volume unsupported for now"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->removeAudioSystemDeviceOutFromFullVolumeDevices(I)V

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->addAudioSystemDeviceOutToFixedVolumeDevices(I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->addAudioSystemDeviceOutToFullVolumeDevices(I)V

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->removeAudioSystemDeviceOutFromFixedVolumeDevices(I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->removeAudioSystemDeviceOutFromFullVolumeDevices(I)V

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->removeAudioSystemDeviceOutFromFixedVolumeDevices(I)V

    nop

    :goto_0
    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Volume behavior "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for dev=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDeviceVolumeBehavior:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->postUpdateVolumeStatesForAudioDevice(ILjava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setExtVolumeController(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AS.AudioService"

    const-string v1, "Cannot set external volume controller: device not set for volume keys handled in PhoneWindowManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "AS.AudioService"

    const-string v2, "Cannot set external volume controller: existing controller"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setMasterMuteInternal(ZILjava/lang/String;III)V
    .locals 2

    const/16 v0, 0x3e8

    if-ne p4, v0, :cond_0

    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p5, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p4

    :cond_0
    if-nez p1, :cond_1

    const/16 v0, 0x21

    invoke-direct {p0, v0, p4, p3}, Lcom/android/server/audio/AudioService;->checkNoteAppOp(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p5, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1, p6, p4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/audio/AudioService;->setMasterMuteInternalNoCallerCheck(ZII)V

    return-void
.end method

.method private setMasterMuteInternalNoCallerCheck(ZII)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformAutomotive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isPlatformAutomotive()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    if-ne v0, p3, :cond_3

    :cond_2
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-eq p1, v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendMasterMuteUpdate(ZI)V

    :cond_3
    return-void
.end method

.method private setMicMuteFromSwitchInput()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->isMicMuted()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->isMicMuted()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteFromSwitch(Z)V

    :cond_1
    return-void
.end method

.method private setMicrophoneMuteNoCallerCheck(I)V
    .locals 13

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isMicrophoneSupposedToBeMuted()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v1

    if-eq v1, p1, :cond_0

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_5

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioSystemAdapter;->isMicrophoneMuted()Z

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v4, v0}, Lcom/android/server/audio/AudioSystemAdapter;->muteMicrophone(Z)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioSystemAdapter;->isMicrophoneMuted()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromSystemCached:Z

    if-eqz v4, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error changing mic mute state to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " current:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromSystemCached:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AS.AudioService"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v5, Landroid/media/MediaMetrics$Item;

    const-string v6, "audio.mic"

    invoke-direct {v5, v6}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v5

    sget-object v6, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v7, "setMicrophoneMuteNoCallerCheck"

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v5

    sget-object v6, Landroid/media/MediaMetrics$Property;->MUTE:Landroid/media/MediaMetrics$Key;

    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromSystemCached:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "on"

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "off"

    :goto_0
    invoke-virtual {v5, v6, v7}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v5

    sget-object v6, Landroid/media/MediaMetrics$Property;->REQUEST:Landroid/media/MediaMetrics$Key;

    if-eqz v0, :cond_3

    const-string/jumbo v7, "mute"

    goto :goto_1

    :cond_3
    const-string/jumbo v7, "unmute"

    :goto_1
    invoke-virtual {v5, v6, v7}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v5

    sget-object v6, Landroid/media/MediaMetrics$Property;->STATUS:Landroid/media/MediaMetrics$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaMetrics$Item;->record()Z

    if-eq v0, v1, :cond_4

    :try_start_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v7, 0x1e

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_4
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    :cond_5
    return-void
.end method

.method private setRingerMode(ILjava/lang/String;Z)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v10, p2

    iget-boolean v0, v1, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-nez v0, :cond_8

    iget-boolean v0, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v0, :cond_0

    move/from16 v2, p1

    goto/16 :goto_2

    :cond_0
    if-eqz v10, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidRingerMode(I)V

    const/4 v0, 0x1

    move/from16 v2, p1

    if-ne v2, v0, :cond_1

    iget-boolean v3, v1, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v3, :cond_1

    const/4 v2, 0x0

    move v11, v2

    goto :goto_0

    :cond_1
    move v11, v2

    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    :try_start_0
    iget-object v14, v1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v2

    move v15, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v3

    if-eqz p3, :cond_3

    invoke-direct {v1, v11}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V

    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v2, :cond_2

    iget-object v7, v1, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    move v4, v11

    move-object/from16 v5, p2

    move v6, v15

    invoke-interface/range {v2 .. v7}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result v2

    move v11, v2

    :cond_2
    if-eq v11, v15, :cond_6

    invoke-direct {v1, v11, v0}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    goto :goto_1

    :cond_3
    if-eq v11, v15, :cond_4

    invoke-direct {v1, v11, v0}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    :cond_4
    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v4, :cond_5

    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    move v5, v15

    move v6, v11

    move-object/from16 v7, p2

    move v8, v3

    invoke-interface/range {v4 .. v9}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result v0

    move v11, v0

    :cond_5
    invoke-direct {v1, v11}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V

    :cond_6
    :goto_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_7
    move/from16 v2, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad caller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move/from16 v2, p1

    :goto_2
    return-void
.end method

.method private setRingerModeExt(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    if-ne p1, v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setRingerModeInt(IZ)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->muteRingerModeStreams()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f4

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_1
    if-eqz v1, :cond_2

    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setSafeMediaVolumeEnabled(ZLjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz p1, :cond_0

    if-ne v1, v4, :cond_0

    iput v3, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-ne v1, v3, :cond_1

    iput v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    iput v2, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->saveMusicActiveMs()V

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0xea60

    move-object v7, p2

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setStreamVolume(IIILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 18

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v10, p4

    iget-boolean v0, v8, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v11, v0, v9

    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v12, v0, v11

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v13

    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    and-int/lit8 v0, v2, 0x40

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x3e8

    move/from16 v3, p6

    if-ne v3, v0, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static {v0, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    move v14, v0

    goto :goto_0

    :cond_2
    move v14, v3

    :goto_0
    sget-object v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    aget v0, v0, v11

    invoke-direct {v8, v0, v14, v10}, Lcom/android/server/audio/AudioService;->checkNoteAppOp(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-direct {v8, v10}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {v8, v11, v1, v2}, Lcom/android/server/audio/AudioService;->getNewRingerMode(III)I

    move-result v0

    invoke-direct {v8, v0}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0, v10}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Not allowed to change Do Not Disturb state"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    invoke-direct {v8, v11, v2}, Lcom/android/server/audio/AudioService;->volumeAdjustmentAllowedByDnd(II)Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v15, v8, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v15

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, v8, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    invoke-virtual {v12, v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    move v7, v0

    mul-int/lit8 v0, v1, 0xa

    invoke-direct {v8, v0, v9, v11}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move v1, v0

    const/4 v0, 0x3

    if-ne v11, v0, :cond_7

    :try_start_1
    sget-object v3, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_7

    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    div-int/lit8 v4, v1, 0xa

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->postSetAvrcpAbsoluteVolumeIndex(I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_7
    :goto_2
    const/high16 v3, 0x8000000

    if-ne v13, v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType()I

    move-result v3

    if-ne v9, v3, :cond_8

    const-string v3, "AS.AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStreamVolume postSetHearingAidVolumeIndex index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, v1, v9}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    :cond_8
    if-ne v11, v0, :cond_9

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v3

    invoke-direct {v8, v7, v1, v3, v2}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    and-int/lit8 v2, v2, -0x21

    if-ne v11, v0, :cond_c

    :try_start_2
    invoke-direct {v8, v13}, Lcom/android/server/audio/AudioService;->isFixedVolumeDevice(I)Z

    move-result v3

    if-eqz v3, :cond_c

    or-int/lit8 v2, v2, 0x20

    if-eqz v1, :cond_b

    iget v3, v8, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-ne v3, v0, :cond_a

    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:Ljava/util/Set;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-direct {v8, v13}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v3

    move v1, v3

    move v6, v1

    move v5, v2

    goto :goto_3

    :cond_a
    invoke-virtual {v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move v1, v3

    move v6, v1

    move v5, v2

    goto :goto_3

    :cond_b
    move v6, v1

    move v5, v2

    goto :goto_3

    :cond_c
    move v6, v1

    move v5, v2

    :goto_3
    :try_start_3
    invoke-direct {v8, v11, v6, v13}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-nez v1, :cond_d

    :try_start_4
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1, v5}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    new-instance v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    invoke-direct {v1, v9, v6, v5, v13}, Lcom/android/server/audio/AudioService$StreamVolumeCommand;-><init>(IIII)V

    iput-object v1, v8, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move/from16 v16, v5

    move v10, v7

    move v7, v6

    goto :goto_4

    :catchall_1
    move-exception v0

    move v2, v5

    move v1, v6

    goto :goto_5

    :cond_d
    move-object/from16 v1, p0

    move/from16 v2, p1

    move v3, v6

    move v4, v5

    move/from16 v16, v5

    move v5, v13

    move/from16 v17, v6

    move-object/from16 v6, p5

    move v10, v7

    move/from16 v7, p7

    :try_start_5
    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;Z)V

    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v9

    invoke-virtual {v1, v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move v7, v1

    :goto_4
    :try_start_6
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v1

    if-ne v11, v0, :cond_e

    if-eq v10, v7, :cond_e

    const/4 v0, 0x0

    :try_start_7
    invoke-direct {v8, v0}, Lcom/android/server/audio/AudioService;->maybeSendSystemAudioStatusCommand(Z)V

    :cond_e
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v1, p0

    move/from16 v2, p1

    move v3, v10

    move v4, v7

    move/from16 v5, v16

    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIIII)V

    return-void

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    move v1, v7

    move/from16 v2, v16

    goto :goto_5

    :catchall_4
    move-exception v0

    move/from16 v2, v16

    move/from16 v1, v17

    goto :goto_5

    :catchall_5
    move-exception v0

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v2, v16

    move/from16 v1, v17

    goto :goto_5

    :catchall_6
    move-exception v0

    :goto_5
    :try_start_9
    monitor-exit v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_5
.end method

.method private setStreamVolumeInt(IIIZLjava/lang/String;Z)V
    .locals 8

    invoke-direct {p0, p3}, Lcom/android/server/audio/AudioService;->isFullVolumeDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p5, p6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p4, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v4, p3

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method private setSystemAudioMute(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v3, p1}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioMute(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v3

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private setSystemAudioVolume(IIII)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v1, :cond_1

    if-eq p1, p2, :cond_1

    and-int/lit16 v1, p4, 0x100

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecVolumeControlEnabled:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v3, p1, p2, p3}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioVolume(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v3

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private shouldZenMuteStream(I)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    iget v5, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    nop

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v6

    if-eqz v3, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isAlarm(I)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_4
    if-eqz v4, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isMedia(I)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_5
    if-eqz v5, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isSystem(I)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    if-eqz v6, :cond_8

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isNotificationOrRinger(I)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    move v1, v2

    goto :goto_3

    :cond_8
    nop

    :goto_3
    return v1
.end method

.method private toEncodedSurroundOutputMode(II)I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x3

    const/16 v2, 0x1f

    if-gt p2, v2, :cond_0

    if-le p1, v1, :cond_0

    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    return v1

    :pswitch_1
    const/4 v0, 0x2

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    :pswitch_3
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private toEncodedSurroundSetting(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x3

    return v0

    :pswitch_1
    const/4 v0, 0x2

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private unregisterAudioPolicyInt(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.AudioService"

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    if-nez v1, :cond_0

    const-string v2, "AS.AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to unregister unknown audio policy for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateA11yVolumeAlias(Z)V
    .locals 4

    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    if-eq v0, p1, :cond_1

    sput-boolean p1, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    const/4 v0, 0x1

    const-string v1, "AS.AudioService"

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    sget-boolean v2, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService$VolumeController;->setA11yMode(I)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V

    :cond_1
    return-void
.end method

.method private updateAssistantUId(Z)V
    .locals 8

    const/4 v0, 0x0

    const-string v1, ""

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRoleObserver:Lcom/android/server/audio/AudioService$RoleObserver;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$RoleObserver;->getAssistantRoleHolder()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "AS.AudioService"

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "voice_interaction_service"

    const/4 v5, -0x2

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "assistant"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid service name for voice_interaction_service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    const-string v5, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {v2, v5, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateAssistantUId() could not find UID for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    iget v2, p0, Lcom/android/server/audio/AudioService;->mAssistantUid:I

    if-ne v0, v2, :cond_5

    if-eqz p1, :cond_6

    :cond_5
    invoke-static {v0}, Landroid/media/AudioSystem;->setAssistantUid(I)I

    iput v0, p0, Lcom/android/server/audio/AudioService;->mAssistantUid:I

    :cond_6
    return-void
.end method

.method private updateAudioHalPids()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getAudioHalPids()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AS.AudioService"

    const-string v2, "Could not retrieve audio HAL service pids"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda7;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setAudioHalPids([I)I

    return-void
.end method

.method private updateDefaultStreamOverrideDelay(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x3e8

    sput v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    :goto_0
    return-void
.end method

.method private updateDefaultVolumes()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, v0

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mUseVolumeGroupAliases:Z

    if-eqz v2, :cond_1

    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService;->getUiDefaultRescaledIndex(II)I

    move-result v2

    sget-object v3, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget v3, v3, v0

    if-lt v2, v3, :cond_1

    sget-object v3, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v3, v3, v0

    if-gt v2, v3, :cond_1

    sget-object v3, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v2, v3, v0

    goto :goto_1

    :cond_1
    if-eq v0, v1, :cond_2

    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService;->getUiDefaultRescaledIndex(II)I

    move-result v3

    aput v3, v2, v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateFlagsForTvPlatform(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecVolumeControlEnabled:Z

    if-eqz v1, :cond_0

    and-int/lit8 p1, p1, -0x2

    :cond_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateHdmiCecSinkLocked(Z)V
    .locals 2

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->hasDeviceVolumeBehavior(I)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->addAudioSystemDeviceOutToFullVolumeDevices(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->removeAudioSystemDeviceOutFromFullVolumeDevices(I)V

    :goto_0
    const-string v1, "HdmiPlaybackClient.DisplayStatusCallback"

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->postUpdateVolumeStatesForAudioDevice(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateHearingAidVolumeOnVoiceActivityUpdate()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v1

    sget-object v2, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mVoicePlaybackActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    const/4 v5, 0x6

    invoke-direct {v3, v5, v4, v0, v1}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IZII)V

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    mul-int/lit8 v3, v1, 0xa

    invoke-virtual {v2, v3, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    return-void
.end method

.method private updateMasterBalance(Landroid/content/ContentResolver;)V
    .locals 4

    const-string/jumbo v0, "master_balance"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterBalance(F)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "setMasterBalance failed for %f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.AudioService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateMasterMono(Landroid/content/ContentResolver;)V
    .locals 3

    const-string/jumbo v0, "master_mono"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    move v0, v1

    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterMono(Z)I

    return-void
.end method

.method private updateRingerAndZenModeAffectedStreams()Z
    .locals 6

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateZenModeAffectedStreams()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mode_ringer_streams_affected"

    const/16 v3, 0xa6

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v3, :cond_1

    nop

    invoke-interface {v3, v1}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->getRingerModeAffectedStreams(I)I

    move-result v1

    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    if-eqz v3, :cond_2

    and-int/lit16 v1, v1, -0x81

    goto :goto_1

    :cond_2
    or-int/lit16 v1, v1, 0x80

    :goto_1
    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/16 v5, 0x8

    aget v3, v3, v5

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    or-int/lit16 v1, v1, 0x100

    goto :goto_2

    :cond_3
    and-int/lit16 v1, v1, -0x101

    :goto_2
    iget v3, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    if-eq v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v2, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iput v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    const/4 v2, 0x1

    return v2

    :cond_4
    return v0
.end method

.method private updateStreamVolumeAlias(ZLjava/lang/String;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    const/4 v3, 0x3

    const/16 v4, 0xa

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    move v5, v0

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x1110160

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/16 v6, 0xb

    if-eqz v0, :cond_1

    move v3, v6

    goto :goto_1

    :cond_1
    nop

    :goto_1
    iget-boolean v0, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v0, :cond_2

    iget-object v7, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    sput-object v7, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/4 v7, 0x3

    goto :goto_2

    :cond_2
    iget-boolean v7, v1, Lcom/android/server/audio/AudioService;->mUseVolumeGroupAliases:Z

    if-eqz v7, :cond_3

    iget-object v7, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_NONE:[I

    sput-object v7, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/16 v7, 0x8

    goto :goto_2

    :cond_3
    iget v7, v1, Lcom/android/server/audio/AudioService;->mPlatformType:I

    packed-switch v7, :pswitch_data_0

    iget-object v7, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    sput-object v7, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/4 v7, 0x3

    goto :goto_2

    :pswitch_0
    iget-object v7, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    sput-object v7, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/4 v7, 0x2

    nop

    :goto_2
    const/4 v8, 0x0

    if-eqz v0, :cond_4

    iput v8, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_3

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v7, 0x0

    iget v0, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v0, v0, -0x101

    iput v0, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_3

    :cond_5
    iget v0, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v0, v0, 0x100

    iput v0, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    :goto_3
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/16 v9, 0x8

    aput v7, v0, v9

    aput v5, v0, v4

    aput v3, v0, v6

    if-eqz p1, :cond_7

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    if-eqz v0, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->updateDefaultVolumes()V

    iget-object v6, v1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    const-class v10, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v11, v0, v9

    aget-object v0, v0, v7

    invoke-virtual {v11, v0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v4

    sget-object v11, Landroid/provider/Settings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    aget-object v11, v11, v5

    invoke-static {v0, v11}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1502(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v11, v0, v4

    aget-object v0, v0, v5

    invoke-virtual {v11, v0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {v1, v0, v8}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v11, 0xa

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v15, v0, v9

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v18, 0xa

    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v6, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v22, v6, v4

    const/16 v23, 0x0

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v23}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_7
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateVibratorInfos()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/VibratorManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibratorManager;

    const-string v1, "AS.AudioService"

    if-nez v0, :cond_0

    const-string v2, "Vibrator manager is not found"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/VibratorManager;->getVibratorIds()[I

    move-result-object v2

    array-length v3, v2

    if-nez v3, :cond_1

    const-string v3, "No vibrator found"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget v6, v2, v5

    invoke-virtual {v0, v6}, Landroid/os/VibratorManager;->getVibrator(I)Landroid/os/Vibrator;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Vibrator("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") is not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "Cannot find any available vibrator"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-static {v3}, Landroid/media/AudioSystem;->setVibratorInfos(Ljava/util/List;)I

    return-void
.end method

.method private updateVolumeStates(IILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasIndexForDevice(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v0, p2

    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, p2

    aget-object v0, v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p1, p3, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    :cond_0
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->getDevicesForAttributesInt(Landroid/media/AudioAttributes;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v3

    invoke-static {p1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService;->isStreamMute(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)Z

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateZenModeAffectedStreams()Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v0, v0, 0x10

    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_1
    if-ne v2, v3, :cond_5

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v4}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v4

    iget v5, v4, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v5, v5, 0x20

    if-nez v5, :cond_2

    or-int/lit8 v0, v0, 0x10

    :cond_2
    iget v5, v4, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v5, v5, 0x40

    if-nez v5, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    iget v5, v4, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_4

    or-int/lit8 v0, v0, 0x2

    :cond_4
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v5

    if-eqz v5, :cond_5

    or-int/lit8 v0, v0, 0x20

    or-int/lit8 v0, v0, 0x4

    :cond_5
    :goto_0
    iget v4, p0, Lcom/android/server/audio/AudioService;->mZenModeAffectedStreams:I

    if-eq v4, v0, :cond_6

    iput v0, p0, Lcom/android/server/audio/AudioService;->mZenModeAffectedStreams:I

    return v3

    :cond_6
    return v1
.end method

.method private validateAudioAttributesUsage(Landroid/media/AudioAttributes;)V
    .locals 4

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioAttributes;->isSystemUsage(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->callerHasPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isSupportedSystemUsage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported usage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Missing MODIFY_AUDIO_ROUTING permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return-void
.end method

.method private verifySystemUsages([I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget v1, p1, v0

    invoke-static {v1}, Landroid/media/AudioAttributes;->isSystemUsage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-system usage provided: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method private volumeAdjustmentAllowedByDnd(II)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isUiSoundsStreamType(I)Z

    move-result v0

    if-nez v0, :cond_1

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    return v1

    :pswitch_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private waitForAudioHandlerCreation()V
    .locals 3

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "AS.AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private wasStreamActiveRecently(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioSystemAdapter;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioSystemAdapter;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private wouldToggleZenMode(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I
    .locals 3

    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v1, "audio.service.focus"

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v0, v1, p4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->CLIENT_NAME:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string v2, "abandonAudioFocus"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-direct {p0, p3}, Lcom/android/server/audio/AudioService;->isValidAudioAttributesUsage(Landroid/media/AudioAttributes;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AS.AudioService"

    const-string v2, "Request using unsupported usage."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v2, "unsupported usage"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/audio/MediaFocusControl;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public abandonAudioFocusForTest(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I
    .locals 1

    const-string v0, "focus abandon"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceQueryAudioStateForTest(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/audio/MediaFocusControl;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public addMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    const-string v1, "Cannot add AudioMix in audio policy"

    invoke-direct {p0, p2, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->addMixes(Ljava/util/ArrayList;)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    nop

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public adjustStreamVolume(IIILjava/lang/String;)V
    .locals 13

    const/16 v0, 0xa

    move v11, p1

    if-ne v11, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->canChangeAccessibilityVolume()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to call adjustStreamVolume() for a11y withoutCHANGE_ACCESSIBILITY_VOLUME / callingPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p4

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object/from16 v12, p4

    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v7, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v2, 0x1

    move-object v1, v7

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    nop

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->callingHasAudioSettingsPermission()Z

    move-result v9

    const/4 v10, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;IIZI)V

    return-void
.end method

.method protected adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;IIZI)V
    .locals 28

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v0, p6

    move/from16 v11, p7

    move/from16 v12, p9

    iget-boolean v1, v8, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {v8, v10}, Lcom/android/server/audio/AudioService;->ensureValidDirection(I)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    invoke-direct {v8, v10}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz v13, :cond_3

    if-eqz v9, :cond_2

    const/4 v1, 0x6

    if-ne v9, v1, :cond_3

    :cond_2
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2, v11, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MODIFY_PHONE_STATE Permission Denial: adjustStreamVolume from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/16 v1, 0xb

    if-ne v9, v1, :cond_4

    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v1, v2, v11, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MODIFY_AUDIO_ROUTING Permission Denial: adjustStreamVolume from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v15, v1, v9

    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v14, v1, v15

    invoke-virtual {v8, v15}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v7

    invoke-virtual {v14, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    const/16 v16, 0x1

    sget-object v2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    and-int/lit8 v2, p3, 0x40

    if-eqz v2, :cond_5

    return-void

    :cond_5
    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v2

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    move v6, v0

    goto :goto_0

    :cond_6
    move v6, v0

    :goto_0
    sget-object v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    aget v0, v0, v15

    move-object/from16 v5, p4

    invoke-direct {v8, v0, v6, v5}, Lcom/android/server/audio/AudioService;->checkNoteAppOp(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, v8, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    and-int/lit8 v0, p3, -0x21

    const/4 v4, 0x3

    if-ne v15, v4, :cond_a

    invoke-direct {v8, v7}, Lcom/android/server/audio/AudioService;->isFixedVolumeDevice(I)Z

    move-result v2

    if-eqz v2, :cond_a

    or-int/lit8 v0, v0, 0x20

    iget v2, v8, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    if-ne v2, v4, :cond_8

    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {v8, v7}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v2

    goto :goto_1

    :cond_8
    invoke-virtual {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v2

    :goto_1
    if-eqz v1, :cond_9

    move v1, v2

    move/from16 v23, v1

    move/from16 v24, v2

    goto :goto_2

    :cond_9
    move/from16 v23, v1

    move/from16 v24, v2

    goto :goto_2

    :cond_a
    const/16 v2, 0xa

    invoke-direct {v8, v2, v9, v15}, Lcom/android/server/audio/AudioService;->rescaleStep(III)I

    move-result v2

    move/from16 v23, v1

    move/from16 v24, v2

    :goto_2
    and-int/lit8 v1, v0, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez v1, :cond_c

    invoke-direct {v8, v15}, Lcom/android/server/audio/AudioService;->isUiSoundsStreamType(I)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_3

    :cond_b
    move/from16 v26, v6

    move v11, v7

    move v7, v0

    goto :goto_5

    :cond_c
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    if-ne v1, v2, :cond_d

    and-int/lit8 v0, v0, -0x11

    :cond_d
    nop

    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v17

    move/from16 v18, v1

    move-object/from16 v1, p0

    move v11, v2

    move/from16 v2, v23

    move/from16 v3, p2

    move/from16 v4, v24

    move/from16 v5, v17

    move/from16 v26, v6

    move-object/from16 v6, p4

    move v11, v7

    move v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->checkForRingerModeChange(IIIZLjava/lang/String;I)I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_e

    const/4 v3, 0x1

    goto :goto_4

    :cond_e
    const/4 v3, 0x0

    :goto_4
    move/from16 v16, v3

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_f

    or-int/lit16 v0, v0, 0x80

    :cond_f
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_10

    or-int/lit16 v0, v0, 0x800

    move v7, v0

    goto :goto_5

    :cond_10
    move v7, v0

    :goto_5
    invoke-direct {v8, v15, v7}, Lcom/android/server/audio/AudioService;->volumeAdjustmentAllowedByDnd(II)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v16, 0x0

    move/from16 v27, v16

    goto :goto_6

    :cond_11
    move/from16 v27, v16

    :goto_6
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v11}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    if-eqz v27, :cond_23

    if-eqz v10, :cond_23

    const/4 v0, 0x2

    if-eq v12, v0, :cond_23

    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    if-eqz v13, :cond_18

    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:Ljava/util/Set;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const/16 v0, 0x65

    if-ne v10, v0, :cond_12

    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    goto :goto_8

    :cond_12
    const/16 v0, -0x64

    if-ne v10, v0, :cond_13

    const/4 v3, 0x1

    goto :goto_7

    :cond_13
    const/4 v3, 0x0

    :goto_7
    move v0, v3

    :goto_8
    const/4 v1, 0x3

    if-ne v15, v1, :cond_14

    invoke-direct {v8, v0}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    :cond_14
    const/4 v2, 0x0

    :goto_9
    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v3, v3

    if-ge v2, v3, :cond_17

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, v2

    if-ne v15, v3, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_16

    :cond_15
    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)Z

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_17
    move-object/from16 v5, p5

    move/from16 v4, p8

    move-object/from16 v25, v14

    move v2, v15

    const/4 v0, 0x0

    goto/16 :goto_c

    :cond_18
    const/4 v1, 0x3

    const/4 v0, 0x1

    if-ne v10, v0, :cond_19

    add-int v0, v23, v24

    invoke-direct {v8, v15, v0, v11}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustStreamVolume() safe volume index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, v7}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    move-object/from16 v5, p5

    move/from16 v4, p8

    move-object/from16 v25, v14

    move v2, v15

    const/4 v0, 0x0

    goto/16 :goto_c

    :cond_19
    invoke-direct {v8, v11}, Lcom/android/server/audio/AudioService;->isFullVolumeDevice(I)Z

    move-result v0

    if-nez v0, :cond_20

    mul-int v0, v10, v24

    move-object/from16 v5, p5

    move/from16 v4, p8

    invoke-virtual {v14, v0, v11, v5, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->adjustIndex(IILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_a

    :cond_1a
    move-object/from16 v25, v14

    move v2, v15

    const/4 v0, 0x0

    goto/16 :goto_c

    :cond_1b
    :goto_a
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    if-ne v10, v0, :cond_1c

    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)Z

    move-object/from16 v25, v14

    move v2, v15

    goto :goto_b

    :cond_1c
    const/4 v0, 0x0

    const/4 v2, -0x1

    if-ne v10, v2, :cond_1e

    iget-boolean v2, v8, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v2, :cond_1d

    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x12

    const/16 v16, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x15e

    move-object/from16 v25, v14

    move-object v14, v2

    move v2, v15

    move v15, v3

    move/from16 v17, v2

    move/from16 v18, v7

    invoke-static/range {v14 .. v20}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_b

    :cond_1d
    move-object/from16 v25, v14

    move v2, v15

    goto :goto_b

    :cond_1e
    move-object/from16 v25, v14

    move v2, v15

    goto :goto_b

    :cond_1f
    move-object/from16 v25, v14

    move v2, v15

    const/4 v0, 0x0

    :goto_b
    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v17, 0x0

    const/16 v18, 0x2

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v3

    move/from16 v19, v11

    move-object/from16 v21, v25

    invoke-static/range {v16 .. v22}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_c

    :cond_20
    move-object/from16 v5, p5

    move/from16 v4, p8

    move-object/from16 v25, v14

    move v2, v15

    const/4 v0, 0x0

    :goto_c
    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v9

    invoke-virtual {v3, v11}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    if-ne v2, v1, :cond_21

    sget-object v14, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_21

    and-int/lit8 v14, v7, 0x40

    if-nez v14, :cond_21

    iget-object v14, v8, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    div-int/lit8 v15, v3, 0xa

    invoke-virtual {v14, v15}, Lcom/android/server/audio/AudioDeviceBroker;->postSetAvrcpAbsoluteVolumeIndex(I)V

    :cond_21
    const/high16 v14, 0x8000000

    if-ne v11, v14, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType()I

    move-result v14

    if-ne v9, v14, :cond_22

    iget-object v14, v8, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v14, v3, v9}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    :cond_22
    if-ne v2, v1, :cond_24

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v14

    invoke-direct {v8, v6, v3, v14, v7}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V

    goto :goto_d

    :cond_23
    move-object/from16 v5, p5

    move/from16 v4, p8

    move-object/from16 v25, v14

    move v2, v15

    const/4 v0, 0x0

    const/4 v1, 0x3

    :cond_24
    :goto_d
    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v9

    invoke-virtual {v3, v11}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v14

    if-eqz v27, :cond_28

    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v15, v8, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v15, :cond_27

    iget-object v15, v8, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-eqz v15, :cond_25

    iget-boolean v15, v8, Lcom/android/server/audio/AudioService;->mHdmiCecVolumeControlEnabled:Z

    if-eqz v15, :cond_25

    if-ne v2, v1, :cond_25

    invoke-direct {v8, v11}, Lcom/android/server/audio/AudioService;->isFullVolumeDevice(I)Z

    move-result v15

    if-eqz v15, :cond_25

    const/4 v15, 0x0

    sparse-switch v10, :sswitch_data_0

    goto :goto_e

    :sswitch_0
    const/16 v15, 0xa4

    goto :goto_e

    :sswitch_1
    const/16 v15, 0x18

    goto :goto_e

    :sswitch_2
    const/16 v15, 0x19

    nop

    :goto_e
    if-eqz v15, :cond_25

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    packed-switch v12, :pswitch_data_0

    const-string v0, "AS.AudioService"

    goto :goto_f

    :pswitch_0
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    invoke-virtual {v1, v15, v0}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendVolumeKeyEvent(IZ)V

    goto :goto_10

    :pswitch_1
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v15, v1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendVolumeKeyEvent(IZ)V

    goto :goto_10

    :pswitch_2
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v0, 0x1

    invoke-virtual {v1, v15, v0}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendVolumeKeyEvent(IZ)V

    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v15, v1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendVolumeKeyEvent(IZ)V

    goto :goto_10

    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid keyEventMode "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_10
    :try_start_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_11

    :catchall_0
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v0

    :cond_25
    :goto_11
    const/4 v0, 0x3

    if-ne v2, v0, :cond_27

    if-ne v6, v14, :cond_26

    if-eqz v13, :cond_27

    :cond_26
    invoke-direct {v8, v13}, Lcom/android/server/audio/AudioService;->maybeSendSystemAudioStatusCommand(Z)V

    :cond_27
    monitor-exit v3

    goto :goto_12

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_28
    :goto_12
    move-object/from16 v1, p0

    move v15, v2

    move/from16 v2, p1

    move v3, v6

    move v4, v14

    move v5, v7

    move/from16 v16, v6

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIIII)V

    return-void

    :catchall_2
    move-exception v0

    move/from16 v26, v6

    move v11, v7

    move-object/from16 v25, v14

    :goto_13
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_13

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x1 -> :sswitch_1
        0x65 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public adjustStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V
    .locals 14

    move/from16 v10, p5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v3, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v11, p4

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " uid:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    goto :goto_0

    :cond_0
    move-object/from16 v11, p4

    :goto_0
    nop

    move-object v12, p0

    move/from16 v13, p6

    invoke-direct {p0, v10, v13}, Lcom/android/server/audio/AudioService;->hasAudioSettingsPermission(II)Z

    move-result v8

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;IIZI)V

    return-void

    :cond_1
    move-object v12, p0

    move-object/from16 v11, p4

    move/from16 v13, p6

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Should only be called from system process"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    nop

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->callingHasAudioSettingsPermission()Z

    move-result v8

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;IIZI)V

    return-void
.end method

.method public adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V
    .locals 13

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    nop

    move-object v0, p0

    move/from16 v1, p5

    move/from16 v12, p6

    invoke-direct {p0, v1, v12}, Lcom/android/server/audio/AudioService;->hasAudioSettingsPermission(II)Z

    move-result v10

    const/4 v11, 0x0

    move-object v2, p0

    move v3, p2

    move v4, p1

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v11}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;IIZI)V

    return-void

    :cond_0
    move-object v0, p0

    move/from16 v1, p5

    move/from16 v12, p6

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Should only be called from system process"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public areNavigationRepeatSoundEffectsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mNavigationRepeatSoundEffectsEnabled:Z

    return v0
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .locals 4

    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "avrcpSupportsAbsoluteVolume addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " support="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setAvrcpAbsoluteVolumeSupported(Z)V

    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService;->setAvrcpAbsoluteVolumeSupported(Z)V

    return-void
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->callingOrSelfHasAudioSettingsPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio Settings Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public checkMusicActive(ILjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v7, 0xea60

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public clearPreferredDevicesForCapturePreset(I)I
    .locals 7

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "removePreferredDeviceForCapturePreset source:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v4, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    invoke-direct {v4, v1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v5, "AS.AudioService"

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->clearPreferredDevicesForCapturePresetSync(I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    aput-object v1, v4, v0

    const-string v0, "Error %d in %s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2
.end method

.method public disableRingtoneSync(I)V
    .locals 6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "disable sound settings syncing for another profile"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "sync_parent_sounds"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public disableSafeMediaVolume(Ljava/lang/String;)V
    .locals 9

    const-string v0, "disable the safe media volume"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    if-eqz v1, :cond_0

    iget v3, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mStreamType:I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v4, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mIndex:I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v5, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mFlags:I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v6, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mDevice:I

    const/4 v8, 0x1

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 3

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->dispatchFocusChange(Landroid/media/AudioFocusInfo;I)I

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unregistered AudioPolicy for focus dispatch"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioPolicy callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFocusInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dispatchMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mModeDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mModeDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/IAudioModeDispatcher;

    invoke-interface {v2, p1}, Landroid/media/IAudioModeDispatcher;->dispatchAudioModeChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mModeDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "AS.AudioService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioSystemAdapter;->dump(Ljava/io/PrintWriter;)V

    sget-object v0, Lcom/android/server/audio/AudioService;->sLifecycleLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const-string v1, "  "

    if-eqz v0, :cond_1

    const-string v0, "\nMessage handler (watch for unhandled messages):"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v2, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "\nMessage handler is null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/MediaFocusControl;->dump(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpStreamStates(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpVolumeGroups(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpRingerMode(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpAudioMode(Ljava/io/PrintWriter;)V

    const-string v0, "\nAudio routes:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mMainType=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getCurAudioRoutes()Landroid/media/AudioRoutesInfo;

    move-result-object v0

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mainType:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mBluetoothName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->getCurAudioRoutes()Landroid/media/AudioRoutesInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "\nOther state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mVolumeController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mSafeMediaVolumeState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:I

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->safeMediaVolumeStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mSafeMediaVolumeIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mSafeUsbMediaVolumeIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mSafeUsbMediaVolumeDbfs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string v0, "  sIndependentA11yVolume="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mPendingVolumeCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mMusicActiveMs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mMcc="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mCameraSoundForced="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mHasVibrator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mVolumePolicy="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mAvrcpAbsVolSupported="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mBtScoOnByApp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBtScoOnByApp:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mIsSingleVolume="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mUseFixedVolume="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mFixedVolumeDevices="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->dumpDeviceTypes(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mFullVolumeDevices="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->dumpDeviceTypes(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mExtVolumeController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mHdmiAudioSystemClient="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mHdmiPlaybackClient="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mHdmiTvClient="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mHdmiSystemAudioSupported="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mHdmiCecVolumeControlEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecVolumeControlEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mIsCallScreeningModeSupported="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsCallScreeningModeSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mic mute FromSwitch="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromSwitch:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " FromRestrictions="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromRestrictions:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " FromApi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromApi:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " from system="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromSystemCached:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "\n  mAssistantUid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mAssistantUid:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mCurrentImeUid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mCurrentImeUid:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpAccessibilityServiceUids(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpAudioPolicies(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/PlaybackActivityMonitor;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/RecordingActivityMonitor;->dump(Ljava/io/PrintWriter;)V

    const-string v0, "\nAudioDeviceBroker:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/audio/AudioDeviceBroker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string v0, "\nSoundEffects:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSfxHelper:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/audio/SoundEffectsHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "\nEvent logs:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpSupportedSystemUsage(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AS.AudioService"

    const-string v1, "Trying to call forceRemoteSubmixFullVolume() without CAPTURE_AUDIO_OUTPUT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    const v2, 0x8000

    if-eqz p1, :cond_3

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-direct {v4, p0, p2}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    :cond_2
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-lez v3, :cond_4

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices(I)V

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public forceVolumeControlStream(ILandroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eq p1, v2, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    :cond_1
    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    if-ne p1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    if-nez v1, :cond_4

    new-instance v1, Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-direct {v1, p0, p2}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p2, :cond_5

    const-string v1, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceVolumeControlStream cb:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is already linked."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->release()V

    new-instance v1, Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-direct {v1, p0, p2}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getActivePlaybackConfigurations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->getActivePlaybackConfigurations(Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getActiveRecordingConfigurations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->getActiveRecordingConfigurations(Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J
    .locals 5

    const-string v0, "device must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "additional_output_device_delay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "additional_output_device_delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v2, "additional_output_device_delay"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-wide/16 v3, 0x0

    move-wide v2, v3

    :goto_0
    return-wide v2
.end method

.method public getAllowedCapturePolicy()I
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v3, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->getAllowedCapturePolicy(I)I

    move-result v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3
.end method

.method public getAudioProductStrategies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAudioVolumeGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioVolumeGroup;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    invoke-static {}, Landroid/media/audiopolicy/AudioVolumeGroup;->getAudioVolumeGroups()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableCommunicationDeviceIds()[I
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    invoke-static {v1}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lcom/android/server/audio/AudioService;->isValidCommunicationDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda7;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    return-object v2
.end method

.method public getCommunicationDevice()I
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v2, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v3

    return v3
.end method

.method getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getCurrentAudioFocus()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->getCurrentAudioFocus()I

    move-result v0

    return v0
.end method

.method public getDeviceForStream(I)I
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStreamInt(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    const/high16 v0, 0x40000

    goto :goto_1

    :cond_1
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    const/high16 v0, 0x80000

    goto :goto_1

    :cond_2
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    const/high16 v0, 0x200000

    goto :goto_1

    :cond_3
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int v3, v2, v0

    if-ne v3, v2, :cond_4

    return v2

    :cond_4
    goto :goto_0

    :cond_5
    :goto_1
    return v0
.end method

.method public getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I
    .locals 4

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceQueryStateOrModifyRoutingPermission()V

    nop

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->retrieveStoredDeviceVolumeBehavior(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    return v2

    :cond_2
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAbsVolumeMultiModeCaseDevices:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    return v2

    :cond_3
    const/16 v2, 0x80

    if-ne v0, v2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    return v2

    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method public getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceQueryStateOrModifyRoutingPermission()V

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForAttributesInt(Landroid/media/AudioAttributes;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected getDevicesForAttributesInt(Landroid/media/AudioAttributes;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDevicesForStream(I)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForStream(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getEncodedSurroundMode(I)I
    .locals 6

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "encoded_surround_output"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v3, p1}, Lcom/android/server/audio/AudioService;->toEncodedSurroundOutputMode(II)I

    move-result v4

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Missing WRITE_SETTINGS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J
    .locals 2

    const-string v0, "fade out duration"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceQueryAudioStateForTest(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I
    .locals 1

    invoke-static {p1, p2}, Lcom/android/server/audio/MediaFocusControl;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method getHearingAidStreamType()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType(I)I

    move-result v0

    return v0
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getMaxAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J
    .locals 5

    const-string v0, "device must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "max_additional_output_device_delay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "max_additional_output_device_delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string/jumbo v2, "max_additional_output_device_delay"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-wide/16 v3, 0x0

    move-wide v2, v3

    :goto_0
    return-wide v2
.end method

.method public getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    const-string v0, "attr must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/media/AudioSystem;->getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    const-string v0, "attr must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/media/AudioSystem;->getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getAudioModeOwnerHandler()Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getMode()I

    move-result v2

    monitor-exit v0

    return v2

    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getModeOwnerPid()I
    .locals 2

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getAudioModeOwnerHandler()Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method getModeOwnerUid()I
    .locals 2

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getAudioModeOwnerHandler()Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getUid()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getPreferredDevicesForCapturePreset(I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {p1, v3, v0}, Landroid/media/AudioSystem;->getDevicesForRoleAndCapturePreset(IILjava/util/List;)I

    move-result v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v4, :cond_0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v3, "Error %d in getPreferredDeviceForCapturePreset(%d)"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "AS.AudioService"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    return-object v3

    :cond_0
    return-object v0
.end method

.method public getPreferredDevicesForStrategy(I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {p1, v3, v0}, Landroid/media/AudioSystem;->getDevicesForRoleAndStrategy(IILjava/util/List;)I

    move-result v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v4, :cond_0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v3, "Error %d in getPreferredDeviceForStrategy(%d)"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "AS.AudioService"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    return-object v3

    :cond_0
    return-object v0
.end method

.method public getReportedSurroundFormats()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Landroid/media/AudioSystem;->getReportedSurroundFormats(Ljava/util/ArrayList;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getReportedSurroundFormats failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    :cond_0
    return-object v0
.end method

.method public getRingerModeExternal()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRingerModeInternal()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamMinVolume(I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->callingHasAudioSettingsPermission()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex(Z)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getStreamVolume(I)I
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-eqz v2, :cond_1

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, p1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isFixedVolumeDevice(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v3

    move v2, v3

    :cond_1
    add-int/lit8 v3, v2, 0x5

    div-int/lit8 v3, v3, 0xa

    monitor-exit v1

    return v3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getSupportedSystemUsages()[I
    .locals 3

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSupportedSystemUsagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSupportedSystemUsages:[I

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSurroundFormats()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Landroid/media/AudioSystem;->getSurroundFormats(Ljava/util/Map;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSurroundFormats failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    return-object v2

    :cond_0
    return-object v0
.end method

.method public getUiSoundsStreamType()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseVolumeGroupAliases:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public getVibrateSetting(I)I
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .locals 4

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    const-string v0, "attr must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getVolumeGroupIdForAttributes(Landroid/media/AudioAttributes;)I

    move-result v0

    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeGroupStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$VolumeGroupState;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getVolumeIndex()I

    move-result v2

    return v2

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No volume group for attributes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getVssVolumeForDevice(II)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    return v0
.end method

.method public handleBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V
    .locals 7

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x27

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleVolumeKey(Landroid/view/KeyEvent;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 13

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    :goto_0
    const/16 v12, 0x1005

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sent by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AS.AudioService"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_3

    const/16 v2, 0x65

    const/high16 v3, -0x80000000

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v1, p0

    move v4, v12

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;IIZI)V

    goto :goto_1

    :sswitch_1
    const/4 v3, -0x1

    const/high16 v4, -0x80000000

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    const/4 v10, 0x1

    move-object v2, p0

    move v5, v12

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move v11, v0

    invoke-direct/range {v2 .. v11}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;IIZI)V

    goto :goto_1

    :sswitch_2
    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    const/4 v10, 0x1

    move-object v2, p0

    move v5, v12

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move v11, v0

    invoke-direct/range {v2 .. v11}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;IIZI)V

    nop

    :cond_3
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method public hasAudioFocusUsers()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->hasAudioFocusUsers()Z

    move-result v0

    return v0
.end method

.method public hasHapticChannels(Landroid/net/Uri;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/media/AudioManager;->hasHapticChannelsImpl(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public hasMediaDynamicPolicy()Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->hasMixAffectingUsage(II)Z

    move-result v5

    if-eqz v5, :cond_1

    monitor-exit v0

    return v6

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasRegisteredDynamicPolicy()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected initMinStreamVolumeWithoutModifyAudioSettings()V
    .locals 9

    const/high16 v0, 0x400000

    sget-object v1, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-static {v2, v1, v0}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    sget-object v1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v1, v1, v2

    :goto_0
    sget-object v3, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget v3, v3, v2

    if-lt v1, v3, :cond_2

    invoke-static {v2, v1, v0}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result v3

    const/high16 v4, -0x3df00000    # -36.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    sget-object v3, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget v4, v3, v2

    if-gt v1, v4, :cond_3

    aget v3, v3, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v1, 0x1

    sget-object v4, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v4, v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_2
    nop

    sget-object v4, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    array-length v5, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_5

    aget v7, v4, v6

    sget-object v8, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v8, v8, v7

    if-ne v8, v2, :cond_4

    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v8, v8, v7

    invoke-virtual {v8, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->updateNoPermMinIndex(I)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public isAudioServerRunning()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMonitorAudioServerStatePermission()V

    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBluetoothA2dpOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothA2dpOn()Z

    move-result v0

    return v0
.end method

.method public isBluetoothScoOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBtScoOnByApp:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isCallScreeningModeSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsCallScreeningModeSupported:Z

    return v0
.end method

.method public isCameraSoundForced()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isHdmiSystemAudioSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    return v0
.end method

.method public isHomeSoundEffectEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHomeSoundEffectEnabled:Z

    return v0
.end method

.method public isInCommunication()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v0, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    return v5
.end method

.method public isMasterMute()Z
    .locals 1

    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    return v0
.end method

.method public isMicrophoneMuted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromSystemCached:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromPrivacyToggle:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromApi:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromRestrictions:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromSwitch:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMusicActive(Z)Z
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {v3, v2}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_0
    :try_start_1
    invoke-static {v3, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method isPlatformAutomotive()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isPlatformTelevision()Z
    .locals 2

    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPlatformVoice()Z
    .locals 2

    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSpeakerphoneOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method public isStreamAffectedByMute(I)Z
    .locals 3

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 3

    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStreamMute(I)Z
    .locals 2

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result p1

    :cond_0
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSurroundFormatEnabled(I)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isSurroundFormat(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AS.AudioService"

    const-string v1, "audioFormat to enable is not a surround format."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getEnabledFormats()Ljava/util/HashSet;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Missing WRITE_SETTINGS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isValidRingerMode(I)Z
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onSystemReady$0$AudioService(IZ)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iput-boolean p2, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromPrivacyToggle:Z

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(I)V

    :cond_0
    return-void
.end method

.method public loadSoundEffects()Z
    .locals 9

    new-instance v0, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;-><init>(Lcom/android/server/audio/AudioService$1;)V

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x7

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v7, v0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->waitForLoaded(I)Z

    move-result v1

    return v1
.end method

.method public notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .locals 1

    const-string/jumbo v0, "notify about volume controller visibility"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeController;->setVisible(Z)V

    return-void
.end method

.method public onAccessibilityServicesStateChanged(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityVolumeStreamActive()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateA11yVolumeAlias(Z)V

    return-void
.end method

.method public onAudioServerDied()V
    .locals 11

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-eqz v0, :cond_a

    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v0, "AS.AudioService"

    const-string v1, "Audioserver started."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/audio/AudioService;->sLifecycleLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string/jumbo v2, "onAudioServerDied() audioserver started"

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateAudioHalPids()V

    const-string/jumbo v0, "restarting=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    invoke-static {}, Landroid/media/AudioSystem;->isCallScreeningModeSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsCallScreeningModeSupported:Z

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->onAudioServerDied()V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/audio/AudioService;->onUpdateAudioMode(IILjava/lang/String;Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v3, 0x4

    const-string/jumbo v5, "onAudioServerDied"

    invoke-virtual {v1, v3, v0, v5}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    const-string v1, "after audioserver restart"

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->onReinitVolumes(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->restoreVolumeGroups()V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->updateMasterBalance(Landroid/content/ContentResolver;)V

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    :cond_2
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRestorableParameters:Lcom/android/server/audio/AudioService$RestorableParameters;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$RestorableParameters;->restoreAll()V

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v6, 0x3

    const-string/jumbo v7, "onAudioServerDied"

    invoke-virtual {v5, v6, v1, v7}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "onAudioServerDied"

    invoke-direct {p0, v5, v6}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(Landroid/content/ContentResolver;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v5, v4}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    invoke-direct {p0, v4}, Lcom/android/server/audio/AudioService;->updateAssistantUId(Z)V

    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mRttEnabled:Z

    invoke-static {v5}, Landroid/media/AudioSystem;->setRttEnabled(Z)I

    nop

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHotwordDetectionServiceUidLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v3, p0, Lcom/android/server/audio/AudioService;->mHotwordDetectionServiceUid:I

    invoke-static {v3}, Landroid/media/AudioSystem;->setHotwordDetectionServiceUid(I)I

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    invoke-static {v1}, Landroid/media/AudioSystem;->setA11yServicesUids([I)I

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mInputMethodServiceUidLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    iget v5, p0, Lcom/android/server/audio/AudioService;->mInputMethodServiceUid:I

    invoke-virtual {v3, v5}, Lcom/android/server/audio/AudioSystemAdapter;->setCurrentImeUid(I)I

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->setHdmiSystemAudioSupported(Z)I

    :cond_4
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSupportedSystemUsagesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSupportedSystemUsages:[I

    invoke-static {v3}, Landroid/media/AudioSystem;->setSupportedSystemUsages([I)I

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_8
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->connectMixes()I

    move-result v6

    if-eqz v6, :cond_5

    const-string v7, "AS.AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onAudioServerDied: error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/media/AudioSystem;->audioSystemErrorToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " when connecting mixes for policy "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->setupDeviceAffinities()I

    move-result v7

    if-eqz v7, :cond_6

    const-string v8, "AS.AudioService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onAudioServerDied: error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/media/AudioSystem;->audioSystemErrorToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " when connecting device affinities for policy "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    :cond_6
    :goto_3
    goto :goto_2

    :cond_7
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    monitor-enter v1

    :try_start_9
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v3}, Lcom/android/server/audio/PlaybackActivityMonitor;->getAllAllowedCapturePolicies()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9, v2}, Landroid/media/AudioAttributes;->capturePolicyToFlags(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/audio/AudioSystemAdapter;->setAllowedCapturePolicy(II)I

    move-result v7

    if-eqz v7, :cond_8

    const-string v8, "AS.AudioService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to restore capture policy, uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", capture policy: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9, v4}, Lcom/android/server/audio/PlaybackActivityMonitor;->setAllowedCapturePolicy(II)V

    :cond_8
    goto :goto_4

    :cond_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    const-string/jumbo v1, "restarting=false"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x17

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(I)V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setMicMuteFromSwitchInput()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateVibratorInfos()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v2

    :catchall_1
    move-exception v1

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v1

    :catchall_2
    move-exception v2

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v2

    :catchall_3
    move-exception v1

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v1

    :catchall_4
    move-exception v2

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v2

    :catchall_5
    move-exception v1

    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v1

    :catchall_6
    move-exception v2

    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v2

    :catchall_7
    move-exception v1

    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    throw v1

    :catchall_8
    move-exception v0

    :try_start_12
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    throw v0

    :catchall_9
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    throw v1

    :cond_a
    :goto_5
    const-string v0, "AS.AudioService"

    const-string v1, "Audioserver died."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/audio/AudioService;->sLifecycleLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string/jumbo v2, "onAudioServerDied() audioserver died"

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1f4

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method onIndicateSystemReady()V
    .locals 8

    invoke-static {}, Landroid/media/AudioSystem;->systemReady()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public onSystemReady()V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->scheduleLoadSoundEffects()V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->onSystemReady()V

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.hdmi.cec"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiControlManager;

    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiControlStatusChangeListenerCallback:Lcom/android/server/audio/AudioService$MyHdmiControlStatusChangeListenerCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/hdmi/HdmiControlManager;->addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/HdmiControlManager$HdmiControlStatusChangeListener;)V

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mMyHdmiCecVolumeControlFeatureListener:Lcom/android/server/audio/AudioService$MyHdmiCecVolumeControlFeatureListener;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/hdmi/HdmiControlManager;->addHdmiCecVolumeControlFeatureListener(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiControlManager;->getTvClient()Landroid/hardware/hdmi/HdmiTvClient;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:Ljava/util/Set;

    sget-object v3, Landroid/media/AudioSystem;->DEVICE_ALL_HDMI_SYSTEM_AUDIO_AND_SPEAKER_SET:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiControlManager;->getAudioSystemClient()Landroid/hardware/hdmi/HdmiAudioSystemClient;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mSupportsMicPrivacyToggle:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSensorPrivacyManagerInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    new-instance v2, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioService;)V

    invoke-virtual {v1, v0, v2}, Landroid/hardware/SensorPrivacyManagerInternal;->addSensorPrivacyListenerForAllUsers(ILandroid/hardware/SensorPrivacyManagerInternal$OnUserSensorPrivacyChangedListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "AS.AudioService"

    const-string v0, "audio.safemedia.bypass"

    const/4 v7, 0x0

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/16 v0, 0x7530

    move v7, v0

    :goto_1
    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->initA11yMonitoring()V

    new-instance v0, Lcom/android/server/audio/AudioService$RoleObserver;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$RoleObserver;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mRoleObserver:Lcom/android/server/audio/AudioService$RoleObserver;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$RoleObserver;->register()V

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioSystemAdapter;->isMicrophoneMuted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromSystemCached:Z

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->setMicMuteFromSwitchInput()V

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->initMinStreamVolumeWithoutModifyAudioSettings()V

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateVibratorInfos()V

    return-void
.end method

.method public onTouchExplorationStateChanged(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateDefaultStreamOverrideDelay(Z)V

    return-void
.end method

.method onUpdateAudioMode(IILjava/lang/String;Z)V
    .locals 21

    move-object/from16 v7, p0

    const/4 v0, -0x1

    move/from16 v1, p1

    if-ne v1, v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v0

    move v8, v0

    goto :goto_0

    :cond_0
    move v8, v1

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getAudioModeOwnerHandler()Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getMode()I

    move-result v0

    invoke-virtual {v9}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getUid()I

    move-result v1

    invoke-virtual {v9}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v2

    move v6, v1

    move v5, v2

    goto :goto_1

    :cond_1
    move v6, v1

    move v5, v2

    :goto_1
    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_3

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v1, p3

    move v13, v5

    move v14, v6

    goto/16 :goto_3

    :cond_3
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v1, v0, v6}, Lcom/android/server/audio/AudioSystemAdapter;->setPhoneState(II)I

    move-result v19

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v19, :cond_4

    iget-object v10, v7, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v11, 0x28

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move v13, v0

    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v10

    iget-object v11, v7, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v12, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;

    move-object v1, v12

    move-object/from16 v2, p3

    move/from16 v3, p2

    move v4, v8

    move v13, v5

    move v14, v6

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v11, v12}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    const/high16 v1, -0x80000000

    invoke-direct {v7, v1}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v12

    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v11

    aget-object v1, v1, v2

    invoke-virtual {v1, v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v15

    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, v11

    const/4 v4, 0x1

    const/4 v6, 0x1

    move v5, v0

    move-object/from16 v0, p0

    move v2, v15

    move v3, v12

    move/from16 v20, v5

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;Z)V

    const/4 v0, 0x1

    move-object/from16 v1, p3

    invoke-direct {v7, v0, v1}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    move/from16 v0, v20

    invoke-virtual {v7, v10, v0}, Lcom/android/server/audio/AudioService;->updateAbsVolumeMultiModeDevices(II)V

    iget-object v2, v7, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, v13, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postSetModeOwnerPid(II)V

    goto :goto_3

    :cond_4
    move-object/from16 v1, p3

    move v13, v5

    move v14, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUpdateAudioMode: failed to set audio mode to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AS.AudioService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public playSoundEffect(I)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->playSoundEffectVolume(IF)V

    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x10

    if-ge p1, v0, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p2

    float-to-int v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioService effectType value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " out of range"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public playerAttributes(ILandroid/media/AudioAttributes;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->validateAudioAttributesUsage(Landroid/media/AudioAttributes;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->playerAttributes(ILandroid/media/AudioAttributes;I)V

    return-void
.end method

.method public playerEvent(III)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->playerEvent(IIII)V

    return-void
.end method

.method public playerHasOpPlayAudio(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->playerHasOpPlayAudio(IZI)V

    return-void
.end method

.method public playerSessionId(II)V
    .locals 3

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->playerSessionId(III)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid session Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postAccessoryPlugMediaUnmute(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x15

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method postApplyVolumeOnDevice(IILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    new-instance v5, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;-><init>(IILjava/lang/String;)V

    const/16 v1, 0x1a

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method postCheckVolumeCecOnHdmiConnection(ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x1c

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public postObserveDevicesForAllStreams()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->postObserveDevicesForAllStreams(I)V

    return-void
.end method

.method public postObserveDevicesForAllStreams(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x1b

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public postSetVolumeIndexOnDevice(IIILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    new-instance v5, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    invoke-direct {v5, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;-><init>(IIILjava/lang/String;)V

    const/16 v1, 0x1a

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method postUpdateRingerModeServiceInt()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x19

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public recorderEvent(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/RecordingActivityMonitor;->recorderEvent(II)V

    return-void
.end method

.method public registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZZLandroid/media/projection/IMediaProjection;)Ljava/lang/String;
    .locals 19

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    iget-object v0, v10, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    invoke-static {v0}, Landroid/media/AudioSystem;->setDynamicPolicyCallback(Landroid/media/AudioSystem$DynamicPolicyCallback;)V

    const/4 v0, 0x0

    if-nez p4, :cond_1

    if-nez p5, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move-object/from16 v12, p1

    move/from16 v13, p6

    move-object/from16 v14, p7

    invoke-direct {v10, v12, v1, v13, v14}, Lcom/android/server/audio/AudioService;->isPolicyRegisterAllowed(Landroid/media/audiopolicy/AudioPolicyConfig;ZZLandroid/media/projection/IMediaProjection;)Z

    move-result v1

    const/4 v15, 0x0

    if-nez v1, :cond_2

    const-string v0, "AS.AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission denied to register audio policy for pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", need MODIFY_AUDIO_ROUTING or MediaProjection that can project audio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v15

    :cond_2
    const/16 v16, 0x0

    iget-object v9, v10, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    iget-object v1, v10, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "AS.AudioService"

    const-string v1, "Cannot re-register policy"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v15

    :cond_3
    :try_start_1
    new-instance v17, Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v18, v9

    move-object/from16 v9, p7

    :try_start_2
    invoke-direct/range {v1 .. v9}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZZLandroid/media/projection/IMediaProjection;)V

    move-object/from16 v1, v17

    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v0, v10, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerAudioPolicy for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " u/pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " with config:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->toCompactLogString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v3, "AS.AudioService"

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    iget-object v0, v10, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    :try_start_3
    monitor-exit v18

    return-object v16

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v18, v9

    :goto_2
    const-string v1, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio policy registration failed for binder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v18

    return-object v15

    :catch_3
    move-exception v0

    move-object/from16 v18, v9

    :goto_3
    const-string v1, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio policy registration failed, could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v18

    return-object v15

    :catchall_0
    move-exception v0

    move-object/from16 v18, v9

    :goto_4
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method public registerAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMonitorAudioServerStatePermission()V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AS.AudioService"

    const-string v2, "Cannot re-register audio server state dispatcher"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Lcom/android/server/audio/AudioService$AsdProxy;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/AudioService$AsdProxy;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/IAudioServerStateDispatcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V

    return-void
.end method

.method public registerCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->registerCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V

    return-void
.end method

.method public registerModeDispatcher(Landroid/media/IAudioModeDispatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mModeDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;Z)V

    return-void
.end method

.method public registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;Z)V

    return-void
.end method

.method public registerStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->registerStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V

    return-void
.end method

.method public releasePlayer(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->releasePlayer(II)V

    return-void
.end method

.method public releaseRecorder(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->releaseRecorder(I)V

    return-void
.end method

.method public reloadAudioSettings()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    return-void
.end method

.method public removeMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    const-string v1, "Cannot add AudioMix in audio policy"

    invoke-direct {p0, p2, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->removeMixes(Ljava/util/ArrayList;)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    nop

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removePreferredDevicesForStrategy(I)I
    .locals 7

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "removePreferredDeviceForStrategy strat:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v4, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    invoke-direct {v4, v1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v5, "AS.AudioService"

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->removePreferredDevicesForStrategySync(I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    aput-object v1, v4, v0

    const-string v0, "Error %d in %s)"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2
.end method

.method public removeUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    const-string v1, "Cannot remove device affinity in audio policy"

    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, -0x1

    monitor-exit v0

    return v2

    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->removeUidDeviceAffinities(I)I

    move-result v2

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    const-string v1, "Cannot remove device affinity in audio policy"

    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, -0x1

    monitor-exit v0

    return v2

    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->removeUserIdDeviceAffinities(I)I

    move-result v2

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.service.focus"

    invoke-direct {v0, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v2, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v0, v2, v15}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v2, Landroid/media/MediaMetrics$Property;->CLIENT_NAME:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v0, v2, v14}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v2, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v3, "requestAudioFocus"

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v2, Landroid/media/MediaMetrics$Property;->FLAGS:Landroid/media/MediaMetrics$Key;

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v11

    const/4 v0, 0x0

    if-eqz v13, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->isValidAudioAttributesUsage(Landroid/media/AudioAttributes;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Request using unsupported usage"

    const-string v3, "AS.AudioService"

    const-string v4, "Request using unsupported usage"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v4, "Request using unsupported usage"

    invoke-virtual {v11, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaMetrics$Item;->record()Z

    return v0

    :cond_0
    and-int/lit8 v2, p7, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    const-string v2, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Invalid permission to (un)lock audio focus"

    const-string v3, "AS.AudioService"

    const-string v4, "Invalid permission to (un)lock audio focus"

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v3, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v4, "Invalid permission to (un)lock audio focus"

    invoke-virtual {v11, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaMetrics$Item;->record()Z

    return v0

    :cond_1
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p8 .. p8}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Invalid unregistered AudioPolicy to (un)lock audio focus"

    const-string v4, "AS.AudioService"

    const-string v5, "Invalid unregistered AudioPolicy to (un)lock audio focus"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v5, "Invalid unregistered AudioPolicy to (un)lock audio focus"

    invoke-virtual {v11, v4, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaMetrics$Item;->record()Z

    monitor-exit v2

    return v0

    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_0
    if-eqz v15, :cond_5

    if-eqz v14, :cond_5

    if-nez v13, :cond_4

    move-object v1, v11

    move/from16 v17, v12

    goto :goto_1

    :cond_4
    invoke-virtual {v11}, Landroid/media/MediaMetrics$Item;->record()Z

    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    move/from16 v10, p2

    invoke-direct {v1, v13, v10, v12}, Lcom/android/server/audio/AudioService;->forceFocusDuckingForAccessibility(Landroid/media/AudioAttributes;II)Z

    move-result v0

    const/16 v16, -0x1

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p9

    move-object v1, v11

    move v11, v0

    move/from16 v17, v12

    move/from16 v12, v16

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/audio/MediaFocusControl;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;IIZI)I

    move-result v0

    return v0

    :cond_5
    move-object v1, v11

    move/from16 v17, v12

    :goto_1
    const-string v2, "Invalid null parameter to request audio focus"

    const-string v3, "AS.AudioService"

    const-string v4, "Invalid null parameter to request audio focus"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v4, "Invalid null parameter to request audio focus"

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaMetrics$Item;->record()Z

    return v0
.end method

.method public requestAudioFocusForTest(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 14

    move-object v0, p0

    const-string v1, "focus request"

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->enforceQueryAudioStateForTest(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-eqz p6, :cond_2

    if-eqz p5, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    const/16 v10, 0x8

    const/4 v12, 0x0

    move-object v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v11, p8

    move/from16 v13, p7

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/audio/MediaFocusControl;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;IIZI)I

    move-result v1

    return v1

    :cond_2
    :goto_0
    const-string v1, "Invalid null parameter to request audio focus"

    const-string v3, "AS.AudioService"

    const-string v4, "Invalid null parameter to request audio focus"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method protected scheduleLoadSoundEffects()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method protected sendVolumeUpdate(IIIII)V
    .locals 1

    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget p1, v0, p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p4}, Lcom/android/server/audio/AudioService;->updateFlagsForTvPlatform(I)I

    move-result p4

    invoke-direct {p0, p5}, Lcom/android/server/audio/AudioService;->isFullVolumeDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 p4, p4, -0x2

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1, p4}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V

    return-void
.end method

.method public setAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;J)Z
    .locals 3

    const-string v0, "device must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "additional_output_device_delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRestorableParameters:Lcom/android/server/audio/AudioService$RestorableParameters;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/audio/AudioService$RestorableParameters;->setParameters(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public setAllowedCapturePolicy(I)I
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/media/AudioAttributes;->capturePolicyToFlags(II)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v5, v0, v1}, Lcom/android/server/audio/AudioSystemAdapter;->setAllowedCapturePolicy(II)I

    move-result v5

    if-nez v5, :cond_0

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v6, v0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->setAllowedCapturePolicy(II)V

    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method setAvrcpAbsoluteVolumeSupported(Z)V
    .locals 7

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v5, v1, v2

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x80

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public setBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .locals 9

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal BluetoothProfile state for device  (dis)connection, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceConnectionInfo;-><init>(Landroid/bluetooth/BluetoothDevice;IIZI)V

    move-object v7, v0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x26

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBluetoothA2dpOn(Z)V
    .locals 6

    const-string/jumbo v0, "setBluetoothA2dpOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setBluetoothA2dpOn("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") from u/pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/media/MediaMetrics$Item;

    const-string v4, "audio.device.setBluetoothA2dpOn"

    invoke-direct {v3, v4}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/MediaMetrics$Item;->setPid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    sget-object v4, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    if-eqz p1, :cond_1

    const-string/jumbo v5, "on"

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "off"

    :goto_0
    invoke-virtual {v3, v4, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaMetrics$Item;->record()Z

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothA2dpOn_Async(ZLjava/lang/String;)V

    return-void
.end method

.method public setBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)V
    .locals 8

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal BluetoothProfile state for device  (dis)connection, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string v7, "AudioService"

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->postBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZILjava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBluetoothScoOn(Z)V
    .locals 6

    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_1

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mBtScoOnByApp:Z

    return-void

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setBluetoothScoOn("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") from u/pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/media/MediaMetrics$Item;

    const-string v4, "audio.device.setBluetoothScoOn"

    invoke-direct {v3, v4}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/MediaMetrics$Item;->setPid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    sget-object v4, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    if-eqz p1, :cond_2

    const-string/jumbo v5, "on"

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "off"

    :goto_0
    invoke-virtual {v3, v4, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaMetrics$Item;->record()Z

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setBluetoothScoOn(ZLjava/lang/String;)V

    return-void
.end method

.method public setCommunicationDevice(Landroid/os/IBinder;I)Z
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    const/4 v3, 0x2

    invoke-static {p2, v3}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->isValidCommunicationDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid device type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid portID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setCommunicationDevice("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ") from u/pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v5

    :cond_4
    :goto_1
    const/high16 v6, 0x40000000    # 2.0f

    if-eq v4, v6, :cond_6

    new-instance v6, Landroid/media/MediaMetrics$Item;

    const-string v7, "audio.device.setCommunicationDevice"

    invoke-direct {v6, v7}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    invoke-static {v4}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v6

    sget-object v7, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v6, v7, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v6

    sget-object v7, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    if-eqz v2, :cond_5

    const-string v8, "connected"

    goto :goto_2

    :cond_5
    const-string v8, "disconnected"

    :goto_2
    invoke-virtual {v6, v7, v8}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaMetrics$Item;->record()Z

    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v8, p1, v1, v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->setCommunicationDevice(Landroid/os/IBinder;ILandroid/media/AudioDeviceInfo;Ljava/lang/String;)Z

    move-result v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8
.end method

.method setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .locals 9

    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_2

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1200(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, v2

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1200(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v3

    if-eq p2, v3, :cond_0

    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v4, :cond_0

    sget-object v4, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v2

    invoke-virtual {v4, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v2

    invoke-virtual {v4, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/16 v8, 0x1f4

    move v5, p2

    move-object v7, p1

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroid/media/AudioManager;->enforceValidVolumeBehavior(I)V

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    nop

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/audio/AudioService;->setDeviceVolumeBehaviorInternal(IILjava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/audio/AudioService;->persistDeviceVolumeBehavior(II)V

    return-void
.end method

.method public setEncodedSurroundMode(I)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "encoded_surround_output"

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->toEncodedSurroundSetting(I)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v2, 0x1

    return v2

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Missing WRITE_SETTINGS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    const-string v1, "Cannot change audio policy focus properties"

    invoke-direct {p0, p2, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "AS.AudioService"

    const-string v4, "Cannot change audio policy focus properties, unregistered policy"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    iget v6, v5, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    if-ne v6, v3, :cond_2

    const-string v3, "AS.AudioService"

    const-string v4, "Cannot change audio policy ducking behavior, already handled"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_2
    goto :goto_0

    :cond_3
    iput p1, v1, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    const/4 v4, 0x0

    if-ne p1, v3, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/server/audio/MediaFocusControl;->setDuckingInExtPolicyAvailable(Z)V

    monitor-exit v0

    return v4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 3

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;I)V

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unregistered AudioPolicy for external focus"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioPolicy callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFocusInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHdmiSystemAudioSupported(Z)I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiClientLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiAudioSystemClient:Landroid/hardware/hdmi/HdmiAudioSystemClient;

    if-nez v2, :cond_0

    const-string v2, "AS.AudioService"

    const-string v3, "Only Hdmi-Cec enabled TV or audio system device supportssystem audio mode."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v0

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eq v2, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz p1, :cond_1

    const/16 v2, 0xc

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    nop

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v4, 0x5

    const-string/jumbo v5, "setHdmiSystemAudioSupported"

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    :cond_2
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->getDevicesForStreamInt(I)I

    move-result v2

    move v0, v2

    :cond_3
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setHomeSoundEffectEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHomeSoundEffectEnabled:Z

    return-void
.end method

.method public setMasterMute(ZILjava/lang/String;I)V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->setMasterMuteInternal(ZILjava/lang/String;III)V

    return-void
.end method

.method public setMicrophoneMute(ZLjava/lang/String;I)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {p3, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    :cond_0
    new-instance v1, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.mic"

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v1, v2, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v3, "setMicrophoneMute"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->REQUEST:Landroid/media/MediaMetrics$Key;

    if-eqz p1, :cond_1

    const-string/jumbo v3, "mute"

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "unmute"

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    if-nez p1, :cond_2

    const/16 v2, 0x2c

    invoke-direct {p0, v2, v0, p2}, Lcom/android/server/audio/AudioService;->checkNoteAppOp(IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v3, "disallow unmuting"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    :cond_2
    const-string/jumbo v2, "setMicrophoneMute()"

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string v3, "!checkAudioSettingsPermission"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-eq p3, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v3, "permission"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    :cond_4
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromApi:Z

    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    invoke-direct {p0, p3}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(I)V

    return-void
.end method

.method public setMicrophoneMuteFromSwitch(Z)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const-string v1, "AS.AudioService"

    const-string/jumbo v2, "setMicrophoneMuteFromSwitch() called from non system user!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mMicMuteFromSwitch:Z

    new-instance v1, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.mic"

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v3, "setMicrophoneMuteFromSwitch"

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->REQUEST:Landroid/media/MediaMetrics$Key;

    if-eqz p1, :cond_1

    const-string/jumbo v3, "mute"

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "unmute"

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(I)V

    return-void
.end method

.method public setMode(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 27

    move-object/from16 v9, p0

    move/from16 v0, p1

    move-object/from16 v10, p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    const-string/jumbo v1, "setMode()"

    invoke-virtual {v9, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez v10, :cond_1

    const-string v1, "AS.AudioService"

    const-string/jumbo v2, "setMode() called with null binder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, -0x1

    if-lt v0, v1, :cond_e

    const/4 v2, 0x5

    if-lt v0, v2, :cond_2

    goto/16 :goto_8

    :cond_2
    if-ne v0, v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v0

    move v13, v0

    goto :goto_0

    :cond_3
    move v13, v0

    :goto_0
    const/4 v0, 0x4

    if-ne v13, v0, :cond_4

    iget-boolean v0, v9, Lcom/android/server/audio/AudioService;->mIsCallScreeningModeSupported:Z

    if-nez v0, :cond_4

    const-string v0, "AS.AudioService"

    const-string/jumbo v1, "setMode(MODE_CALL_SCREENING) not permitted when call screening is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v0, v9, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-nez v0, :cond_5

    move v0, v14

    goto :goto_1

    :cond_5
    move v0, v15

    :goto_1
    move/from16 v16, v0

    const/4 v0, 0x2

    if-ne v13, v0, :cond_6

    if-nez v16, :cond_6

    const-string v0, "AS.AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MODIFY_PHONE_STATE Permission Denial: setMode(MODE_IN_CALL) from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    const/4 v1, 0x0

    iget-object v0, v9, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v8, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v0, v9, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-ne v3, v11, :cond_7

    move-object v1, v2

    move-object v7, v1

    goto :goto_3

    :cond_7
    goto :goto_2

    :cond_8
    move-object v7, v1

    :goto_3
    const/4 v0, 0x3

    if-nez v13, :cond_b

    if-eqz v7, :cond_a

    :try_start_1
    invoke-virtual {v7}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->isPrivileged()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v7}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getMode()I

    move-result v1

    if-ne v1, v0, :cond_9

    iget-object v0, v9, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1, v7}, Lcom/android/server/audio/AudioService$AudioHandler;->removeEqualMessages(ILjava/lang/Object;)V

    :cond_9
    iget-object v0, v9, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v7}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v7, v15}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "AS.AudioService"

    const-string/jumbo v2, "setMode link does not exist ..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_a
    :goto_4
    move-object/from16 v19, v8

    goto :goto_6

    :cond_b
    if-eqz v7, :cond_c

    invoke-virtual {v7, v13}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setMode(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v7

    move-object/from16 v19, v8

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v7

    move-object/from16 v19, v8

    goto/16 :goto_7

    :cond_c
    :try_start_4
    new-instance v17, Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move v4, v11

    move v5, v12

    move/from16 v6, v16

    move-object/from16 v18, v7

    move-object/from16 v7, p3

    move-object/from16 v19, v8

    move v8, v13

    :try_start_5
    invoke-direct/range {v1 .. v8}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;IIZLjava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v1, v17

    :try_start_6
    invoke-interface {v10, v1, v15}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    nop

    :try_start_7
    iget-object v2, v9, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    if-ne v13, v0, :cond_d

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->isPrivileged()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v1, v14}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setPlaybackActive(Z)V

    invoke-virtual {v1, v14}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setRecordingActive(Z)V

    iget-object v0, v9, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v21, 0x1f

    const/16 v22, 0x2

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x1770

    move-object/from16 v20, v0

    move-object/from16 v25, v1

    invoke-static/range {v20 .. v26}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :cond_d
    move-object v7, v1

    :goto_6
    :try_start_8
    iget-object v0, v9, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x24

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v3, v13

    move v4, v11

    move-object/from16 v5, p3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    monitor-exit v19
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    :try_start_9
    const-string v2, "AS.AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMode() could not link to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " binder death"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v19

    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v1, v18

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v1, v18

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object/from16 v19, v8

    :goto_7
    monitor-exit v19
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_7

    :cond_e
    :goto_8
    const-string v1, "AS.AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMode() invalid mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMultiAudioFocusEnabled(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->getMultiAudioFocusEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/MediaFocusControl;->updateMultiAudioFocus(Z)V

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->postBroadcastBecomingNoisy()V

    :cond_0
    return-void
.end method

.method public setMusicMute(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->muteInternally(Z)Z

    return-void
.end method

.method public setNavigationRepeatSoundEffectsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mNavigationRepeatSoundEffectsEnabled:Z

    return-void
.end method

.method public setPreferredDevicesForCapturePreset(ILjava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    sget-object v7, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    const-string v7, ","

    invoke-static {v7}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v2

    const-string/jumbo v2, "setPreferredDevicesForCapturePreset u/pid:%d/%d source:%d dev:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v6, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    invoke-direct {v6, v1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v7, "AS.AudioService"

    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v6, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda5;

    invoke-interface {v2, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported output routing in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setPreferredDevicesForCapturePresetSync(ILjava/util/List;)I

    move-result v0

    if-eqz v0, :cond_2

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    aput-object v1, v2, v4

    const-string v3, "Error %d in %s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method public setPreferredDevicesForStrategy(ILjava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    sget-object v7, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda2;

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    const-string v7, ","

    invoke-static {v7}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v2

    const-string/jumbo v2, "setPreferredDeviceForStrategy u/pid:%d/%d strat:%d dev:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v6, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    invoke-direct {v6, v1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v7, "AS.AudioService"

    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v6, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda6;

    invoke-interface {v2, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported input routing in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->setPreferredDevicesForStrategySync(ILjava/util/List;)I

    move-result v0

    if-eqz v0, :cond_2

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    aput-object v1, v2, v4

    const-string v3, "Error %d in %s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method public setRingerModeExternal(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not allowed to change Do Not Disturb state"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "setRingerModeInternal"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    return-void
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REMOTE_AUDIO_PLAYBACK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-void
.end method

.method public setRttEnabled(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AS.AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MODIFY_PHONE_STATE Permission Denial: setRttEnabled from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mRttEnabled:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1}, Landroid/media/AudioSystem;->setRttEnabled(Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public setSpeakerphoneOn(Landroid/os/IBinder;Z)V
    .locals 6

    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setSpeakerphoneOn("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") from u/pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/media/MediaMetrics$Item;

    const-string v4, "audio.device.setSpeakerphoneOn"

    invoke-direct {v3, v4}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/MediaMetrics$Item;->setPid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    sget-object v4, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    if-eqz p2, :cond_1

    const-string/jumbo v5, "on"

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "off"

    :goto_0
    invoke-virtual {v3, v4, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaMetrics$Item;->record()Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v5, p1, v1, p2, v2}, Lcom/android/server/audio/AudioDeviceBroker;->setSpeakerphoneOn(Landroid/os/IBinder;IZLjava/lang/String;)V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .locals 8

    const-string v0, "AS.AudioService"

    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->canChangeAccessibilityVolume()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to call setStreamVolume() for a11y without CHANGE_ACCESSIBILITY_VOLUME  callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to call setStreamVolume() for STREAM_VOICE_CALL and index 0 without MODIFY_PHONE_STATE  callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 v1, 0xb

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to call setStreamVolume() for STREAM_ASSISTANT without MODIFY_AUDIO_ROUTING  callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-object v6, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v7, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v1, 0x2

    move-object v0, v7

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    nop

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->callingOrSelfHasAudioSettingsPermission()Z

    move-result v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public setStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V
    .locals 11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    nop

    move-object v0, p0

    move/from16 v1, p5

    move/from16 v10, p6

    invoke-direct {p0, v1, v10}, Lcom/android/server/audio/AudioService;->hasAudioSettingsPermission(II)Z

    move-result v9

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;IZ)V

    return-void

    :cond_0
    move-object v0, p0

    move/from16 v1, p5

    move/from16 v10, p6

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Should only be called from system process"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setSupportedSystemUsages([I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->verifySystemUsages([I)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSupportedSystemUsagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Landroid/media/AudioSystem;->setSupportedSystemUsages([I)I

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSupportedSystemUsages:[I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSurroundFormatEnabled(IZ)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isSurroundFormat(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AS.AudioService"

    const-string v1, "audioFormat to enable is not a surround format."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getEnabledFormats()Ljava/util/HashSet;

    move-result-object v0

    if-eqz p2, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "encoded_surround_output_enabled_formats"

    const-string v6, ","

    invoke-static {v6, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v3, 0x1

    return v3

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Missing WRITE_SETTINGS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    const-string v1, "Cannot change device affinity in audio policy"

    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    invoke-virtual {v1, p3, p4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->hasMixRoutedToDevices([I[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->setUidDeviceAffinities(I[I[Ljava/lang/String;)I

    move-result v2

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    const-string v1, "Cannot change device affinity in audio policy"

    invoke-direct {p0, p1, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    invoke-virtual {v1, p3, p4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->hasMixRoutedToDevices([I[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->setUserIdDeviceAffinities(I[I[Ljava/lang/String;)I

    move-result v2

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVibrateSetting(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    return-void
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .locals 3

    const-string/jumbo v0, "set the volume controller"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDismiss()V

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/AudioService$5;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/IVolumeController;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->setController(Landroid/media/IVolumeController;)V

    return-void
.end method

.method public setVolumeIndexForAttributes(Landroid/media/AudioAttributes;IILjava/lang/String;)V
    .locals 21

    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    const-string v0, "attr must not be null"

    move-object/from16 v8, p1

    invoke-static {v8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getVolumeGroupIdForAttributes(Landroid/media/AudioAttributes;)I

    move-result v9

    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeGroupStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    const-string v10, "AS.AudioService"

    if-gez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": no volume group found for attributes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/audio/AudioService$VolumeGroupState;

    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v12, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/16 v2, 0x8

    invoke-virtual {v11}, Lcom/android/server/audio/AudioService$VolumeGroupState;->name()Ljava/lang/String;

    move-result-object v4

    move-object v1, v12

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(ILandroid/media/AudioAttributes;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v12}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v11, v1, v2}, Lcom/android/server/audio/AudioService$VolumeGroupState;->setVolumeIndex(II)V

    invoke-virtual {v11}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getLegacyStreamTypes()[I

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_1

    aget v6, v3, v5

    move-object/from16 v7, p0

    :try_start_0
    invoke-direct {v7, v6}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    const/16 v20, 0x1

    move-object/from16 v13, p0

    move v14, v6

    move/from16 v15, p2

    move/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p4

    invoke-direct/range {v13 .. v20}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "volume group "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " has internal streams ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "), do not change associated stream volume"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v7, p0

    return-void
.end method

.method public setVolumePolicy(Landroid/media/VolumePolicy;)V
    .locals 1

    const-string/jumbo v0, "set volume policy"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p1, v0}, Landroid/media/VolumePolicy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    :cond_0
    return-void
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v1, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.service.setWiredDeviceConnectionState"

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v1, v2, p3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->CLIENT_NAME:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v1, v2, p5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->DEVICE:Landroid/media/MediaMetrics$Key;

    invoke-static {p1}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v1, v2, p4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    if-ne p2, v0, :cond_2

    const-string v0, "connected"

    goto :goto_1

    :cond_2
    const-string v0, "disconnected"

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldVibrate(I)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :pswitch_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public silenceRingerModeInternal(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110174

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, -0x2

    const-string/jumbo v7, "volume_hush_gesture"

    invoke-static {v4, v7, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    :cond_0
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x104089d

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x5

    invoke-static {v4}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x104089e

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->maybeVibrate(Landroid/os/VibrationEffect;Ljava/lang/String;)Z

    invoke-virtual {p0, v1, p1}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startBluetoothSco(Landroid/os/IBinder;I)V
    .locals 7

    const-string/jumbo v0, "startBluetoothSco()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/16 v3, 0x12

    if-ge p2, v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ") from u/pid:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/media/MediaMetrics$Item;

    const-string v5, "audio.bluetooth"

    invoke-direct {v4, v5}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/media/MediaMetrics$Item;->setPid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    sget-object v5, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v6, "startBluetoothSco"

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    sget-object v5, Landroid/media/MediaMetrics$Property;->SCO_AUDIO_MODE:Landroid/media/MediaMetrics$Key;

    invoke-static {v3}, Lcom/android/server/audio/BtHelper;->scoAudioModeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaMetrics$Item;->record()Z

    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;IILjava/lang/String;)V

    return-void
.end method

.method startBluetoothScoInt(Landroid/os/IBinder;IILjava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v1, "audio.bluetooth"

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v2, "startBluetoothScoInt"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->SCO_AUDIO_MODE:Landroid/media/MediaMetrics$Key;

    invoke-static {p3}, Lcom/android/server/audio/BtHelper;->scoAudioModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    const-string/jumbo v1, "startBluetoothSco()"

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/audio/AudioDeviceBroker;->startBluetoothScoForClient(Landroid/os/IBinder;IILjava/lang/String;)V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    :cond_1
    :goto_0
    sget-object v1, Landroid/media/MediaMetrics$Property;->EARLY_RETURN:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v2, "permission or systemReady"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method

.method public startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    .locals 7

    const-string/jumbo v0, "startBluetoothScoVirtualCall()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ") from u/pid:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/media/MediaMetrics$Item;

    const-string v4, "audio.bluetooth"

    invoke-direct {v3, v4}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/MediaMetrics$Item;->setPid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    sget-object v4, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v5, "startBluetoothScoVirtualCall"

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    sget-object v4, Landroid/media/MediaMetrics$Property;->SCO_AUDIO_MODE:Landroid/media/MediaMetrics$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/server/audio/BtHelper;->scoAudioModeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaMetrics$Item;->record()Z

    invoke-virtual {p0, p1, v2, v5, v0}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;IILjava/lang/String;)V

    return-void
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v0

    return-object v0
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .locals 8

    const-string/jumbo v0, "stopBluetoothSco()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ") from u/pid:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v5, p1, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->stopBluetoothScoForClient(Landroid/os/IBinder;ILjava/lang/String;)V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v5, Landroid/media/MediaMetrics$Item;

    const-string v6, "audio.bluetooth"

    invoke-direct {v5, v6}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/media/MediaMetrics$Item;->setPid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v5

    sget-object v6, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v7, "stopBluetoothSco"

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v5

    sget-object v6, Landroid/media/MediaMetrics$Property;->SCO_AUDIO_MODE:Landroid/media/MediaMetrics$Key;

    const/4 v7, -0x1

    invoke-static {v7}, Lcom/android/server/audio/BtHelper;->scoAudioModeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public systemReady()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x10

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/media/PlayerBase$PlayerIdCard;->mAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/media/PlayerBase$PlayerIdCard;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->validateAudioAttributesUsage(Landroid/media/AudioAttributes;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I

    move-result v0

    return v0
.end method

.method public trackRecorder(Landroid/os/IBinder;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->trackRecorder(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public unloadSoundEffects()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0xf

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string v1, "audio.service.focus"

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->CLIENT_NAME:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v2, "unregisterAudioFocusClient"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->unregisterAudioFocusClient(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterAudioPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "unregisterAudioPolicy"

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->unregisterAudioPolicyInt(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "unregisterAudioPolicyAsync"

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->unregisterAudioPolicyInt(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMonitorAudioServerStatePermission()V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$AsdProxy;

    if-nez v1, :cond_0

    const-string v2, "AS.AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to unregister unknown audioserver state dispatcher for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V

    return-void
.end method

.method public unregisterCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->unregisterCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V

    return-void
.end method

.method public unregisterModeDispatcher(Landroid/media/IAudioModeDispatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mModeDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    return-void
.end method

.method public unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    return-void
.end method

.method public unregisterStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->enforceModifyAudioRoutingPermission()V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->unregisterStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V

    return-void
.end method

.method updateAbsVolumeMultiModeDevices(II)V
    .locals 7

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    return-void

    :pswitch_0
    return-void

    :pswitch_1
    nop

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->getHearingAidStreamType(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForStream(I)I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->generateAudioDeviceTypesSet(I)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAbsVolumeMultiModeCaseDevices:Ljava/util/Set;

    invoke-static {v2, v1}, Landroid/media/AudioSystem;->intersectionAudioDeviceTypes(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    const/high16 v3, 0x8000000

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->isSingleAudioDeviceType(Ljava/util/Set;I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v3

    sget-object v4, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v6, 0x7

    invoke-direct {v5, v6, p2, v0, v3}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIII)V

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    mul-int/lit8 v5, v3, 0xa

    invoke-virtual {v4, v5, v0}, Lcom/android/server/audio/AudioDeviceBroker;->postSetHearingAidVolumeIndex(II)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
