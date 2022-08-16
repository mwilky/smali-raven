.class public final Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewHolder;
.super Ljava/lang/Object;
.source "DreamWeatherComplication.java"

# interfaces
.implements Lcom/android/systemui/dreams/complication/Complication$ViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dreams/complication/DreamWeatherComplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DreamWeatherViewHolder"
.end annotation


# instance fields
.field public final mLayoutParams:Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;

.field public final mView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewController;Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewHolder;->mView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewHolder;->mLayoutParams:Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;

    invoke-virtual {p2}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method


# virtual methods
.method public final getLayoutParams()Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewHolder;->mLayoutParams:Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewHolder;->mView:Landroid/widget/TextView;

    return-object p0
.end method
