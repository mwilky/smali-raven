.class public final Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant$2;
.super Ljava/lang/Object;
.source "SmartSpaceComplication.java"

# interfaces
.implements Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant$2;->this$0:Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant$2;->this$0:Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;

    iget-object v0, v0, Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    invoke-virtual {v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->isOverlayActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant$2;->this$0:Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;

    iget-object v0, p0, Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;->mSmartSpaceController:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;

    iget-object p0, p0, Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;->mSmartspaceListener:Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant$1;

    iget-object v1, v0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v1}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object v1, v0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->registerListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    :goto_0
    iget-object v1, v0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->connectSession()V

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant$2;->this$0:Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;

    iget-object v0, p0, Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;->mSmartSpaceController:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;

    iget-object p0, p0, Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;->mSmartspaceListener:Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant$1;

    iget-object v1, v0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v1}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object v1, v0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->unregisterListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    :goto_1
    iget-object v1, v0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->disconnect()V

    :goto_2
    return-void
.end method
