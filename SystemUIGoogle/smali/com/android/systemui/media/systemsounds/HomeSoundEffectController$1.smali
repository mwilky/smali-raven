.class public final Lcom/android/systemui/media/systemsounds/HomeSoundEffectController$1;
.super Ljava/lang/Object;
.source "HomeSoundEffectController.java"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController$1;->this$0:Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskStackChanged()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController$1;->this$0:Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;

    iget-object v0, v0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController$1;->this$0:Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iget v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v6, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mLastTaskId:I

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mIsLastTaskHome:Z

    if-nez v5, :cond_7

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mLastActivityHasNoHomeSound:Z

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mLastActivityType:I

    const/4 v5, 0x4

    if-ne v1, v5, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mPlayHomeSoundAfterAssistant:Z

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x5

    if-ne v1, v5, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mPlayHomeSoundAfterDream:Z

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    move v1, v4

    goto :goto_2

    :cond_7
    :goto_1
    move v1, v3

    :goto_2
    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_8
    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mLastTaskId:I

    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    iput v1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mLastActivityType:I

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v5, v1, Landroid/content/pm/ActivityInfo;->privateFlags:I

    and-int/2addr v5, v2

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v6, "android.permission.DISABLE_SYSTEM_SOUND_EFFECTS"

    invoke-virtual {v5, v6, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_9

    move v1, v4

    goto :goto_3

    :cond_9
    const-string v1, "HomeSoundEffectController"

    const-string v5, "Activity has flag playHomeTransition set to false but doesn\'t hold required permission android.permission.DISABLE_SYSTEM_SOUND_EFFECTS"

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move v1, v3

    :goto_3
    iput-boolean v1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mLastActivityHasNoHomeSound:Z

    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-ne v1, v2, :cond_b

    move v1, v4

    goto :goto_4

    :cond_b
    move v1, v3

    :goto_4
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mLastHomePackageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    :cond_c
    move v3, v4

    :cond_d
    iput-boolean v3, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mIsLastTaskHome:Z

    if-eqz v1, :cond_e

    if-nez v2, :cond_e

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mLastHomePackageName:Ljava/lang/String;

    :cond_e
    :goto_5
    return-void
.end method
