.class public final Lcom/android/wm/shell/pip/PipUiEventLogger;
.super Ljava/lang/Object;
.source "PipUiEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;
    }
.end annotation


# instance fields
.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageName:Ljava/lang/String;

.field public mPackageUid:I

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Lcom/android/internal/logging/UiEventLogger;Landroid/content/pm/PackageManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/pip/PipUiEventLogger;->mPackageUid:I

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipUiEventLogger;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final log(Lcom/android/wm/shell/pip/PipUiEventLogger$PipUiEventEnum;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipUiEventLogger;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/wm/shell/pip/PipUiEventLogger;->mPackageUid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipUiEventLogger;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {p0, p1, v1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/pip/PipUiEventLogger;->mPackageName:Ljava/lang/String;

    iget p1, p1, Landroid/app/TaskInfo;->userId:I

    :try_start_0
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipUiEventLogger;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput v0, p0, Lcom/android/wm/shell/pip/PipUiEventLogger;->mPackageUid:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipUiEventLogger;->mPackageName:Ljava/lang/String;

    iput v0, p0, Lcom/android/wm/shell/pip/PipUiEventLogger;->mPackageUid:I

    :goto_0
    return-void
.end method
