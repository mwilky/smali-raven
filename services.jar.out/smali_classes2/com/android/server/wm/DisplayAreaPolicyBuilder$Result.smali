.class Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;
.super Lcom/android/server/wm/DisplayAreaPolicy;
.source "DisplayAreaPolicyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayAreaPolicyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Result"
.end annotation


# instance fields
.field private final mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field final mDisplayAreaGroupRoots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/RootDisplayArea;",
            ">;"
        }
    .end annotation
.end field

.field final mSelectRootForWindowFunc:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            "Lcom/android/server/wm/RootDisplayArea;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/RootDisplayArea;Ljava/util/List;Ljava/util/function/BiFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowManagerService;",
            "Lcom/android/server/wm/RootDisplayArea;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/RootDisplayArea;",
            ">;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            "Lcom/android/server/wm/RootDisplayArea;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayAreaPolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/RootDisplayArea;)V

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    iput-object p4, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    sget-object v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootDisplayArea;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No display area with FEATURE_DEFAULT_TASK_CONTAINER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getDisplayAreas(Lcom/android/server/wm/RootDisplayArea;ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/RootDisplayArea;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayArea<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatures:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    invoke-static {v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->access$800(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)I

    move-result v3

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/RootDisplayArea;->mFeatureToDisplayAreas:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {p2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic lambda$new$0(Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/TaskDisplayArea;
    .locals 2

    iget v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mFeatureId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public addWindow(Lcom/android/server/wm/WindowToken;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->findAreaForToken(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayArea$Tokens;->addChild(Lcom/android/server/wm/WindowToken;)V

    return-void
.end method

.method findAreaForToken(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea$Tokens;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    iget v1, p1, Lcom/android/server/wm/WindowToken;->windowType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/WindowToken;->mOptions:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/RootDisplayArea;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootDisplayArea;->findAreaForTokenInLayer(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v0

    return-object v0
.end method

.method public findAreaForWindowType(ILandroid/os/Bundle;ZZ)Lcom/android/server/wm/DisplayArea$Tokens;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mSelectRootForWindowFunc:Ljava/util/function/BiFunction;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/RootDisplayArea;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/wm/RootDisplayArea;->findAreaForWindowTypeInLayer(IZZ)Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    return-object v0
.end method

.method public getDisplayAreas(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayArea<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    invoke-static {v1, p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->getDisplayAreas(Lcom/android/server/wm/RootDisplayArea;ILjava/util/List;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RootDisplayArea;

    invoke-static {v2, p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->getDisplayAreas(Lcom/android/server/wm/RootDisplayArea;ILjava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getFeatures()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    iget-object v1, v1, Lcom/android/server/wm/RootDisplayArea;->mFeatures:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RootDisplayArea;

    iget-object v2, v2, Lcom/android/server/wm/RootDisplayArea;->mFeatures:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method
