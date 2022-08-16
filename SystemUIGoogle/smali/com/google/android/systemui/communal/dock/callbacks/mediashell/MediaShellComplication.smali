.class public final Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellComplication;
.super Ljava/lang/Object;
.source "MediaShellComplication.java"

# interfaces
.implements Lcom/android/systemui/dreams/complication/Complication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellComplication$MediaShellComplicationViewHolder;
    }
.end annotation


# instance fields
.field public final mCastDeviceName:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mLayoutParams:Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellComplication;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellComplication;->mCastDeviceName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellComplication;->mLayoutParams:Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;

    return-void
.end method


# virtual methods
.method public final createView(Lcom/android/systemui/dreams/complication/ComplicationViewModel;)Lcom/android/systemui/dreams/complication/Complication$ViewHolder;
    .locals 2

    iget-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellComplication;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e0140

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b03fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellComplication;->mCastDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellComplication$MediaShellComplicationViewHolder;

    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellComplication;->mLayoutParams:Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;

    invoke-direct {v0, p1, p0}, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellComplication$MediaShellComplicationViewHolder;-><init>(Landroid/view/View;Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;)V

    return-object v0
.end method

.method public final getRequiredTypeAvailability()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method
