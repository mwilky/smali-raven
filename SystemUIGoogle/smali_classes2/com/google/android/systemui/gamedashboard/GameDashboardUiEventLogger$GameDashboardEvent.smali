.class public final enum Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;
.super Ljava/lang/Enum;
.source "GameDashboardUiEventLogger.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GameDashboardEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_GAME_MODE_BATTERY:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_GAME_MODE_PERFORMANCE:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_GAME_MODE_STANDARD:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_LAUNCH:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_CLOSE:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_DISABLE_DND:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_DISABLE_FPS:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_DISABLE_SCREENSHOT:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_DISABLE_SCREEN_RECORD:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_ENABLE_DND:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_ENABLE_FPS:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_ENABLE_SCREENSHOT:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_ENABLE_SCREEN_RECORD:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_GAME_MODE_WIDGET:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_LEARN_MORE:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_PLAY_GAMES_WIDGET:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_SHOW_LEARN_MORE:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_MENU_YOUTUBE_LIVE_WIDGET:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_PLAY_GAMES_IMPRESSION:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_RESTART_CANCELLED:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_RESTART_NOW:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_SCREENSHOT:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_SCREEN_RECORD:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_STARTUP:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_WALKTHROUGH_DND:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_WALKTHROUGH_FINISH:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_WALKTHROUGH_LAUNCH:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_WALKTHROUGH_OPTIMIZE:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_WALKTHROUGH_SCREEN_CAPTURE:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

.field public static final enum GAME_DASHBOARD_WALKTHROUGH_SKIPPED:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 33

    new-instance v0, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v1, "GAME_DASHBOARD_LAUNCH"

    const/4 v2, 0x0

    const/16 v3, 0x2d3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_LAUNCH:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v1, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v3, "GAME_DASHBOARD_STARTUP"

    const/4 v4, 0x1

    const/16 v5, 0x2d6

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_STARTUP:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v3, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v5, "GAME_DASHBOARD_MENU_ENABLE_SCREENSHOT"

    const/4 v6, 0x2

    const/16 v7, 0x2d7

    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_MENU_ENABLE_SCREENSHOT:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v5, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v7, "GAME_DASHBOARD_MENU_DISABLE_SCREENSHOT"

    const/4 v8, 0x3

    const/16 v9, 0x2d8

    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_MENU_DISABLE_SCREENSHOT:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v7, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v9, "GAME_DASHBOARD_MENU_ENABLE_SCREEN_RECORD"

    const/4 v10, 0x4

    const/16 v11, 0x2d9

    invoke-direct {v7, v9, v10, v11}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_MENU_ENABLE_SCREEN_RECORD:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v9, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v11, "GAME_DASHBOARD_MENU_DISABLE_SCREEN_RECORD"

    const/4 v12, 0x5

    const/16 v13, 0x2da

    invoke-direct {v9, v11, v12, v13}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_MENU_DISABLE_SCREEN_RECORD:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v11, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v13, "GAME_DASHBOARD_MENU_ENABLE_FPS"

    const/4 v14, 0x6

    const/16 v15, 0x2db

    invoke-direct {v11, v13, v14, v15}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_MENU_ENABLE_FPS:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v13, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_MENU_DISABLE_FPS"

    const/4 v14, 0x7

    const/16 v12, 0x2dc

    invoke-direct {v13, v15, v14, v12}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_MENU_DISABLE_FPS:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v12, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_MENU_ENABLE_DND"

    const/16 v14, 0x8

    const/16 v10, 0x2dd

    invoke-direct {v12, v15, v14, v10}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_MENU_ENABLE_DND:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v10, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_MENU_DISABLE_DND"

    const/16 v14, 0x9

    const/16 v8, 0x2de

    invoke-direct {v10, v15, v14, v8}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_MENU_DISABLE_DND:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v8, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_MENU_CLOSE"

    const/16 v14, 0xa

    const/16 v6, 0x2df

    invoke-direct {v8, v15, v14, v6}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_MENU_CLOSE:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v6, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_MENU_GAME_MODE_WIDGET"

    const/16 v14, 0xb

    const/16 v4, 0x2e0

    invoke-direct {v6, v15, v14, v4}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_MENU_GAME_MODE_WIDGET:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v4, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_MENU_YOUTUBE_LIVE_WIDGET"

    const/16 v14, 0xc

    const/16 v2, 0x2e1

    invoke-direct {v4, v15, v14, v2}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_MENU_YOUTUBE_LIVE_WIDGET:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v2, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_MENU_PLAY_GAMES_WIDGET"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const/16 v4, 0x2e2

    invoke-direct {v2, v15, v14, v4}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_MENU_PLAY_GAMES_WIDGET:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v4, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_PLAY_GAMES_IMPRESSION"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const/16 v2, 0x343

    invoke-direct {v4, v15, v14, v2}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_PLAY_GAMES_IMPRESSION:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v2, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_MENU_SHOW_LEARN_MORE"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const/16 v4, 0x2e3

    invoke-direct {v2, v15, v14, v4}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_MENU_SHOW_LEARN_MORE:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v4, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_MENU_LEARN_MORE"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const/16 v2, 0x2e4

    invoke-direct {v4, v15, v14, v2}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_MENU_LEARN_MORE:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v2, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_SCREENSHOT"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const/16 v4, 0x2e5

    invoke-direct {v2, v15, v14, v4}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_SCREENSHOT:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v4, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_SCREEN_RECORD"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const/16 v2, 0x2e6

    invoke-direct {v4, v15, v14, v2}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_SCREEN_RECORD:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v2, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_GAME_MODE_PERFORMANCE"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const/16 v4, 0x2e7

    invoke-direct {v2, v15, v14, v4}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_GAME_MODE_PERFORMANCE:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v4, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_GAME_MODE_STANDARD"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const/16 v2, 0x2e8

    invoke-direct {v4, v15, v14, v2}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_GAME_MODE_STANDARD:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v2, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_GAME_MODE_BATTERY"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const/16 v4, 0x2e9

    invoke-direct {v2, v15, v14, v4}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_GAME_MODE_BATTERY:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v4, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v15, "GAME_DASHBOARD_RESTART_NOW"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const/16 v2, 0x2ea

    invoke-direct {v4, v15, v14, v2}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_RESTART_NOW:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v2, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v14, "GAME_DASHBOARD_RESTART_CANCELLED"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const/16 v4, 0x2eb

    invoke-direct {v2, v14, v15, v4}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_RESTART_CANCELLED:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v4, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v14, "GAME_DASHBOARD_WALKTHROUGH_SKIPPED"

    const/16 v15, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x2ec

    invoke-direct {v4, v14, v15, v2}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_WALKTHROUGH_SKIPPED:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v2, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v14, "GAME_DASHBOARD_WALKTHROUGH_LAUNCH"

    const/16 v15, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x2ed

    invoke-direct {v2, v14, v15, v4}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_WALKTHROUGH_LAUNCH:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v4, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v14, "GAME_DASHBOARD_WALKTHROUGH_OPTIMIZE"

    const/16 v15, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x2ee

    invoke-direct {v4, v14, v15, v2}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_WALKTHROUGH_OPTIMIZE:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v2, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v14, "GAME_DASHBOARD_WALKTHROUGH_SCREEN_CAPTURE"

    const/16 v15, 0x1b

    move-object/from16 v30, v4

    const/16 v4, 0x2ef

    invoke-direct {v2, v14, v15, v4}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_WALKTHROUGH_SCREEN_CAPTURE:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v4, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v14, "GAME_DASHBOARD_WALKTHROUGH_DND"

    const/16 v15, 0x1c

    move-object/from16 v31, v2

    const/16 v2, 0x2f0

    invoke-direct {v4, v14, v15, v2}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_WALKTHROUGH_DND:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    new-instance v2, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const-string v14, "GAME_DASHBOARD_WALKTHROUGH_FINISH"

    const/16 v15, 0x1d

    move-object/from16 v32, v4

    const/16 v4, 0x2f1

    invoke-direct {v2, v14, v15, v4}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_WALKTHROUGH_FINISH:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const/16 v4, 0x1e

    new-array v4, v4, [Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    const/4 v14, 0x0

    aput-object v0, v4, v14

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v25, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v27, v4, v0

    const/16 v0, 0x18

    aput-object v28, v4, v0

    const/16 v0, 0x19

    aput-object v29, v4, v0

    const/16 v0, 0x1a

    aput-object v30, v4, v0

    const/16 v0, 0x1b

    aput-object v31, v4, v0

    const/16 v0, 0x1c

    aput-object v32, v4, v0

    const/16 v0, 0x1d

    aput-object v2, v4, v0

    sput-object v4, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->$VALUES:[Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;
    .locals 1

    const-class v0, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->$VALUES:[Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    invoke-virtual {v0}, [Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->mId:I

    return p0
.end method
