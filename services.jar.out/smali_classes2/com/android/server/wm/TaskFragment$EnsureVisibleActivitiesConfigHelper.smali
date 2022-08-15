.class public Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;
.super Ljava/lang/Object;
.source "TaskFragment.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EnsureVisibleActivitiesConfigHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/server/wm/ActivityRecord;",
        ">;"
    }
.end annotation


# instance fields
.field public mBehindFullscreen:Z

.field public mPreserveWindow:Z

.field public mUpdateConfig:Z

.field public final synthetic this$0:Lcom/android/server/wm/TaskFragment;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->this$0:Lcom/android/server/wm/TaskFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;-><init>(Lcom/android/server/wm/TaskFragment;)V

    return-void
.end method


# virtual methods
.method public process(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->reset(Z)V

    iget-object p2, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->this$0:Lcom/android/server/wm/TaskFragment;

    const/4 v0, 0x1

    invoke-virtual {p2, p0, p1, v0, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Z

    iget-boolean p1, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->mUpdateConfig:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->this$0:Lcom/android/server/wm/TaskFragment;

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public reset(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->mPreserveWindow:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->mUpdateConfig:Z

    iput-boolean p1, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->mBehindFullscreen:Z

    return-void
.end method

.method public test(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->mUpdateConfig:Z

    iget-boolean v1, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->mPreserveWindow:Z

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->mUpdateConfig:Z

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->mBehindFullscreen:Z

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result p1

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->mBehindFullscreen:Z

    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->test(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method
