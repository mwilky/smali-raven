.class public Lcom/google/android/systemui/LiveWallpaperScrimController;
.super Lcom/android/systemui/statusbar/phone/ScrimController;
.source "LiveWallpaperScrimController.java"


# static fields
.field private static REDUCED_SCRIM_WALLPAPERS:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentUser:I

.field private final mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

.field private final mWallpaperManager:Landroid/app/IWallpaperManager;


# direct methods
.method public static synthetic $r8$lambda$B7g8-AZwVmAAO1vc8SP3KAir8mY(Lcom/google/android/systemui/LiveWallpaperScrimController;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/LiveWallpaperScrimController;->lambda$isReducedScrimWallpaperSet$0()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/content/ComponentName;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.breel.geswallpapers"

    const-string v3, "com.breel.geswallpapers.wallpapers.EarthWallpaperService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.breel.wallpapers18"

    const-string v3, "com.breel.wallpapers18.delight.wallpapers.DelightWallpaperV1"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.breel.wallpapers18.delight.wallpapers.DelightWallpaperV2"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.breel.wallpapers18.delight.wallpapers.DelightWallpaperV3"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.breel.wallpapers18.surfandturf.wallpapers.variations.SurfAndTurfWallpaperV2"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.breel.wallpapers18.cities.wallpapers.variations.SanFranciscoWallpaper"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.breel.wallpapers18.cities.wallpapers.variations.NewYorkWallpaper"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/LiveWallpaperScrimController;->REDUCED_SCRIM_WALLPAPERS:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;Landroid/os/Handler;Landroid/app/IWallpaperManager;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/dock/DockManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;)V
    .locals 14

    move-object v13, p0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p9

    move-object/from16 v8, p11

    move-object/from16 v9, p10

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/statusbar/phone/ScrimController;-><init>(Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/util/wakelock/DelayedWakeLock$Builder;Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, v13, Lcom/google/android/systemui/LiveWallpaperScrimController;->mCurrentUser:I

    move-object/from16 v0, p7

    iput-object v0, v13, Lcom/google/android/systemui/LiveWallpaperScrimController;->mWallpaperManager:Landroid/app/IWallpaperManager;

    move-object/from16 v0, p8

    iput-object v0, v13, Lcom/google/android/systemui/LiveWallpaperScrimController;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    return-void
.end method

.method private isReducedScrimWallpaperSet()Z
    .locals 1

    new-instance v0, Lcom/google/android/systemui/LiveWallpaperScrimController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/LiveWallpaperScrimController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/LiveWallpaperScrimController;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$isReducedScrimWallpaperSet$0()Ljava/lang/Boolean;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/LiveWallpaperScrimController;->mWallpaperManager:Landroid/app/IWallpaperManager;

    iget v1, p0, Lcom/google/android/systemui/LiveWallpaperScrimController;->mCurrentUser:I

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/android/systemui/LiveWallpaperScrimController;->REDUCED_SCRIM_WALLPAPERS:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/LiveWallpaperScrimController;->mLockscreenWallpaper:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private updateScrimValues()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/systemui/LiveWallpaperScrimController;->isReducedScrimWallpaperSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindValues(F)V

    goto :goto_0

    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindValues(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public setCurrentUser(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/LiveWallpaperScrimController;->mCurrentUser:I

    invoke-direct {p0}, Lcom/google/android/systemui/LiveWallpaperScrimController;->updateScrimValues()V

    return-void
.end method

.method public transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/systemui/LiveWallpaperScrimController;->updateScrimValues()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    return-void
.end method
