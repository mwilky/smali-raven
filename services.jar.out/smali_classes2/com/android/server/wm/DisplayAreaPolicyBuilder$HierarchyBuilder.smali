.class Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;
.super Ljava/lang/Object;
.source "DisplayAreaPolicyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayAreaPolicyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HierarchyBuilder"
.end annotation


# static fields
.field private static final LEAF_TYPE_IME_CONTAINERS:I = 0x2

.field private static final LEAF_TYPE_TASK_CONTAINERS:I = 0x1

.field private static final LEAF_TYPE_TOKENS:I


# instance fields
.field private final mFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

.field private final mRoot:Lcom/android/server/wm/RootDisplayArea;

.field private final mTaskDisplayAreas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/RootDisplayArea;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/DisplayArea$Tokens;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/RootDisplayArea;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->build(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->build()V

    return-void
.end method

.method private addDisplayAreaGroupsToApplicationLayer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    new-instance v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    iget-object v3, v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    iput-object v3, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    iput v4, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    iget-object v3, p1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addTaskDisplayAreasToApplicationLayer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayArea;

    iput-object v3, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    iput v4, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    iget-object v3, p1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private build()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->build(Ljava/util/List;)V

    return-void
.end method

.method private build(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    iget-object v1, v1, Lcom/android/server/wm/RootDisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->getMaxWindowLayer()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v4, v2, [Lcom/android/server/wm/DisplayArea$Tokens;

    new-instance v5, Landroid/util/ArrayMap;

    iget-object v6, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v6, 0x0

    :goto_0
    iget-object v7, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    iget-object v7, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-array v6, v2, [Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    new-instance v7, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9, v8}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v10, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_5

    iget-object v12, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v2, :cond_4

    invoke-static {v12}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->access$600(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)[Z

    move-result-object v15

    aget-boolean v15, v15, v14

    if-eqz v15, :cond_3

    if-eqz v13, :cond_1

    iget-object v15, v13, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mParent:Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    aget-object v9, v6, v14

    if-eq v15, v9, :cond_2

    :cond_1
    new-instance v9, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    aget-object v15, v6, v14

    invoke-direct {v9, v12, v14, v15}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    move-object v13, v9

    aget-object v9, v6, v14

    iget-object v9, v9, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    aput-object v13, v6, v14

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    move-object v13, v9

    :goto_3
    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x0

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v2, :cond_a

    invoke-static {v1, v12}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->typeOfLayer(Lcom/android/server/policy/WindowManagerPolicy;I)I

    move-result v13

    if-eqz v9, :cond_7

    iget-object v14, v9, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mParent:Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    aget-object v15, v6, v12

    if-ne v14, v15, :cond_7

    if-eq v13, v11, :cond_6

    goto :goto_5

    :cond_6
    move-object/from16 v15, p1

    goto :goto_6

    :cond_7
    :goto_5
    new-instance v14, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    aget-object v15, v6, v12

    invoke-direct {v14, v8, v12, v15}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    move-object v9, v14

    aget-object v14, v6, v12

    iget-object v14, v14, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v11, v13

    if-ne v11, v3, :cond_8

    aget-object v14, v6, v12

    invoke-direct {v0, v14}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->addTaskDisplayAreasToApplicationLayer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    aget-object v14, v6, v12

    move-object/from16 v15, p1

    invoke-direct {v0, v14, v15}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->addDisplayAreaGroupsToApplicationLayer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;Ljava/util/List;)V

    iput-boolean v3, v9, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mSkipTokens:Z

    goto :goto_6

    :cond_8
    move-object/from16 v15, p1

    const/4 v14, 0x2

    if-ne v11, v14, :cond_9

    iget-object v14, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

    iput-object v14, v9, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    iput-boolean v3, v9, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mSkipTokens:Z

    :cond_9
    :goto_6
    iput v12, v9, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_a
    move-object/from16 v15, p1

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->computeMaxLayer()I

    iget-object v3, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v4, v8, v5}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->instantiateChildren(Lcom/android/server/wm/DisplayArea;[Lcom/android/server/wm/DisplayArea$Tokens;ILjava/util/Map;)V

    iget-object v3, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mRoot:Lcom/android/server/wm/RootDisplayArea;

    iget-object v8, v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v3, v8, v4, v5}, Lcom/android/server/wm/RootDisplayArea;->onHierarchyBuilt(Ljava/util/ArrayList;[Lcom/android/server/wm/DisplayArea$Tokens;Ljava/util/Map;)V

    return-void
.end method

.method private static typeOfLayer(Lcom/android/server/policy/WindowManagerPolicy;I)I
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/16 v1, 0x7db

    invoke-interface {p0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v1

    if-eq p1, v1, :cond_2

    const/16 v1, 0x7dc

    invoke-interface {p0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method addFeature(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method setImeContainer(Lcom/android/server/wm/DisplayArea$Tokens;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mImeContainer:Lcom/android/server/wm/DisplayArea$Tokens;

    return-object p0
.end method

.method setTaskDisplayAreas(Ljava/util/List;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;)",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->mTaskDisplayAreas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
