.class public final Lcom/android/systemui/dreams/complication/DreamWeatherComplication;
.super Ljava/lang/Object;
.source "DreamWeatherComplication.java"

# interfaces
.implements Lcom/android/systemui/dreams/complication/Complication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewController;,
        Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewHolder;,
        Lcom/android/systemui/dreams/complication/DreamWeatherComplication$Registrant;
    }
.end annotation


# instance fields
.field public mComponentFactory:Lcom/android/systemui/dreams/complication/dagger/DreamWeatherComplicationComponent$Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/complication/dagger/DreamWeatherComplicationComponent$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/complication/DreamWeatherComplication;->mComponentFactory:Lcom/android/systemui/dreams/complication/dagger/DreamWeatherComplicationComponent$Factory;

    return-void
.end method


# virtual methods
.method public final createView(Lcom/android/systemui/dreams/complication/ComplicationViewModel;)Lcom/android/systemui/dreams/complication/Complication$ViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/DreamWeatherComplication;->mComponentFactory:Lcom/android/systemui/dreams/complication/dagger/DreamWeatherComplicationComponent$Factory;

    invoke-interface {p0}, Lcom/android/systemui/dreams/complication/dagger/DreamWeatherComplicationComponent$Factory;->create()Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DreamWeatherComplicationComponentImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$DreamWeatherComplicationComponentImpl;->getViewHolder()Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public final getRequiredTypeAvailability()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method
