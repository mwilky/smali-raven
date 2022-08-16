.class public final Lcom/google/android/systemui/communal/dock/callbacks/mediashell/dagger/MediaShellModule_ProvidesComplicationLayoutParamsFactory;
.super Ljava/lang/Object;
.source "MediaShellModule_ProvidesComplicationLayoutParamsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/communal/dock/callbacks/mediashell/dagger/MediaShellModule_ProvidesComplicationLayoutParamsFactory$InstanceHolder;
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

    const/4 v0, -0x2

    const/4 v1, 0x6

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;-><init>(IIII)V

    return-object p0
.end method
