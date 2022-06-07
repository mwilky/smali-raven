.class Lcom/android/server/wm/DisplayArea$Dimmable;
.super Lcom/android/server/wm/DisplayArea;
.source "DisplayArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Dimmable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/DisplayArea<",
        "Lcom/android/server/wm/DisplayArea;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDimmer:Lcom/android/server/wm/Dimmer;

.field private final mTmpDimBoundsRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    new-instance v0, Lcom/android/server/wm/Dimmer;

    invoke-direct {v0, p0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic lambda$prepareSurfaces$0(Lcom/android/server/wm/Task;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->canAffectSystemUiFlags()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getDimmer()Lcom/android/server/wm/Dimmer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0
.end method

.method prepareSurfaces()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    invoke-super {p0}, Lcom/android/server/wm/DisplayArea;->prepareSurfaces()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea$Dimmable;->getBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    sget-object v0, Lcom/android/server/wm/DisplayArea$Dimmable$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/wm/DisplayArea$Dimmable$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea$Dimmable;->forAllTasks(Ljava/util/function/Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea$Dimmable;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayArea$Dimmable;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea$Dimmable;->scheduleAnimation()V

    :cond_1
    return-void
.end method
