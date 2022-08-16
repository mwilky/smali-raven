.class public final Lcom/android/systemui/dreams/complication/DreamClockDateComplication$DreamClockDateViewHolder;
.super Ljava/lang/Object;
.source "DreamClockDateComplication.java"

# interfaces
.implements Lcom/android/systemui/dreams/complication/Complication$ViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dreams/complication/DreamClockDateComplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DreamClockDateViewHolder"
.end annotation


# instance fields
.field public final mLayoutParams:Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/complication/DreamClockDateComplication$DreamClockDateViewHolder;->mView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/dreams/complication/DreamClockDateComplication$DreamClockDateViewHolder;->mLayoutParams:Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;

    return-void
.end method


# virtual methods
.method public final getLayoutParams()Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/DreamClockDateComplication$DreamClockDateViewHolder;->mLayoutParams:Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/DreamClockDateComplication$DreamClockDateViewHolder;->mView:Landroid/view/View;

    return-object p0
.end method
