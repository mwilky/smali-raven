.class public Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;
.super Lcom/android/systemui/SystemUI;
.source "HomeSoundEffectController.java"


# instance fields
.field private final mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mIsLastTaskHome:Z

.field private mLastActivityHasNoHomeSound:Z

.field private mLastActivityType:I
    .annotation build Landroid/app/WindowConfiguration$ActivityType;
    .end annotation
.end field

.field private mLastHomePackageName:Ljava/lang/String;

.field private mLastTaskId:I

.field private final mPlayHomeSoundAfterAssistant:Z

.field private final mPlayHomeSoundAfterDream:Z

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Lcom/android/systemui/shared/system/TaskStackChangeListeners;Lcom/android/systemui/shared/system/ActivityManagerWrapper;Landroid/content/pm/PackageManager;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mIsLastTaskHome:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mLastActivityHasNoHomeSound:Z

    iput-object p2, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    iput-object p4, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iput-object p5, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$bool;->config_playHomeSoundAfterAssistant:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mPlayHomeSoundAfterAssistant:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$bool;->config_playHomeSoundAfterDream:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mPlayHomeSoundAfterDream:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;)Lcom/android/systemui/shared/system/ActivityManagerWrapper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->handleTaskStackChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private handleTaskStackChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->shouldPlayHomeSoundForCurrentTransition(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->updateLastTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private hasFlagNoSound(Landroid/content/pm/ActivityInfo;)Z
    .locals 2

    iget v0, p1, Landroid/content/pm/ActivityInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mPm:Landroid/content/pm/PackageManager;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v0, "android.permission.DISABLE_SYSTEM_SOUND_EFFECTS"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "HomeSoundEffectController"

    const-string p1, "Activity has flag playHomeTransition set to false but doesn\'t hold required permission android.permission.DISABLE_SYSTEM_SOUND_EFFECTS"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method private shouldPlayHomeSoundForCurrentTransition(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 4

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v3, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mLastTaskId:I

    if-ne p1, v3, :cond_1

    return v2

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mIsLastTaskHome:Z

    if-nez p1, :cond_6

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mLastActivityHasNoHomeSound:Z

    if-eqz p1, :cond_3

    return v2

    :cond_3
    iget p1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mLastActivityType:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mPlayHomeSoundAfterAssistant:Z

    if-nez v0, :cond_4

    return v2

    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    iget-boolean p0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mPlayHomeSoundAfterDream:Z

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v1

    :cond_6
    :goto_1
    return v2
.end method

.method private updateLastTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 5

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mLastTaskId:I

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    iput v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mLastActivityType:I

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0}, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->hasFlagNoSound(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mLastActivityHasNoHomeSound:Z

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mLastHomePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v0, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mIsLastTaskHome:Z

    if-eqz v0, :cond_3

    if-nez v3, :cond_3

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mLastHomePackageName:Ljava/lang/String;

    :cond_3
    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isHomeSoundEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    new-instance v1, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController$1;-><init>(Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    :cond_0
    return-void
.end method
