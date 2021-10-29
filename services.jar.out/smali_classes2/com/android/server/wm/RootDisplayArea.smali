.class Lcom/android/server/wm/RootDisplayArea;
.super Lcom/android/server/wm/DisplayArea$Dimmable;
.source "RootDisplayArea.java"


# instance fields
.field private mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

.field mFeatureToDisplayAreas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayArea<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field mFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private mHasBuiltHierarchy:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/wm/DisplayArea$Dimmable;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    return-void
.end method

.method private updateImeContainerForLayers(Lcom/android/server/wm/DisplayArea$Tokens;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/RootDisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/wm/RootDisplayArea;->mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

    const/16 v2, 0x7db

    invoke-interface {v0, v2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v2

    aput-object p1, v1, v2

    iget-object v1, p0, Lcom/android/server/wm/RootDisplayArea;->mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

    const/16 v2, 0x7dc

    invoke-interface {v0, v2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v2

    aput-object p1, v1, v2

    return-void
.end method


# virtual methods
.method asRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;
    .locals 0

    return-object p0
.end method

.method findAreaForTokenInLayer(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea$Tokens;
    .locals 3

    iget v0, p1, Lcom/android/server/wm/WindowToken;->windowType:I

    iget-boolean v1, p1, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    iget-boolean v2, p1, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/RootDisplayArea;->findAreaForWindowTypeInLayer(IZZ)Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v0

    return-object v0
.end method

.method findAreaForWindowTypeInLayer(IZZ)Lcom/android/server/wm/DisplayArea$Tokens;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/RootDisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZZ)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/RootDisplayArea;->mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

    aget-object v1, v1, v0

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "There shouldn\'t be WindowToken on APPLICATION_LAYER"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;
    .locals 0

    return-object p0
.end method

.method isOrientationDifferentFromDisplay()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method onHierarchyBuilt(Ljava/util/ArrayList;[Lcom/android/server/wm/DisplayArea$Tokens;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            ">;[",
            "Lcom/android/server/wm/DisplayArea$Tokens;",
            "Ljava/util/Map<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayArea<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;>;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/wm/RootDisplayArea;->mHasBuiltHierarchy:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RootDisplayArea;->mHasBuiltHierarchy:Z

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatures:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/wm/RootDisplayArea;->mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

    iput-object p3, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatureToDisplayAreas:Ljava/util/Map;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root should only build the hierarchy once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method placeImeContainer(Lcom/android/server/wm/DisplayArea$Tokens;)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea$Tokens;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatures:Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->getId()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatureToDisplayAreas:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/android/server/wm/RootDisplayArea;->updateImeContainerForLayers(Lcom/android/server/wm/DisplayArea$Tokens;)V

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    const v6, 0x7fffffff

    invoke-virtual {p1, v5, v6}, Lcom/android/server/wm/DisplayArea$Tokens;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/RootDisplayArea;->updateImeContainerForLayers(Lcom/android/server/wm/DisplayArea$Tokens;)V

    return-void

    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "There must be exactly one DisplayArea for the FEATURE_IME_PLACEHOLDER"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "There is no FEATURE_IME_PLACEHOLDER in this root to place the IME container"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
