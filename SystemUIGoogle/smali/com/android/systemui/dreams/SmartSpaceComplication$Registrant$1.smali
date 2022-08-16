.class public final Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant$1;
.super Ljava/lang/Object;
.source "SmartSpaceComplication.java"

# interfaces
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;
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

    iput-object p1, p0, Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant$1;->this$0:Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSmartspaceTargetsUpdated(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant$1;->this$0:Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;

    iget-object p1, p0, Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-object p0, p0, Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;->mComplication:Lcom/android/systemui/dreams/SmartSpaceComplication;

    invoke-virtual {p1, p0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->addComplication(Lcom/android/systemui/dreams/complication/Complication;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant$1;->this$0:Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;

    iget-object p1, p0, Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-object p0, p0, Lcom/android/systemui/dreams/SmartSpaceComplication$Registrant;->mComplication:Lcom/android/systemui/dreams/SmartSpaceComplication;

    iget-object v0, p1, Lcom/android/systemui/dreams/DreamOverlayStateController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda10;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1, p0}, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
