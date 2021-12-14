.class public Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
.super Ljava/lang/Object;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/app/GameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GamePackageConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;
    }
.end annotation


# static fields
.field public static final METADATA_ANGLE_ALLOW_ANGLE:Ljava/lang/String; = "com.android.graphics.intervention.angle.allowAngle"

.field public static final METADATA_BATTERY_MODE_ENABLE:Ljava/lang/String; = "com.android.app.gamemode.battery.enabled"

.field public static final METADATA_PERFORMANCE_MODE_ENABLE:Ljava/lang/String; = "com.android.app.gamemode.performance.enabled"

.field public static final METADATA_WM_ALLOW_DOWNSCALE:Ljava/lang/String; = "com.android.graphics.intervention.wm.allowDownscale"

.field public static final TAG:Ljava/lang/String; = "GameManagerService_GamePackageConfiguration"


# instance fields
.field private mAllowAngle:Z

.field private mAllowDownscale:Z

.field private mBatteryModeOptedIn:Z

.field private final mModeConfigs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;

.field private mPerfModeOptedIn:Z

.field final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/app/GameManagerService;Ljava/lang/String;I)V
    .locals 8

    const-string v0, "GameManagerService_GamePackageConfiguration"

    iput-object p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/app/GameManagerService;->access$400(Lcom/android/server/app/GameManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, p2, v3, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.android.app.gamemode.performance.enabled"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOptedIn:Z

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.android.app.gamemode.battery.enabled"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOptedIn:Z

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.android.graphics.intervention.wm.allowDownscale"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.android.graphics.intervention.angle.allowAngle"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowAngle:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOptedIn:Z

    iput-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOptedIn:Z

    iput-boolean v4, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    iput-boolean v4, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowAngle:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Failed to get package metadata"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v2, "game_overlay"

    invoke-static {v2, p2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_2
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    :try_start_1
    new-instance v6, Landroid/util/KeyValueListParser;

    const/16 v7, 0x2c

    invoke-direct {v6, v7}, Landroid/util/KeyValueListParser;-><init>(C)V

    invoke-virtual {v6, v5}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    new-instance v7, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    invoke-direct {v7, p0, v6}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;-><init>(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;Landroid/util/KeyValueListParser;)V

    invoke-virtual {p0, v7}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->addModeConfig(Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v6

    const-string v7, "Invalid config string"

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModesBitfield()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowAngle:Z

    return v0
.end method

.method private getAvailableGameModesBitfield()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v3, v2}, Lcom/android/server/app/GameManagerService;->access$700(Lcom/android/server/app/GameManagerService;I)I

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOptedIn:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->this$0:Lcom/android/server/app/GameManagerService;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/server/app/GameManagerService;->access$700(Lcom/android/server/app/GameManagerService;I)I

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOptedIn:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->this$0:Lcom/android/server/app/GameManagerService;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/app/GameManagerService;->access$700(Lcom/android/server/app/GameManagerService;I)I

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v2, v1}, Lcom/android/server/app/GameManagerService;->access$700(Lcom/android/server/app/GameManagerService;I)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->this$0:Lcom/android/server/app/GameManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/app/GameManagerService;->access$700(Lcom/android/server/app/GameManagerService;I)I

    move-result v1

    or-int/2addr v0, v1

    :goto_1
    return v0
.end method


# virtual methods
.method public addModeConfig(Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getGameMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid game mode config for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameManagerService_GamePackageConfiguration"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getAvailableGameModes()[I
    .locals 6

    invoke-direct {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModesBitfield()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    nop

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-gt v4, v3, :cond_1

    shr-int v5, v0, v4

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    add-int/lit8 v5, v2, 0x1

    aput v4, v1, v2

    move v2, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;
    .locals 2

    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOptedIn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOptedIn:Z

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

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Modes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public willGamePerformOptimizations(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOptedIn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOptedIn:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
