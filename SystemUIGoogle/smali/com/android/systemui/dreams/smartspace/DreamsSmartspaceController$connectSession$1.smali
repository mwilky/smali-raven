.class public final Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$connectSession$1;
.super Ljava/lang/Object;
.source "DreamsSmartspaceController.kt"

# interfaces
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->connectSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$connectSession$1;->this$0:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$connectSession$1;->this$0:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;

    iget-object p0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->session:Landroid/app/smartspace/SmartspaceSession;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/smartspace/SmartspaceSession;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    :goto_0
    return-void
.end method
