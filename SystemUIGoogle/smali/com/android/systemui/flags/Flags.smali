.class public Lcom/android/systemui/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field public static final BOUNCER_USER_SWITCHER:Lcom/android/systemui/flags/ResourceBooleanFlag;

.field public static final CHARGING_RIPPLE:Lcom/android/systemui/flags/ResourceBooleanFlag;

.field public static final COMBINED_QS_HEADERS:Lcom/android/systemui/flags/BooleanFlag;

.field public static final COMBINED_STATUS_BAR_SIGNAL_ICONS:Lcom/android/systemui/flags/BooleanFlag;

.field public static final FULL_SCREEN_USER_SWITCHER:Lcom/android/systemui/flags/ResourceBooleanFlag;

.field public static final LOCKSCREEN_ANIMATIONS:Lcom/android/systemui/flags/BooleanFlag;

.field public static final MEDIA_MUTE_AWAIT:Lcom/android/systemui/flags/BooleanFlag;

.field public static final MEDIA_NEARBY_DEVICES:Lcom/android/systemui/flags/BooleanFlag;

.field public static final MEDIA_SESSION_ACTIONS:Lcom/android/systemui/flags/BooleanFlag;

.field public static final MEDIA_TAP_TO_TRANSFER:Lcom/android/systemui/flags/BooleanFlag;

.field public static final MONET:Lcom/android/systemui/flags/ResourceBooleanFlag;

.field public static final NEW_NOTIFICATION_PIPELINE_RENDERING:Lcom/android/systemui/flags/BooleanFlag;

.field public static final NEW_PIPELINE_CRASH_ON_CALL_TO_OLD_PIPELINE:Lcom/android/systemui/flags/BooleanFlag;

.field public static final NEW_UNLOCK_SWIPE_ANIMATION:Lcom/android/systemui/flags/BooleanFlag;

.field public static final NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

.field public static final NOTIFICATION_PIPELINE_DEVELOPER_LOGGING:Lcom/android/systemui/flags/BooleanFlag;

.field public static final NSSL_DEBUG_LINES:Lcom/android/systemui/flags/BooleanFlag;

.field public static final NSSL_DEBUG_REMOVE_ANIMATION:Lcom/android/systemui/flags/BooleanFlag;

.field public static final ONGOING_CALL_IN_IMMERSIVE:Lcom/android/systemui/flags/BooleanFlag;

.field public static final ONGOING_CALL_IN_IMMERSIVE_CHIP_TAP:Lcom/android/systemui/flags/BooleanFlag;

.field public static final ONGOING_CALL_STATUS_BAR_CHIP:Lcom/android/systemui/flags/BooleanFlag;

.field public static final POWER_MENU_LITE:Lcom/android/systemui/flags/BooleanFlag;

.field public static final QS_USER_DETAIL_SHORTCUT:Lcom/android/systemui/flags/ResourceBooleanFlag;

.field public static final SMARTSPACE:Lcom/android/systemui/flags/ResourceBooleanFlag;

.field public static final SMARTSPACE_DEDUPING:Lcom/android/systemui/flags/BooleanFlag;

.field public static final SMARTSPACE_SHARED_ELEMENT_TRANSITION_ENABLED:Lcom/android/systemui/flags/BooleanFlag;

.field public static final STATUS_BAR_USER_SWITCHER:Lcom/android/systemui/flags/ResourceBooleanFlag;

.field public static final WM_ALWAYS_ENFORCE_PREDICTIVE_BACK:Lcom/android/systemui/flags/SysPropBooleanFlag;
    .annotation build Lcom/android/internal/annotations/Keep;
    .end annotation
.end field

.field public static final WM_ENABLE_PREDICTIVE_BACK:Lcom/android/systemui/flags/SysPropBooleanFlag;
    .annotation build Lcom/android/internal/annotations/Keep;
    .end annotation
.end field

.field public static final WM_ENABLE_PREDICTIVE_BACK_ANIM:Lcom/android/systemui/flags/SysPropBooleanFlag;
    .annotation build Lcom/android/internal/annotations/Keep;
    .end annotation
.end field

.field public static final WM_ENABLE_SHELL_TRANSITIONS:Lcom/android/systemui/flags/SysPropBooleanFlag;
    .annotation build Lcom/android/internal/annotations/Keep;
    .end annotation
.end field

.field public static sFlagMap:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v1, 0x65

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->NEW_NOTIFICATION_PIPELINE_RENDERING:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v1, 0x67

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->NOTIFICATION_PIPELINE_DEVELOPER_LOGGING:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v1, 0x69

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->NSSL_DEBUG_LINES:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v1, 0x6a

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->NSSL_DEBUG_REMOVE_ANIMATION:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v1, 0x6b

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->NEW_PIPELINE_CRASH_ON_CALL_TO_OLD_PIPELINE:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/ResourceBooleanFlag;

    const/16 v1, 0x6c

    const v4, 0x7f050023

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/flags/ResourceBooleanFlag;-><init>(II)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v1, 0xc9

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->LOCKSCREEN_ANIMATIONS:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v1, 0xca

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->NEW_UNLOCK_SWIPE_ANIMATION:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/ResourceBooleanFlag;

    const/16 v1, 0xcb

    const v4, 0x7f050052

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/flags/ResourceBooleanFlag;-><init>(II)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->CHARGING_RIPPLE:Lcom/android/systemui/flags/ResourceBooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/ResourceBooleanFlag;

    const/16 v1, 0xcc

    const v4, 0x7f05000f

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/flags/ResourceBooleanFlag;-><init>(II)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->BOUNCER_USER_SWITCHER:Lcom/android/systemui/flags/ResourceBooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v1, 0x12c

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->POWER_MENU_LITE:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v1, 0x190

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->SMARTSPACE_DEDUPING:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v1, 0x191

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->SMARTSPACE_SHARED_ELEMENT_TRANSITION_ENABLED:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/ResourceBooleanFlag;

    const/16 v1, 0x192

    const v4, 0x7f050056

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/flags/ResourceBooleanFlag;-><init>(II)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->SMARTSPACE:Lcom/android/systemui/flags/ResourceBooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v1, 0x1f5

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->COMBINED_QS_HEADERS:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/ResourceBooleanFlag;

    const/16 v1, 0x1f7

    const v4, 0x7f050054

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/flags/ResourceBooleanFlag;-><init>(II)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->QS_USER_DETAIL_SHORTCUT:Lcom/android/systemui/flags/ResourceBooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/ResourceBooleanFlag;

    const/16 v1, 0x1fa

    const v4, 0x7f050011

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/flags/ResourceBooleanFlag;-><init>(II)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->FULL_SCREEN_USER_SWITCHER:Lcom/android/systemui/flags/ResourceBooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v1, 0x259

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->COMBINED_STATUS_BAR_SIGNAL_ICONS:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/ResourceBooleanFlag;

    const/16 v1, 0x25a

    const v4, 0x7f050057

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/flags/ResourceBooleanFlag;-><init>(II)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->STATUS_BAR_USER_SWITCHER:Lcom/android/systemui/flags/ResourceBooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v1, 0x2bc

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->ONGOING_CALL_STATUS_BAR_CHIP:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v1, 0x2bd

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->ONGOING_CALL_IN_IMMERSIVE:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v1, 0x2be

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->ONGOING_CALL_IN_IMMERSIVE_CHIP_TAP:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/ResourceBooleanFlag;

    const/16 v1, 0x320

    const v4, 0x7f050055

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/flags/ResourceBooleanFlag;-><init>(II)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->MONET:Lcom/android/systemui/flags/ResourceBooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v1, 0x384

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->MEDIA_TAP_TO_TRANSFER:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v1, 0x385

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->MEDIA_SESSION_ACTIONS:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v1, 0x387

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->MEDIA_NEARBY_DEVICES:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/BooleanFlag;

    const/16 v1, 0x388

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/flags/BooleanFlag;-><init>(IZ)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->MEDIA_MUTE_AWAIT:Lcom/android/systemui/flags/BooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/SysPropBooleanFlag;

    const/16 v1, 0x44c

    const-string/jumbo v4, "persist.wm.debug.shell_transit"

    invoke-direct {v0, v1, v4, v3}, Lcom/android/systemui/flags/SysPropBooleanFlag;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->WM_ENABLE_SHELL_TRANSITIONS:Lcom/android/systemui/flags/SysPropBooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/SysPropBooleanFlag;

    const/16 v1, 0x4b0

    const-string/jumbo v4, "persist.wm.debug.predictive_back"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/systemui/flags/SysPropBooleanFlag;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->WM_ENABLE_PREDICTIVE_BACK:Lcom/android/systemui/flags/SysPropBooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/SysPropBooleanFlag;

    const/16 v1, 0x4b1

    const-string/jumbo v2, "persist.wm.debug.predictive_back_anim"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/flags/SysPropBooleanFlag;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->WM_ENABLE_PREDICTIVE_BACK_ANIM:Lcom/android/systemui/flags/SysPropBooleanFlag;

    new-instance v0, Lcom/android/systemui/flags/SysPropBooleanFlag;

    const/16 v1, 0x4b2

    const-string/jumbo v2, "persist.wm.debug.predictive_back_always_enforce"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/flags/SysPropBooleanFlag;-><init>(ILjava/lang/String;Z)V

    sput-object v0, Lcom/android/systemui/flags/Flags;->WM_ALWAYS_ENFORCE_PREDICTIVE_BACK:Lcom/android/systemui/flags/SysPropBooleanFlag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
