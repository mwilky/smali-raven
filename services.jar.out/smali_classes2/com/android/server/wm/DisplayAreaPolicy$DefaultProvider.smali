.class final Lcom/android/server/wm/DisplayAreaPolicy$DefaultProvider;
.super Ljava/lang/Object;
.source "DisplayAreaPolicy.java"

# interfaces
.implements Lcom/android/server/wm/DisplayAreaPolicy$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayAreaPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DefaultProvider"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private configureTrustedHierarchyBuilder(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 7

    new-instance v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    iget-object v1, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-string v2, "WindowedMagnification"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V

    const/16 v1, 0x7f7

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->upTo(I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v4, 0x0

    aput v1, v2, v4

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->except([I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/DisplayAreaPolicy$DefaultProvider$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/wm/DisplayAreaPolicy$DefaultProvider$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->setNewDisplayAreaSupplier(Lcom/android/server/wm/DisplayAreaPolicyBuilder$NewDisplayAreaSupplier;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->addFeature(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    iget-boolean v0, p3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v1, 0x2

    const/4 v2, 0x6

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    iget-object v4, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-string v5, "HideDisplayCutout"

    invoke-direct {v0, v4, v5, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->all()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v0

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->except([I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->addFeature(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    move-result-object v0

    new-instance v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    iget-object v4, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v5, 0x8

    const-string v6, "OneHandedBackgroundPanel"

    invoke-direct {v3, v4, v6, v5}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V

    const/16 v4, 0x7dd

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->upTo(I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->addFeature(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    move-result-object v0

    new-instance v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    iget-object v4, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v5, 0x3

    const-string v6, "OneHanded"

    invoke-direct {v3, v4, v6, v5}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->all()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v3

    new-array v4, v1, [I

    fill-array-data v4, :array_1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->except([I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->addFeature(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    :cond_0
    new-instance v0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    iget-object v3, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v4, 0x5

    const-string v5, "FullscreenMagnification"

    invoke-direct {v0, v3, v5, v4}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->all()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v0

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->except([I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->addFeature(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    move-result-object v0

    new-instance v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    iget-object v3, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v4, 0x7

    const-string v5, "ImePlaceholder"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Ljava/lang/String;I)V

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->and([I)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature$Builder;->build()Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->addFeature(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    return-void

    :array_0
    .array-data 4
        0x7e3
        0x7e8
        0x7d0
        0x7f8
    .end array-data

    :array_1
    .array-data 4
        0x7e3
        0x7e8
    .end array-data

    :array_2
    .array-data 4
        0x7f7
        0x7db
        0x7dc
        0x7eb
        0x7e3
        0x7e8
    .end array-data

    :array_3
    .array-data 4
        0x7db
        0x7dc
    .end array-data
.end method


# virtual methods
.method public instantiate(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/RootDisplayArea;Lcom/android/server/wm/DisplayArea$Tokens;)Lcom/android/server/wm/DisplayAreaPolicy;
    .locals 4

    new-instance v0, Lcom/android/server/wm/TaskDisplayArea;

    const-string v1, "DefaultTaskDisplayArea"

    const/4 v2, 0x1

    invoke-direct {v0, p2, p1, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    invoke-direct {v2, p3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;-><init>(Lcom/android/server/wm/RootDisplayArea;)V

    invoke-virtual {v2, p4}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->setImeContainer(Lcom/android/server/wm/DisplayArea$Tokens;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;->setTaskDisplayAreas(Ljava/util/List;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/wm/DisplayAreaPolicy$DefaultProvider;->configureTrustedHierarchyBuilder(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    :cond_0
    new-instance v3, Lcom/android/server/wm/DisplayAreaPolicyBuilder;

    invoke-direct {v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;-><init>()V

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->setRootHierarchy(Lcom/android/server/wm/DisplayAreaPolicyBuilder$HierarchyBuilder;)Lcom/android/server/wm/DisplayAreaPolicyBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->build(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;

    move-result-object v3

    return-object v3
.end method
