.class public final Lcom/android/systemui/dreams/SmartSpaceComplication$SmartSpaceComplicationViewHolder;
.super Ljava/lang/Object;
.source "SmartSpaceComplication.java"

# interfaces
.implements Lcom/android/systemui/dreams/complication/Complication$ViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dreams/SmartSpaceComplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmartSpaceComplicationViewHolder"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSmartSpaceController:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/dreams/SmartSpaceComplication$SmartSpaceComplicationViewHolder;->mSmartSpaceController:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;

    iput-object p1, p0, Lcom/android/systemui/dreams/SmartSpaceComplication$SmartSpaceComplicationViewHolder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getLayoutParams()Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;
    .locals 6

    new-instance p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/16 v4, 0xa

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;-><init>(IIIIZ)V

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 5

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/dreams/SmartSpaceComplication$SmartSpaceComplicationViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/systemui/dreams/SmartSpaceComplication$SmartSpaceComplicationViewHolder;->mSmartSpaceController:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;

    iget-object v1, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v1}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object v1, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->precondition:Lcom/android/systemui/smartspace/SmartspacePrecondition;

    invoke-interface {v1}, Lcom/android/systemui/smartspace/SmartspacePrecondition;->conditionsMet()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->smartspaceViewComponentFactory:Lcom/android/systemui/smartspace/dagger/SmartspaceViewComponent$Factory;

    iget-object v4, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->stateChangeListener:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$stateChangeListener$1;

    invoke-interface {v3, v0, v1, v4}, Lcom/android/systemui/smartspace/dagger/SmartspaceViewComponent$Factory;->create(Landroid/widget/FrameLayout;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$stateChangeListener$1;)Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$SmartspaceViewComponentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$SmartspaceViewComponentImpl;->getView()Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    move-result-object v1

    instance-of v3, v1, Landroid/view/View;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setIsDreaming(Z)V

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->connectSession()V

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {p0, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Cannot build view when not enabled"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
