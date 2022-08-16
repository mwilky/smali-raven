.class public final Lcom/google/android/systemui/communal/dreams/SetupDreamComplication$SetupDreamViewHolder;
.super Ljava/lang/Object;
.source "SetupDreamComplication.java"

# interfaces
.implements Lcom/android/systemui/dreams/complication/Complication$ViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/communal/dreams/SetupDreamComplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupDreamViewHolder"
.end annotation


# instance fields
.field public final mComplicationLayoutParams:Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;Lcom/android/systemui/dreams/complication/ComplicationViewModel;Landroid/content/Intent;Lcom/android/systemui/broadcast/BroadcastSender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/communal/dreams/SetupDreamComplication$SetupDreamViewHolder;->mView:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/systemui/communal/dreams/SetupDreamComplication$SetupDreamViewHolder;->mComplicationLayoutParams:Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;

    new-instance p0, Lcom/google/android/systemui/communal/dreams/SetupDreamComplication$SetupDreamViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p0, p3, p5, p4}, Lcom/google/android/systemui/communal/dreams/SetupDreamComplication$SetupDreamViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/complication/ComplicationViewModel;Lcom/android/systemui/broadcast/BroadcastSender;Landroid/content/Intent;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final getLayoutParams()Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/communal/dreams/SetupDreamComplication$SetupDreamViewHolder;->mComplicationLayoutParams:Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/communal/dreams/SetupDreamComplication$SetupDreamViewHolder;->mView:Landroid/view/View;

    return-object p0
.end method
