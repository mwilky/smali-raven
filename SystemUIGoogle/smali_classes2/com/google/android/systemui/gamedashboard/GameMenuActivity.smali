.class public final Lcom/google/android/systemui/gamedashboard/GameMenuActivity;
.super Landroid/app/Activity;
.source "GameMenuActivity.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# static fields
.field private static final DND_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mAvailableModes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBackNavigationButton:Landroid/view/View;

.field private mBatteryModeRadioButton:Landroid/widget/RadioButton;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

.field private mCurrentView:Landroid/view/View;

.field private mCurrentWidgetContainer:Lcom/google/android/systemui/gamedashboard/WidgetContainer;

.field private mDndButton:Lcom/google/android/systemui/gamedashboard/GameDashboardButton;

.field private final mDndController:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

.field private final mDndReceiver:Landroid/content/BroadcastReceiver;

.field private mGameManager:Landroid/app/GameManager;

.field private mGameMenuMainView:Landroid/view/View;

.field private mGameModeView:Landroid/view/View;

.field private mGameModeWidget:Lcom/google/android/systemui/gamedashboard/WidgetView;

.field private mGameModesSupported:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMaxWidgetsPerContainer:I

.field private mPerformanceModeRadioButton:Landroid/widget/RadioButton;

.field private mPlayGamesWidget:Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;

.field private mSettingsButton:Landroid/view/View;

.field private mShortAnimationDuration:I

.field private final mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

.field private mStandardModeRadioButton:Landroid/widget/RadioButton;

.field private final mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

.field private mWidgetsView:Landroid/widget/LinearLayout;

.field private mYouTubeLiveWidget:Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;


# direct methods
.method public static synthetic $r8$lambda$5ROu3H0oSIkjhAkuxxyKG1_6pjw(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$4(Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5jBklnlj0hkylHjK1ozzn9kbzX0(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$3(Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MuXd_laXlA32UI__C_WC09BCwUQ(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pj3fgokLzwuSM5cTYHVtLA_DIPg(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QagpVM_T05ZBSCtGnH-yi-Y7mYA(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$updateDndButton$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SHI-VXDbDbm9UsVbYUcsw54R13Y(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;ILandroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$expandTouchTargetArea$12(ILandroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U1zrIbToKpMk3rvTlaHvA9ihk4I(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_uSpYHewBUz8590T_eWLSLmy70Q(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;ILjava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$showRestartDialog$17(ILjava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$andFoqUgmqAWKLsvFGGq1wHEZoo(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$5(Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dRFE3vo5YOmLiXYXOERMZYyui-k(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$updateGameModeWidget$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$haVTTxMl9ISBumDwIrL8aDgUc94(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o8B0Wo0EVb2brv3rhyv8dOFyPCk(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oPthuPcP_21Lyn6IAr7z1_0S69A(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r4JrlxURGNwWs4TcnqSUcSCSfCo(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$updateGameModeWidget$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r6p7fe6gP0Mwu0OZd0ubZ1xUDG0(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r7jn6jSOZE-K8OqWjPQfJF14jPE(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$smoOveR9dBBYZWhiftRTAgxjEB0(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$onCreate$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uCTJxLFfrnT8FqWJoYlNCHJI0nQ(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$showRestartDialog$18(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zqKHLRajYjwL0GOesqfBbknsF_s(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->lambda$updateGameModeWidget$15(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->DND_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/gamedashboard/EntryPointController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Lcom/google/android/systemui/gamedashboard/GameModeDndController;Landroid/view/LayoutInflater;Landroid/os/Handler;Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mAvailableModes:Landroid/util/ArraySet;

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    iput-object p4, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    iput-object p3, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p5, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mDndController:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    iput-object p6, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->createDndReceiver()Landroid/content/BroadcastReceiver;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mDndReceiver:Landroid/content/BroadcastReceiver;

    iput-object p7, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mMainHandler:Landroid/os/Handler;

    iput-object p8, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

    invoke-virtual {p8, p2}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;->setEntryPointController(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$002(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mBackNavigationButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mSettingsButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)Lcom/google/android/systemui/gamedashboard/GameModeDndController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mDndController:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)Lcom/google/android/systemui/gamedashboard/GameDashboardButton;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mDndButton:Lcom/google/android/systemui/gamedashboard/GameDashboardButton;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

    return-object p0
.end method

.method private createDndReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$3;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    return-object v0
.end method

.method public static createIntentForStart(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private expandTouchTargetArea(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda18;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;ILandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initAvailableGameModes()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameManager:Landroid/app/GameManager;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-virtual {v1}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->getGamePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/GameManager;->getAvailableGameModes(Ljava/lang/String;)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v0, v3

    iget-object v5, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mAvailableModes:Landroid/util/ArraySet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mAvailableModes:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mAvailableModes:Landroid/util/ArraySet;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iput-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameModesSupported:Z

    :cond_1
    return-void
.end method

.method private initWidgets()V
    .locals 6

    sget v0, Lcom/android/systemui/R$id;->game_menu_widgets:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mWidgetsView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mMaxWidgetsPerContainer:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mMaxWidgetsPerContainer:I

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/systemui/R$layout;->game_menu_widget_container:I

    iget-object v3, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mWidgetsView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentWidgetContainer:Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    iget-object v3, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/android/systemui/R$layout;->game_menu_widget:I

    invoke-virtual {v3, v5, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/gamedashboard/WidgetView;

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameModeWidget:Lcom/google/android/systemui/gamedashboard/WidgetView;

    iget-object v3, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentWidgetContainer:Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    invoke-virtual {v3, v0}, Lcom/google/android/systemui/gamedashboard/WidgetContainer;->addWidget(Lcom/google/android/systemui/gamedashboard/WidgetView;)I

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentWidgetContainer:Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    iget-object v3, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

    invoke-static {p0, v0, v3}, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;->create(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;)Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mYouTubeLiveWidget:Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;

    iget-object v3, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentWidgetContainer:Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;->getView()Lcom/google/android/systemui/gamedashboard/WidgetView;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/systemui/gamedashboard/WidgetContainer;->addWidget(Lcom/google/android/systemui/gamedashboard/WidgetView;)I

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentWidgetContainer:Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/WidgetContainer;->getWidgetCount()I

    move-result v0

    iget v3, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mMaxWidgetsPerContainer:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mWidgetsView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentWidgetContainer:Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mWidgetsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentWidgetContainer:Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentWidgetContainer:Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

    invoke-static {p0, v0, v2, v3}, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->create(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/os/Handler;Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;)Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mPlayGamesWidget:Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentWidgetContainer:Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->getView()Lcom/google/android/systemui/gamedashboard/WidgetView;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/systemui/gamedashboard/WidgetContainer;->addWidget(Lcom/google/android/systemui/gamedashboard/WidgetView;)I

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentWidgetContainer:Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/WidgetContainer;->getWidgetCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mMaxWidgetsPerContainer:I

    if-ne v0, v1, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentWidgetContainer:Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/WidgetContainer;->getWidgetCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mMaxWidgetsPerContainer:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentWidgetContainer:Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    invoke-static {p0, v0}, Lcom/google/android/systemui/gamedashboard/PlaceholderWidget;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/google/android/systemui/gamedashboard/PlaceholderWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentWidgetContainer:Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/PlaceholderWidget;->getView()Lcom/google/android/systemui/gamedashboard/WidgetView;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/systemui/gamedashboard/WidgetContainer;->addWidget(Lcom/google/android/systemui/gamedashboard/WidgetView;)I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mWidgetsView:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentWidgetContainer:Lcom/google/android/systemui/gamedashboard/WidgetContainer;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$expandTouchTargetArea$12(ILandroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, p1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    new-instance p0, Landroid/view/TouchDelegate;

    invoke-direct {p0, p1, p2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p3, p0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.google.android.settings.games.GAME_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.settings"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic lambda$onCreate$10(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->onGameModeSelectionChanged(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCreate$11(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->onGameModeSelectionChanged(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCreate$2(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

    sget-object v0, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_MENU_CLOSE:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;->log(Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    invoke-virtual {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->autoUndock()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$3(Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    invoke-virtual {p1}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->isToggled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->setScreenshotVisibility(Z)V

    return-void
.end method

.method private synthetic lambda$onCreate$4(Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    invoke-virtual {p1}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->isToggled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->setRecordVisibility(Z)V

    return-void
.end method

.method private synthetic lambda$onCreate$5(Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->isToggled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    invoke-virtual {p2, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->setFpsVisibility(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->getGameTaskId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->registerFps(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->unregisterFps()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$6(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->onGameModeSelectionChanged(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCreate$7(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->onGameModeSelectionChanged(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCreate$8(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->onGameModeSelectionChanged(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCreate$9(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->onGameModeSelectionChanged(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$showRestartDialog$17(ILjava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->toggleGameModeRadioButtons(I)V

    iget-object p3, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameManager:Landroid/app/GameManager;

    invoke-virtual {p3, p2, p1}, Landroid/app/GameManager;->setGameMode(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

    sget-object p2, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_RESTART_NOW:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    invoke-virtual {p1, p2}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;->log(Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;)V

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->restartGameActivity()V

    return-void
.end method

.method private synthetic lambda$showRestartDialog$18(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

    sget-object p1, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_RESTART_CANCELLED:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;->log(Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;)V

    return-void
.end method

.method private synthetic lambda$updateDndButton$13(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mDndController:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    invoke-virtual {p1}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->isGameModeDndOn()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->showDndText(Z)V

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mDndController:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->setGameModeDndOn(Z)V

    return-void
.end method

.method private synthetic lambda$updateGameModeWidget$14(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->navigateToGameModeView()V

    return-void
.end method

.method private synthetic lambda$updateGameModeWidget$15(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->navigateToGameModeView()V

    return-void
.end method

.method private synthetic lambda$updateGameModeWidget$16(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->navigateToGameModeView()V

    return-void
.end method

.method private navigateToGameModeView()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

    sget-object v1, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_MENU_GAME_MODE_WIDGET:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;->log(Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;)V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameModeView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$string;->game_menu_game_mode_title:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->navigateToView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameManager:Landroid/app/GameManager;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-virtual {v1}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->getGamePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/GameManager;->getGameMode(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->toggleGameModeRadioButtons(I)V

    return-void
.end method

.method private navigateToView(Landroid/view/View;I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortAnimationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$1;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;ILandroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortAnimationDuration:I

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$2;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private onGameModeSelectionChanged(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/systemui/R$id;->performance_mode:I

    if-eq p1, v0, :cond_5

    sget v0, Lcom/android/systemui/R$id;->performance_mode_radio_button:I

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    sget v0, Lcom/android/systemui/R$id;->standard_mode:I

    if-eq p1, v0, :cond_4

    sget v0, Lcom/android/systemui/R$id;->standard_mode_radio_button:I

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    sget v0, Lcom/android/systemui/R$id;->battery_mode:I

    if-eq p1, v0, :cond_3

    sget v0, Lcom/android/systemui/R$id;->battery_mode_radio_button:I

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

    sget-object v0, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_GAME_MODE_BATTERY:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;->log(Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;)V

    const/4 p1, 0x3

    goto :goto_3

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

    sget-object v0, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_GAME_MODE_STANDARD:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;->log(Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;)V

    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

    sget-object v0, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_GAME_MODE_PERFORMANCE:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;->log(Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;)V

    const/4 p1, 0x2

    :goto_3
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->getGamePackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameManager:Landroid/app/GameManager;

    invoke-virtual {v1, v0}, Landroid/app/GameManager;->getGameMode(Ljava/lang/String;)I

    move-result v1

    if-eq v1, p1, :cond_6

    invoke-direct {p0, v1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->toggleGameModeRadioButtons(I)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->showRestartDialog(Ljava/lang/String;I)V

    :cond_6
    return-void
.end method

.method private restartGameActivity()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->getGamePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-virtual {v2}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->getGamePackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to restart the game: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameMenuActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private showRestartDialog(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/systemui/R$string;->game_mode_restart_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    sget v1, Lcom/android/systemui/R$string;->game_mode_restart_dialog_message_standard:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    sget v1, Lcom/android/systemui/R$string;->game_mode_restart_dialog_message_performance:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    sget v1, Lcom/android/systemui/R$string;->game_mode_restart_dialog_message_battery:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    :cond_2
    :goto_0
    sget v1, Lcom/android/systemui/R$string;->game_mode_restart_dialog_confirm:I

    new-instance v2, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p2, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    sget p1, Lcom/android/systemui/R$string;->game_mode_restart_dialog_cancel:I

    new-instance p2, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private toggleGameModeRadioButtons(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mPerformanceModeRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mStandardModeRadioButton:Landroid/widget/RadioButton;

    if-ne p1, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mBatteryModeRadioButton:Landroid/widget/RadioButton;

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method private updateGameModeWidget(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameManager:Landroid/app/GameManager;

    invoke-virtual {v0, p1}, Landroid/app/GameManager;->getGameMode(Ljava/lang/String;)I

    move-result p1

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameModesSupported:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameModeWidget:Lcom/google/android/systemui/gamedashboard/WidgetView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/gamedashboard/WidgetView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameModeWidget:Lcom/google/android/systemui/gamedashboard/WidgetView;

    sget v0, Lcom/android/systemui/R$drawable;->ic_game_mode:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->game_menu_game_mode_title:I

    sget v1, Lcom/android/systemui/R$string;->game_mode_unsupported_description:I

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/systemui/gamedashboard/WidgetView;->update(Landroid/graphics/drawable/Drawable;IILandroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameModeWidget:Lcom/google/android/systemui/gamedashboard/WidgetView;

    invoke-virtual {p1, v1}, Lcom/google/android/systemui/gamedashboard/WidgetView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameModeWidget:Lcom/google/android/systemui/gamedashboard/WidgetView;

    sget v0, Lcom/android/systemui/R$drawable;->ic_game_mode_performance_widget:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->game_mode_performance_title:I

    sget v2, Lcom/android/systemui/R$string;->game_mode_performance_description:I

    new-instance v3, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda10;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/systemui/gamedashboard/WidgetView;->update(Landroid/graphics/drawable/Drawable;IILandroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameModeWidget:Lcom/google/android/systemui/gamedashboard/WidgetView;

    invoke-virtual {p1, v1}, Lcom/google/android/systemui/gamedashboard/WidgetView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameModeWidget:Lcom/google/android/systemui/gamedashboard/WidgetView;

    sget v0, Lcom/android/systemui/R$drawable;->ic_game_mode_battery_widget:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->game_mode_battery_title:I

    sget v2, Lcom/android/systemui/R$string;->game_mode_battery_description:I

    new-instance v3, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda14;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/systemui/gamedashboard/WidgetView;->update(Landroid/graphics/drawable/Drawable;IILandroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameModeWidget:Lcom/google/android/systemui/gamedashboard/WidgetView;

    sget v0, Lcom/android/systemui/R$drawable;->ic_game_mode:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->game_menu_game_mode_title:I

    sget v2, Lcom/android/systemui/R$string;->game_menu_game_mode_description:I

    new-instance v3, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/systemui/gamedashboard/WidgetView;->update(Landroid/graphics/drawable/Drawable;IILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateWidgets()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->getGamePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->updateGameModeWidget(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mYouTubeLiveWidget:Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;

    invoke-virtual {v1, v0}, Lcom/google/android/systemui/gamedashboard/YouTubeLiveWidget;->update(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mPlayGamesWidget:Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/gamedashboard/PlayGamesWidget;->update(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p0

    const/4 v1, 0x0

    if-lt v0, p0, :cond_1

    sub-int/2addr v0, p0

    move p0, v1

    goto :goto_1

    :cond_1
    sub-int/2addr p0, v0

    move v0, v1

    :goto_1
    invoke-virtual {p1, p0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    :cond_2
    return-object p2
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/systemui/R$id;->game_menu_main:I

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameMenuMainView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$string;->game_dashboard_game_menu_title:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->navigateToView(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->updateWidgets()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/android/systemui/R$layout;->game_dashboard_game_menu:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const-class p1, Landroid/app/GameManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/GameManager;

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameManager:Landroid/app/GameManager;

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->initAvailableGameModes()V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x10e0000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortAnimationDuration:I

    sget p1, Lcom/android/systemui/R$id;->game_menu_back_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mBackNavigationButton:Landroid/view/View;

    new-instance v0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda9;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mBackNavigationButton:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$dimen;->game_dashboard_back_button_touch_region_padding:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->expandTouchTargetArea(Landroid/view/View;I)V

    sget p1, Lcom/android/systemui/R$id;->game_menu_settings_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mSettingsButton:Landroid/view/View;

    new-instance v1, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mSettingsButton:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->expandTouchTargetArea(Landroid/view/View;I)V

    sget p1, Lcom/android/systemui/R$id;->game_menu_close_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/android/systemui/R$dimen;->game_menu_close_button_touch_region_padding:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->expandTouchTargetArea(Landroid/view/View;I)V

    sget p1, Lcom/android/systemui/R$id;->game_menu_main:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameMenuMainView:Landroid/view/View;

    sget p1, Lcom/android/systemui/R$id;->game_menu_screenshot:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;

    new-instance v0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda16;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Lcom/google/android/systemui/gamedashboard/GameDashboardButton;)V

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->isScreenshotVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->setToggled(ZZ)V

    sget p1, Lcom/android/systemui/R$id;->game_menu_screen_record:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;

    new-instance v0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda15;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Lcom/google/android/systemui/gamedashboard/GameDashboardButton;)V

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->isRecordVisible()Z

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->setToggled(ZZ)V

    sget p1, Lcom/android/systemui/R$id;->game_menu_fps:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;

    new-instance v0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda17;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;Lcom/google/android/systemui/gamedashboard/GameDashboardButton;)V

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->isFpsVisible()Z

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->setToggled(ZZ)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mDndReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->DND_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget p1, Lcom/android/systemui/R$id;->game_mode:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameModeView:Landroid/view/View;

    sget p1, Lcom/android/systemui/R$id;->performance_mode_radio_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mPerformanceModeRadioButton:Landroid/widget/RadioButton;

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mAvailableModes:Landroid/util/ArraySet;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mPerformanceModeRadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mPerformanceModeRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    sget p1, Lcom/android/systemui/R$id;->performance_mode:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mPerformanceModeRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    :goto_0
    sget p1, Lcom/android/systemui/R$id;->standard_mode_radio_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mStandardModeRadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda13;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/android/systemui/R$id;->battery_mode_radio_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mBatteryModeRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mBatteryModeRadioButton:Landroid/widget/RadioButton;

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mAvailableModes:Landroid/util/ArraySet;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mBatteryModeRadioButton:Landroid/widget/RadioButton;

    new-instance v1, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/android/systemui/R$id;->battery_mode:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda12;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mBatteryModeRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mBatteryModeRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    :goto_1
    sget p1, Lcom/android/systemui/R$id;->game_menu_dnd:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mDndButton:Lcom/google/android/systemui/gamedashboard/GameDashboardButton;

    sget p1, Lcom/android/systemui/R$id;->standard_mode:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda11;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mGameMenuMainView:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mCurrentView:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->initWidgets()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mDndReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->updateDndButton()V

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->updateWidgets()V

    return-void
.end method

.method updateDndButton()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mDndController:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->refreshRule()V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mDndButton:Lcom/google/android/systemui/gamedashboard/GameDashboardButton;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mDndController:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    invoke-virtual {v1}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->isGameModeDndOn()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->setToggled(ZZ)V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->mDndButton:Lcom/google/android/systemui/gamedashboard/GameDashboardButton;

    new-instance v1, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/systemui/gamedashboard/GameMenuActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
