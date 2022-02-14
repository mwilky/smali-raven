.class public Lcom/android/server/wm/DisplayArea;
.super Lcom/android/server/wm/WindowContainer;
.source "DisplayArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayArea$Type;,
        Lcom/android/server/wm/DisplayArea$Dimmable;,
        Lcom/android/server/wm/DisplayArea$Tokens;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/server/wm/WindowContainer;",
        ">",
        "Lcom/android/server/wm/WindowContainer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final mFeatureId:I

.field protected mIgnoreOrientationRequest:Z

.field private final mName:Ljava/lang/String;

.field mOrganizer:Landroid/window/IDisplayAreaOrganizer;

.field private final mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

.field private final mTmpConfiguration:Landroid/content/res/Configuration;

.field protected final mType:Lcom/android/server/wm/DisplayArea$Type;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/DisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayArea;->mTmpConfiguration:Landroid/content/res/Configuration;

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/wm/DisplayArea;->mOrientation:I

    iput-object p2, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    iput-object p3, p0, Lcom/android/server/wm/DisplayArea;->mName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    new-instance v0, Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowContainer$RemoteToken;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayArea;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    iput-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    return-void
.end method

.method private findMaxPositionForChildDisplayArea(Lcom/android/server/wm/DisplayArea;)I
    .locals 3

    invoke-static {p1}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-lez v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v2

    if-ne v2, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private findMinPositionForChildDisplayArea(Lcom/android/server/wm/DisplayArea;)I
    .locals 3

    invoke-static {p1}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v2

    if-ne v2, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private findPositionForChildDisplayArea(ILcom/android/server/wm/DisplayArea;)I
    .locals 3

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayArea;->findMaxPositionForChildDisplayArea(Lcom/android/server/wm/DisplayArea;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayArea;->findMinPositionForChildDisplayArea(Lcom/android/server/wm/DisplayArea;)I

    move-result v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "positionChildAt: container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a child of container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " current parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final asDisplayArea()Lcom/android/server/wm/DisplayArea;
    .locals 0

    return-object p0
.end method

.method asTokens()Lcom/android/server/wm/DisplayArea$Tokens;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic commitPendingTransaction()V
    .locals 0

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    return-void
.end method

.method public bridge synthetic compareTo(Lcom/android/server/wm/WindowContainer;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    return p1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mIgnoreOrientationRequest:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIgnoreOrientationRequest=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->hasRequestedOverrideConfiguration()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "overrideConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method dumpChildDisplayArea(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "* "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->isTaskDisplayArea()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/DisplayArea;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/DisplayArea;->dumpChildDisplayArea(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayArea;->mName:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->isTaskDisplayArea()Z

    move-result v2

    const-wide v3, 0x10800000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->asRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10500000006L

    iget v4, p0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10800000007L

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method fillsParent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method forAllDisplayAreas(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/DisplayArea;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-eqz p2, :cond_1

    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ltz v1, :cond_4

    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V

    :cond_2
    if-eqz p2, :cond_3

    const/4 v3, -0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    :goto_1
    add-int/2addr v1, v3

    goto :goto_0

    :cond_4
    return-void
.end method

.method forAllTaskDisplayAreas(Ljava/util/function/Function;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            "Ljava/lang/Boolean;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-eqz p2, :cond_1

    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-ltz v1, :cond_4

    if-ge v1, v0, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllTaskDisplayAreas(Ljava/util/function/Function;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    return v5

    :cond_2
    if-eqz p2, :cond_3

    const/4 v5, -0x1

    :cond_3
    add-int/2addr v1, v5

    goto :goto_0

    :cond_4
    return v2
.end method

.method public bridge synthetic getAnimationLeash()Landroid/view/SurfaceControl;
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .locals 0

    return-object p0
.end method

.method getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;
    .locals 4

    new-instance v0, Landroid/window/DisplayAreaInfo;

    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    invoke-direct {v0, v1, v2, v3}, Landroid/window/DisplayAreaInfo;-><init>(Landroid/window/WindowContainerToken;II)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mFeatureId:I

    goto :goto_0

    :cond_0
    iget v2, v1, Lcom/android/server/wm/RootDisplayArea;->mFeatureId:I

    :goto_0
    iput v2, v0, Landroid/window/DisplayAreaInfo;->rootDisplayAreaId:I

    iget-object v2, v0, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public bridge synthetic getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getFreezeSnapshotTarget()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getIgnoreOrientationRequest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mIgnoreOrientationRequest:Z

    return v0
.end method

.method getItemFromDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/DisplayArea;",
            "TR;>;)TR;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getItemFromDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            "TR;>;Z)TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-eqz p2, :cond_1

    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ltz v1, :cond_4

    if-ge v1, v0, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/DisplayArea;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    return-object v4

    :cond_2
    if-eqz p2, :cond_3

    const/4 v4, -0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    :goto_1
    add-int/2addr v1, v4

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getOrientation(I)I
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayArea;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mIgnoreOrientationRequest:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method getProtoFieldId()J
    .locals 2

    const-wide v0, 0x10b00000004L

    return-wide v0
.end method

.method getStableRect(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayArea;->getBounds(Landroid/graphics/Rect;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public bridge synthetic getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSurfaceHeight()I
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSurfaceWidth()I
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method handlesOrientationChangeFromDescendant()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mIgnoreOrientationRequest:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->handlesOrientationChangeFromDescendant()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isOrganized()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTaskDisplayArea()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 1

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method needsZBoost()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public bridge synthetic onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    invoke-static {p1}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayArea$Type;->checkChild(Lcom/android/server/wm/DisplayArea$Type;Lcom/android/server/wm/DisplayArea$Type;)V

    instance-of v0, p1, Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_2

    :cond_1
    invoke-static {v1}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v3

    invoke-static {v2}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/wm/DisplayArea$Type;->checkSiblings(Lcom/android/server/wm/DisplayArea$Type;Lcom/android/server/wm/DisplayArea$Type;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->onDisplayAreaInfoChanged(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V

    :cond_0
    return-void
.end method

.method onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mIgnoreOrientationRequest:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public bridge synthetic onUnfrozen()V
    .locals 0

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onUnfrozen()V

    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;Z)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayArea;->findPositionForChildDisplayArea(ILcom/android/server/wm/DisplayArea;)I

    move-result v0

    const/4 v1, 0x0

    invoke-super {p0, v0, p2, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz p3, :cond_2

    if-eqz v1, :cond_2

    const v2, 0x7fffffff

    if-eq p1, v2, :cond_1

    const/high16 v2, -0x80000000

    if-ne p1, v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, p1, p0, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :cond_2
    return-void
.end method

.method public providesMaxBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            "TR;TR;>;TR;Z)TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    if-eq v0, v1, :cond_0

    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-eqz p3, :cond_1

    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move-object v2, p2

    :goto_1
    if-ltz v1, :cond_4

    if-ge v1, v0, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v4

    invoke-virtual {v4, p1, v2, p3}, Lcom/android/server/wm/DisplayArea;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    :cond_2
    if-eqz p3, :cond_3

    const/4 v4, -0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    :goto_2
    add-int/2addr v1, v4

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method removeImmediately()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    return-void
.end method

.method resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget-object v5, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5, v4}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method sendDisplayAreaAppeared()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->onDisplayAreaAppeared(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V

    return-void
.end method

.method sendDisplayAreaVanished(Landroid/window/IDisplayAreaOrganizer;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->onDisplayAreaVanished(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V

    return-void
.end method

.method setIgnoreOrientationRequest(Z)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mIgnoreOrientationRequest:Z

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayArea;->mIgnoreOrientationRequest:Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->onLastFocusedTaskDisplayAreaChanged(Lcom/android/server/wm/TaskDisplayArea;)V

    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    move-result v0

    return v0

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    const/4 v3, -0x2

    if-eq v0, v3, :cond_7

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_6

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    move-result v1

    return v1

    :cond_7
    :goto_1
    return v1
.end method

.method setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;Z)V

    return-void
.end method

.method setOrganizer(Landroid/window/IDisplayAreaOrganizer;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    iput-object p1, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->sendDisplayAreaVanished(Landroid/window/IDisplayAreaOrganizer;)V

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->sendDisplayAreaAppeared()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Don\'t organize or trigger events for unavailable or untrusted display."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
