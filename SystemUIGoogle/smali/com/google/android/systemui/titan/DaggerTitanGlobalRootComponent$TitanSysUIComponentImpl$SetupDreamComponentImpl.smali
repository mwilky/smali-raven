.class public final Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$SetupDreamComponentImpl;
.super Ljava/lang/Object;
.source "DaggerTitanGlobalRootComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SetupDreamComponentImpl"
.end annotation


# instance fields
.field public final model:Lcom/android/systemui/dreams/complication/ComplicationViewModel;

.field public final synthetic this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;Lcom/android/systemui/dreams/complication/ComplicationViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$SetupDreamComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$SetupDreamComponentImpl;->model:Lcom/android/systemui/dreams/complication/ComplicationViewModel;

    return-void
.end method


# virtual methods
.method public final getViewHolder()Lcom/google/android/systemui/communal/dreams/SetupDreamComplication$SetupDreamViewHolder;
    .locals 7

    iget-object v0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$SetupDreamComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    invoke-virtual {v0}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->namedView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;

    const/4 v0, 0x0

    const/16 v1, 0x9

    const/4 v4, 0x2

    invoke-direct {v3, v0, v1, v4, v0}, Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;-><init>(IIII)V

    iget-object v4, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$SetupDreamComponentImpl;->model:Lcom/android/systemui/dreams/complication/ComplicationViewModel;

    iget-object v0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$SetupDreamComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    invoke-virtual {v0}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->namedIntent()Landroid/content/Intent;

    move-result-object v5

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$SetupDreamComponentImpl;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;->broadcastSenderProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/broadcast/BroadcastSender;

    new-instance p0, Lcom/google/android/systemui/communal/dreams/SetupDreamComplication$SetupDreamViewHolder;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/communal/dreams/SetupDreamComplication$SetupDreamViewHolder;-><init>(Landroid/view/View;Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;Lcom/android/systemui/dreams/complication/ComplicationViewModel;Landroid/content/Intent;Lcom/android/systemui/broadcast/BroadcastSender;)V

    return-object p0
.end method
