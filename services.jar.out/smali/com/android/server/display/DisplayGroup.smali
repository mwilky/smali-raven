.class public Lcom/android/server/display/DisplayGroup;
.super Ljava/lang/Object;
.source "DisplayGroup.java"


# instance fields
.field private mChangeCount:I

.field private final mDisplays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/LogicalDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupId:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    iput p1, p0, Lcom/android/server/display/DisplayGroup;->mGroupId:I

    return-void
.end method


# virtual methods
.method addDisplayLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayGroup;->containsLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    iget-object v0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method containsLocked(Lcom/android/server/display/LogicalDisplay;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getChangeCountLocked()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    return v0
.end method

.method getGroupId()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayGroup;->mGroupId:I

    return v0
.end method

.method getIdLocked(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    return v0
.end method

.method getSizeLocked()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method isEmptyLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method removeDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    iget-object v0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
