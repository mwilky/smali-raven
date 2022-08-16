.class public final Lcom/android/wm/shell/ShellCommandHandlerImpl;
.super Ljava/lang/Object;
.source "ShellCommandHandlerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;
    }
.end annotation


# instance fields
.field public final mAppPairsOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairsController;",
            ">;"
        }
    .end annotation
.end field

.field public final mHideDisplayCutout:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;",
            ">;"
        }
    .end annotation
.end field

.field public final mImpl:Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;

.field public final mKidsModeTaskOrganizer:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;

.field public final mLegacySplitScreenOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;",
            ">;"
        }
    .end annotation
.end field

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mOneHandedOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;"
        }
    .end annotation
.end field

.field public final mPipOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;"
        }
    .end annotation
.end field

.field public final mRecentTasks:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;"
        }
    .end annotation
.end field

.field public final mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mSplitScreenOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairsController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;-><init>(Lcom/android/wm/shell/ShellCommandHandlerImpl;)V

    iput-object v0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mImpl:Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;

    iput-object p1, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p2, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mKidsModeTaskOrganizer:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;

    iput-object p9, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mRecentTasks:Ljava/util/Optional;

    iput-object p3, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mLegacySplitScreenOptional:Ljava/util/Optional;

    iput-object p4, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mSplitScreenOptional:Ljava/util/Optional;

    iput-object p5, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mPipOptional:Ljava/util/Optional;

    iput-object p6, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mOneHandedOptional:Ljava/util/Optional;

    iput-object p7, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mHideDisplayCutout:Ljava/util/Optional;

    iput-object p8, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mAppPairsOptional:Ljava/util/Optional;

    iput-object p10, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method
