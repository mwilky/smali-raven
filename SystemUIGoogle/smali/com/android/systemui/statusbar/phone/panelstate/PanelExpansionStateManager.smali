.class public final Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;
.super Ljava/lang/Object;
.source "PanelExpansionStateManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPanelExpansionStateManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PanelExpansionStateManager.kt\ncom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,168:1\n1#2:169\n1849#3,2:170\n1849#3,2:172\n*S KotlinDebug\n*F\n+ 1 PanelExpansionStateManager.kt\ncom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager\n*L\n124#1:170,2\n138#1:172,2\n*E\n"
.end annotation


# instance fields
.field public dragDownPxAmount:F

.field public expanded:Z

.field public final expansionListeners:Ljava/util/ArrayList;

.field public fraction:F

.field public state:I

.field public final stateListeners:Ljava/util/ArrayList;

.field public tracking:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->expansionListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->stateListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final addExpansionListener(Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionListener;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->expansionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionChangeEvent;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->fraction:F

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->expanded:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->tracking:Z

    iget p0, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->dragDownPxAmount:F

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionChangeEvent;-><init>(FFZZ)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionListener;->onPanelExpansionChanged(Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionChangeEvent;)V

    return-void
.end method

.method public final updateStateInternal(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->state:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManagerKt;->access$stateToString(I)V

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManagerKt;->access$stateToString(I)V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->state:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

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
