.class Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;
.super Ljava/lang/Object;
.source "DisplayAreaPolicyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayAreaPolicyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingArea"
.end annotation


# instance fields
.field final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;",
            ">;"
        }
    .end annotation
.end field

.field mExisting:Lcom/android/server/wm/DisplayArea;

.field final mFeature:Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

.field mMaxLayer:I

.field final mMinLayer:I

.field final mParent:Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

.field mSkipTokens:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mSkipTokens:Z

    iput p2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMinLayer:I

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mFeature:Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    iput-object p3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mParent:Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    return-void
.end method

.method private createArea(Lcom/android/server/wm/DisplayArea;[Lcom/android/server/wm/DisplayArea$Tokens;)Lcom/android/server/wm/DisplayArea;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayArea<",
            "Lcom/android/server/wm/DisplayArea;",
            ">;[",
            "Lcom/android/server/wm/DisplayArea$Tokens;",
            ")",
            "Lcom/android/server/wm/DisplayArea;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->asTokens()Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->asTokens()Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->fillAreaForLayers(Lcom/android/server/wm/DisplayArea$Tokens;[Lcom/android/server/wm/DisplayArea$Tokens;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mSkipTokens:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    iget v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMinLayer:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    if-ge v0, v1, :cond_4

    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->BELOW_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mFeature:Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    const-string v2, ":"

    if-nez v1, :cond_5

    new-instance v1, Lcom/android/server/wm/DisplayArea$Tokens;

    iget-object v3, p1, Lcom/android/server/wm/DisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Leaf:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMinLayer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/wm/DisplayArea$Tokens;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;)V

    invoke-direct {p0, v1, p2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->fillAreaForLayers(Lcom/android/server/wm/DisplayArea$Tokens;[Lcom/android/server/wm/DisplayArea$Tokens;)V

    return-object v1

    :cond_5
    invoke-static {v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->access$1000(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/wm/DisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mFeature:Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    invoke-static {v5}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->access$900(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMinLayer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mFeature:Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    invoke-static {v4}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->access$800(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)I

    move-result v4

    invoke-interface {v1, v3, v0, v2, v4}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;->create(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)Lcom/android/server/wm/DisplayArea;

    move-result-object v1

    return-object v1
.end method

.method private fillAreaForLayers(Lcom/android/server/wm/DisplayArea$Tokens;[Lcom/android/server/wm/DisplayArea$Tokens;)V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMinLayer:I

    :goto_0
    iget v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    if-gt v0, v1, :cond_0

    aput-object p1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$instantiateChildren$0(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMinLayer:I

    return v0
.end method


# virtual methods
.method computeMaxLayer()I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->computeMaxLayer()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    return v0
.end method

.method instantiateChildren(Lcom/android/server/wm/DisplayArea;[Lcom/android/server/wm/DisplayArea$Tokens;ILjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayArea<",
            "Lcom/android/server/wm/DisplayArea;",
            ">;[",
            "Lcom/android/server/wm/DisplayArea$Tokens;",
            "I",
            "Ljava/util/Map<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayArea<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea$$ExternalSyntheticLambda0;

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    invoke-direct {v1, p1, p2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->createArea(Lcom/android/server/wm/DisplayArea;[Lcom/android/server/wm/DisplayArea$Tokens;)Lcom/android/server/wm/DisplayArea;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const v3, 0x7fffffff

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/DisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    iget-object v3, v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mFeature:Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    if-eqz v3, :cond_1

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, p3, 0x1

    invoke-virtual {v1, v2, p2, v3, p4}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->instantiateChildren(Lcom/android/server/wm/DisplayArea;[Lcom/android/server/wm/DisplayArea$Tokens;ILjava/util/Map;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
