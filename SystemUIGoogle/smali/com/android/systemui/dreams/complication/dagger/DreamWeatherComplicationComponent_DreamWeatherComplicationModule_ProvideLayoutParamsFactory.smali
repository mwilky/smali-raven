.class public final Lcom/android/systemui/dreams/complication/dagger/DreamWeatherComplicationComponent_DreamWeatherComplicationModule_ProvideLayoutParamsFactory;
.super Ljava/lang/Object;
.source "DreamWeatherComplicationComponent_DreamWeatherComplicationModule_ProvideLayoutParamsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/dreams/complication/dagger/DreamWeatherComplicationComponent_DreamWeatherComplicationModule_ProvideLayoutParamsFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    new-instance p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;-><init>(IIII)V

    return-object p0
.end method
