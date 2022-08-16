.class public final synthetic Lcom/google/android/systemui/communal/dreams/SetupDreamComplication$SetupDreamViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/dreams/complication/ComplicationViewModel;

.field public final synthetic f$1:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final synthetic f$2:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/complication/ComplicationViewModel;Lcom/android/systemui/broadcast/BroadcastSender;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/communal/dreams/SetupDreamComplication$SetupDreamViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/dreams/complication/ComplicationViewModel;

    iput-object p2, p0, Lcom/google/android/systemui/communal/dreams/SetupDreamComplication$SetupDreamViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/broadcast/BroadcastSender;

    iput-object p3, p0, Lcom/google/android/systemui/communal/dreams/SetupDreamComplication$SetupDreamViewHolder$$ExternalSyntheticLambda0;->f$2:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/communal/dreams/SetupDreamComplication$SetupDreamViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/dreams/complication/ComplicationViewModel;

    iget-object v0, p0, Lcom/google/android/systemui/communal/dreams/SetupDreamComplication$SetupDreamViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/broadcast/BroadcastSender;

    iget-object p0, p0, Lcom/google/android/systemui/communal/dreams/SetupDreamComplication$SetupDreamViewHolder$$ExternalSyntheticLambda0;->f$2:Landroid/content/Intent;

    iget-object p1, p1, Lcom/android/systemui/dreams/complication/ComplicationViewModel;->mHost:Lcom/android/systemui/dreams/complication/Complication$Host;

    invoke-interface {p1}, Lcom/android/systemui/dreams/complication/Complication$Host;->requestExitDream()V

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastSender;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
