.class public Lcom/android/server/wm/ProtoLogCache;
.super Ljava/lang/Object;
.source "ProtoLogCache.java"


# static fields
.field public static TEST_GROUP_enabled:Z

.field public static WM_DEBUG_ADD_REMOVE_enabled:Z

.field public static WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

.field public static WM_DEBUG_APP_TRANSITIONS_enabled:Z

.field public static WM_DEBUG_BOOT_enabled:Z

.field public static WM_DEBUG_CONFIGURATION_enabled:Z

.field public static WM_DEBUG_CONTAINERS_enabled:Z

.field public static WM_DEBUG_DRAW_enabled:Z

.field public static WM_DEBUG_FOCUS_LIGHT_enabled:Z

.field public static WM_DEBUG_FOCUS_enabled:Z

.field public static WM_DEBUG_IME_enabled:Z

.field public static WM_DEBUG_IMMERSIVE_enabled:Z

.field public static WM_DEBUG_KEEP_SCREEN_ON_enabled:Z

.field public static WM_DEBUG_LOCKTASK_enabled:Z

.field public static WM_DEBUG_ORIENTATION_enabled:Z

.field public static WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

.field public static WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

.field public static WM_DEBUG_RESIZE_enabled:Z

.field public static WM_DEBUG_SCREEN_ON_enabled:Z

.field public static WM_DEBUG_STARTING_WINDOW_enabled:Z

.field public static WM_DEBUG_STATES_enabled:Z

.field public static WM_DEBUG_SWITCH_enabled:Z

.field public static WM_DEBUG_SYNC_ENGINE_enabled:Z

.field public static WM_DEBUG_TASKS_enabled:Z

.field public static WM_DEBUG_WINDOW_MOVEMENT_enabled:Z

.field public static WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

.field public static WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

.field public static WM_ERROR_enabled:Z

.field public static WM_SHOW_SURFACE_ALLOC_enabled:Z

.field public static WM_SHOW_TRANSACTIONS_enabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_ERROR_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BOOT_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RESIZE_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SWITCH_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONTAINERS_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IMMERSIVE_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_DRAW_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SCREEN_ON_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_MOVEMENT_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SYNC_ENGINE_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->TEST_GROUP_enabled:Z

    sget-object v0, Lcom/android/server/wm/ProtoLogCache$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/wm/ProtoLogCache$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/android/internal/protolog/ProtoLogImpl;->sCacheUpdater:Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/server/wm/ProtoLogCache;->update()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static update()V
    .locals 1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_ERROR:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_ERROR_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BOOT:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BOOT_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RESIZE_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SWITCH:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SWITCH_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTAINERS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONTAINERS_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IMMERSIVE:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IMMERSIVE_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STARTING_WINDOW_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_DRAW:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_DRAW_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SCREEN_ON_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_MOVEMENT:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_MOVEMENT_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_SYNC_ENGINE_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->TEST_GROUP:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ProtoLogCache;->TEST_GROUP_enabled:Z

    return-void
.end method
