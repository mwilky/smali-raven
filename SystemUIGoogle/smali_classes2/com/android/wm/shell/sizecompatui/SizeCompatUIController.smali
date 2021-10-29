.class public Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;
.super Ljava/lang/Object;
.source "SizeCompatUIController.java"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;
.implements Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/sizecompatui/SizeCompatUIController$SizeCompatUICallback;
    }
.end annotation


# instance fields
.field private final mActiveLayouts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/wm/shell/sizecompatui/SizeCompatUIController$SizeCompatUICallback;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayContextCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mDisplaysWithIme:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHasShownHint:Z

.field private final mImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;


# direct methods
.method public static synthetic $r8$lambda$bNPdIn_uFZL7DcouHvZQxtDVGLg(Ljava/util/List;Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->lambda$onDisplayRemoved$0(Ljava/util/List;Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$inXAYVu7_3Th1ikJS6NbnVQU-7U(Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->lambda$onDisplayConfigurationChanged$1(Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x2giJ9KUe_mIOT7VAMxuZCnzx3M(ZLcom/android/wm/shell/sizecompatui/SizeCompatUILayout;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->lambda$onImeVisibilityChanged$2(ZLcom/android/wm/shell/sizecompatui/SizeCompatUILayout;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mDisplaysWithIme:Ljava/util/Set;

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mActiveLayouts:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mDisplayContextCache:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p3, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iput-object p4, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p2, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    invoke-virtual {p3, p0}, Lcom/android/wm/shell/common/DisplayImeController;->addPositionProcessor(Lcom/android/wm/shell/common/DisplayImeController$ImePositionProcessor;)V

    return-void
.end method

.method private createLayout(IILandroid/content/res/Configuration;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->getOrCreateDisplayContext(I)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot get context for display "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SizeCompatUIController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->createLayout(Landroid/content/Context;IILandroid/content/res/Configuration;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;

    move-result-object p3

    iget-object p4, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mActiveLayouts:Landroid/util/SparseArray;

    invoke-virtual {p4, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->isImeShowingOnDisplay(I)Z

    move-result p0

    invoke-virtual {p3, p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->createSizeCompatButton(Z)V

    return-void
.end method

.method private forAllLayoutsOnDisplay(ILjava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mActiveLayouts:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mActiveLayouts:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mActiveLayouts:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getOrCreateDisplayContext(I)Landroid/content/Context;
    .locals 3

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mContext:Landroid/content/Context;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mDisplayContextCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mDisplayContextCache:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method private isImeShowingOnDisplay(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mDisplaysWithIme:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onDisplayConfigurationChanged$1(Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateDisplayLayout(Lcom/android/wm/shell/common/DisplayLayout;)V

    return-void
.end method

.method private static synthetic lambda$onDisplayRemoved$0(Ljava/util/List;Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->getTaskId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$onImeVisibilityChanged$2(ZLcom/android/wm/shell/sizecompatui/SizeCompatUILayout;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateImeVisibility(Z)V

    return-void
.end method

.method private removeLayout(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mActiveLayouts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->release()V

    iget-object p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mActiveLayouts:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method private updateLayout(ILandroid/content/res/Configuration;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mActiveLayouts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->isImeShowingOnDisplay(I)Z

    move-result p0

    invoke-virtual {p1, p2, p3, p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->updateSizeCompatInfo(Landroid/content/res/Configuration;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)V

    return-void
.end method


# virtual methods
.method createLayout(Landroid/content/Context;IILandroid/content/res/Configuration;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;
    .locals 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v9, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;

    iget-object v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mCallback:Lcom/android/wm/shell/sizecompatui/SizeCompatUIController$SizeCompatUICallback;

    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mHasShownHint:Z

    move-object v0, v9

    move-object v3, p1

    move-object v4, p4

    move v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;-><init>(Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/sizecompatui/SizeCompatUIController$SizeCompatUICallback;Landroid/content/Context;Landroid/content/res/Configuration;ILcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mHasShownHint:Z

    return-object v9
.end method

.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 1

    iget-object p2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p2

    new-instance v0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DisplayLayout;)V

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->forAllLayoutsOnDisplay(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mDisplayContextCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-direct {p0, p1, v1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->forAllLayoutsOnDisplay(ILjava/util/function/Consumer;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->removeLayout(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onImeVisibilityChanged(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mDisplaysWithIme:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mDisplaysWithIme:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    new-instance v0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController$$ExternalSyntheticLambda2;-><init>(Z)V

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->forAllLayoutsOnDisplay(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public onSizeCompatInfoChanged(IILandroid/content/res/Configuration;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .locals 1

    if-eqz p3, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mActiveLayouts:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p3, p4}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->updateLayout(ILandroid/content/res/Configuration;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->createLayout(IILandroid/content/res/Configuration;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->removeLayout(I)V

    :goto_1
    return-void
.end method

.method public setSizeCompatUICallback(Lcom/android/wm/shell/sizecompatui/SizeCompatUIController$SizeCompatUICallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUIController;->mCallback:Lcom/android/wm/shell/sizecompatui/SizeCompatUIController$SizeCompatUICallback;

    return-void
.end method
