.class public final Lcom/android/systemui/media/dream/dagger/MediaComplicationComponent_MediaComplicationModule_ProvideLayoutParamsFactory;
.super Ljava/lang/Object;
.source "MediaComplicationComponent_MediaComplicationModule_ProvideLayoutParamsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/dream/dagger/MediaComplicationComponent_MediaComplicationModule_ProvideLayoutParamsFactory$InstanceHolder;
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
    .locals 6

    new-instance p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;-><init>(IIIIZ)V

    return-object p0
.end method
