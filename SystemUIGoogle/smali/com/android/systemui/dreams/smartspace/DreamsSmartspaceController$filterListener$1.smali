.class public final Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$filterListener$1;
.super Ljava/lang/Object;
.source "DreamsSmartspaceController.kt"

# interfaces
.implements Lcom/android/systemui/smartspace/SmartspaceTargetFilter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;-><init>(Landroid/content/Context;Landroid/app/smartspace/SmartspaceManager;Lcom/android/systemui/util/concurrency/Execution;Ljava/util/concurrent/Executor;Lcom/android/systemui/smartspace/dagger/SmartspaceViewComponent$Factory;Lcom/android/systemui/smartspace/SmartspacePrecondition;Ljava/util/Optional;Ljava/util/Optional;)V
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

    iput-object p1, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$filterListener$1;->this$0:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCriteriaChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$filterListener$1;->this$0:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;

    iget-object p0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->session:Landroid/app/smartspace/SmartspaceSession;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceSession;->requestSmartspaceUpdate()V

    :goto_0
    return-void
.end method
