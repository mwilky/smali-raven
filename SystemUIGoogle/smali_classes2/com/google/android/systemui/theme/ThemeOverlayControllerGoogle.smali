.class public final Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;
.super Lcom/android/systemui/theme/ThemeOverlayController;
.source "ThemeOverlayControllerGoogle.kt"


# instance fields
.field private colorScheme:Lcom/google/material/monet/ColorScheme;

.field private final context:Landroid/content/Context;

.field private final resources:Landroid/content/res/Resources;

.field private final systemProperties:Lcom/android/systemui/flags/SystemPropertiesHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/theme/ThemeOverlayApplier;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/flags/SystemPropertiesHelper;Landroid/content/res/Resources;Landroid/app/WallpaperManager;Landroid/os/UserManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 16

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p8

    move-object/from16 v12, p9

    move-object/from16 v11, p17

    const-string v0, "context"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgHandler"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainExecutor"

    move-object/from16 v4, p4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgExecutor"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themeOverlayApplier"

    move-object/from16 v6, p6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secureSettings"

    move-object/from16 v7, p7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "systemProperties"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resources"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wallpaperManager"

    move-object/from16 v8, p10

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userManager"

    move-object/from16 v9, p11

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpManager"

    move-object/from16 v10, p12

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceProvisionedController"

    move-object/from16 v1, p13

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userTracker"

    move-object/from16 v12, p14

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlags"

    move-object/from16 v13, p15

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wakefulnessLifecycle"

    move-object/from16 v14, p16

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationController"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    move-object/from16 v12, p12

    move-object/from16 v15, p1

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/theme/ThemeOverlayController;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/theme/ThemeOverlayApplier;Lcom/android/systemui/util/settings/SecureSettings;Landroid/app/WallpaperManager;Landroid/os/UserManager;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V

    move-object v1, v15

    iput-object v1, v0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->context:Landroid/content/Context;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->systemProperties:Lcom/android/systemui/flags/SystemPropertiesHelper;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->resources:Landroid/content/res/Resources;

    new-instance v1, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle$configurationChangedListener$1;

    invoke-direct {v1, v0}, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle$configurationChangedListener$1;-><init>(Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;)V

    move-object/from16 v0, p17

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private final inDarkMode()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/16 v1, 0x10

    if-eq p0, v1, :cond_1

    const/16 v1, 0x20

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/theme/ThemeOverlayController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->colorScheme:Lcom/google/material/monet/ColorScheme;

    const-string p1, "colorScheme: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "ThemeOverlayControllerGoogle: yes"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected getAccentColor(Landroid/app/WallpaperColors;)I
    .locals 0

    const-string p0, "wallpaperColors"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/google/material/monet/ColorScheme;->Companion:Lcom/google/material/monet/ColorScheme$Companion;

    invoke-virtual {p0, p1}, Lcom/google/material/monet/ColorScheme$Companion;->getSeedColor(Landroid/app/WallpaperColors;)I

    move-result p0

    return p0
.end method

.method protected getNeutralColor(Landroid/app/WallpaperColors;)I
    .locals 0

    const-string p0, "wallpaperColors"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/google/material/monet/ColorScheme;->Companion:Lcom/google/material/monet/ColorScheme$Companion;

    invoke-virtual {p0, p1}, Lcom/google/material/monet/ColorScheme$Companion;->getSeedColor(Landroid/app/WallpaperColors;)I

    move-result p0

    return p0
.end method

.method protected getOverlay(II)Landroid/content/om/FabricatedOverlay;
    .locals 9

    new-instance v0, Lcom/google/material/monet/ColorScheme;

    invoke-direct {p0}, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->inDarkMode()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/google/material/monet/ColorScheme;-><init>(IZ)V

    iput-object v0, p0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->colorScheme:Lcom/google/material/monet/ColorScheme;

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/material/monet/ColorScheme;->getAllAccentColors()Ljava/util/List;

    move-result-object p2

    const-string v0, "accent"

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/material/monet/ColorScheme;->getAllNeutralColors()Ljava/util/List;

    move-result-object p2

    const-string v0, "neutral"

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->colorScheme:Lcom/google/material/monet/ColorScheme;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/material/monet/ColorScheme;->getAccent1()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-instance v1, Landroid/content/om/FabricatedOverlay$Builder;

    const-string v2, "com.android.systemui"

    const-string v3, "android"

    invoke-direct {v1, v2, v0, v3}, Landroid/content/om/FabricatedOverlay$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_4

    :goto_1
    add-int/lit8 v4, v2, 0x1

    rem-int v5, v2, p0

    div-int v6, v2, p0

    add-int/2addr v6, p1

    const-string v7, "android:color/system_"

    if-eqz v5, :cond_2

    if-eq v5, p1, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x5f

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "00"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_50"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "_10"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    const/16 v6, 0x1c

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/16 v7, 0xff

    invoke-static {v2, v7}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v1, v5, v6, v2}, Landroid/content/om/FabricatedOverlay$Builder;->setResourceValue(Ljava/lang/String;II)Landroid/content/om/FabricatedOverlay$Builder;

    if-le v4, v3, :cond_3

    goto :goto_3

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    :goto_3
    invoke-virtual {v1}, Landroid/content/om/FabricatedOverlay$Builder;->build()Landroid/content/om/FabricatedOverlay;

    move-result-object p0

    return-object p0
.end method

.method public final setBootColorSystemProps()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->systemProperties:Lcom/android/systemui/flags/SystemPropertiesHelper;

    const-string v1, "persist.bootanim.color1"

    iget-object v2, p0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->resources:Landroid/content/res/Resources;

    const v3, 0x1060054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/flags/SystemPropertiesHelper;->set(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->systemProperties:Lcom/android/systemui/flags/SystemPropertiesHelper;

    const-string v1, "persist.bootanim.color2"

    iget-object v2, p0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->resources:Landroid/content/res/Resources;

    const v3, 0x106003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/flags/SystemPropertiesHelper;->set(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->resources:Landroid/content/res/Resources;

    const v1, 0x106004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->systemProperties:Lcom/android/systemui/flags/SystemPropertiesHelper;

    const-string v2, "persist.bootanim.color3"

    const/high16 v3, 0x42c40000    # 98.0f

    invoke-virtual {v0, v3}, Landroid/content/res/ColorStateList;->withLStar(F)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/flags/SystemPropertiesHelper;->set(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->systemProperties:Lcom/android/systemui/flags/SystemPropertiesHelper;

    const-string v1, "persist.bootanim.color4"

    iget-object p0, p0, Lcom/google/android/systemui/theme/ThemeOverlayControllerGoogle;->resources:Landroid/content/res/Resources;

    const v2, 0x106003a

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/flags/SystemPropertiesHelper;->set(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ThemeOverlayController"

    const-string v0, "Cannot set sysprop. Look for \'init\' and \'dmesg\' logs for more info."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
