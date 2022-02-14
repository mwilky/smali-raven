.class Lcom/android/server/wm/Transition$ChangeInfo;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChangeInfo"
.end annotation


# instance fields
.field final mAbsoluteBounds:Landroid/graphics/Rect;

.field mChildren:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field mExistenceChanged:Z

.field mKnownConfigChanges:I

.field mParent:Lcom/android/server/wm/WindowContainer;

.field mRotation:I

.field mShowWallpaper:Z

.field mVisible:Z

.field mWindowingMode:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    return-void
.end method

.method constructor <init>(ZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    iput-boolean p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    iput-boolean p2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    return-void
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mChildren:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mChildren:Landroid/util/ArraySet;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mChildren:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addChildren(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mChildren:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mChildren:Landroid/util/ArraySet;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mChildren:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    return-void
.end method

.method getChangeFlags(Lcom/android/server/wm/WindowContainer;)I
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    or-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v1

    if-nez v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->mUseTransferredAnimation:Z

    if-eqz v3, :cond_4

    or-int/lit8 v0, v0, 0x8

    :cond_4
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->mVoiceInteraction:Z

    if-eqz v3, :cond_5

    or-int/lit8 v0, v0, 0x10

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_6

    or-int/lit8 v0, v0, 0x20

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->hasAlertWindowSurfaces()Z

    move-result v4

    if-eqz v4, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    invoke-static {p1}, Lcom/android/server/wm/Transition;->access$100(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_7

    or-int/lit8 v0, v0, 0x2

    :cond_7
    invoke-static {p1}, Lcom/android/server/wm/Transition;->access$200(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_8

    or-int/lit8 v0, v0, 0x40

    :cond_8
    return v0
.end method

.method getTransitMode(Lcom/android/server/wm/WindowContainer;)I
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-ne v0, v1, :cond_0

    const/4 v1, 0x6

    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    return v1

    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    :goto_1
    return v1
.end method

.method hasChanged(Lcom/android/server/wm/WindowContainer;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-ne v0, v1, :cond_2

    iget v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mKnownConfigChanges:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v1

    iget v3, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    if-ne v1, v3, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    if-eq v1, v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method
