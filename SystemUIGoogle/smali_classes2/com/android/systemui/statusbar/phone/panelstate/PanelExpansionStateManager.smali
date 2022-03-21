.class public final Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;
.super Ljava/lang/Object;
.source "PanelExpansionStateManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPanelExpansionStateManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PanelExpansionStateManager.kt\ncom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,161:1\n1#2:162\n1819#3,2:163\n1819#3,2:165\n*E\n*S KotlinDebug\n*F\n+ 1 PanelExpansionStateManager.kt\ncom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager\n*L\n117#1,2:163\n131#1,2:165\n*E\n"
.end annotation


# instance fields
.field private expanded:Z

.field private final expansionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionListener;",
            ">;"
        }
    .end annotation
.end field

.field private fraction:F

.field private state:I

.field private final stateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/panelstate/PanelStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private tracking:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->expansionListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->stateListeners:Ljava/util/List;

    return-void
.end method

.method private final debugLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private final updateStateInternal(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "go state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->state:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManagerKt;->access$stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManagerKt;->access$stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->debugLog(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->state:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->stateListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/panelstate/PanelStateListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/panelstate/PanelStateListener;->onPanelStateChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final addExpansionListener(Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->expansionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->fraction:F

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->expanded:Z

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->tracking:Z

    invoke-interface {p1, v0, v1, p0}, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionListener;->onPanelExpansionChanged(FZZ)V

    return-void
.end method

.method public final addStateListener(Lcom/android/systemui/statusbar/phone/panelstate/PanelStateListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->stateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final isClosed()Z
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->state:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onPanelExpansionChanged(FZZ)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->state:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->fraction:F

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->expanded:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->tracking:Z

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->updateStateInternal(I)V

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    if-nez p3, :cond_3

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->updateStateInternal(I)V

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    if-nez p3, :cond_4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->state:I

    if-eqz v4, :cond_4

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->updateStateInternal(I)V

    :cond_4
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "panelExpansionChanged:start state="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManagerKt;->access$stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " end state="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->state:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManagerKt;->access$stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " f="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " expanded="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " tracking="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ""

    if-eqz v1, :cond_5

    const-string v1, " fullyOpened"

    goto :goto_3

    :cond_5
    move-object v1, v0

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_6

    const-string v0, " fullyClosed"

    :cond_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->debugLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->expansionListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionListener;->onPanelExpansionChanged(FZZ)V

    goto :goto_4

    :cond_7
    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "fraction cannot be NaN"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeExpansionListener(Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->expansionListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateState(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->state:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManagerKt;->access$stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManagerKt;->access$stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->debugLog(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->state:I

    if-eq v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->updateStateInternal(I)V

    :cond_0
    return-void
.end method
