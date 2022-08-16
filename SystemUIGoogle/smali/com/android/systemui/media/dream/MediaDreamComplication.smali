.class public final Lcom/android/systemui/media/dream/MediaDreamComplication;
.super Ljava/lang/Object;
.source "MediaDreamComplication.java"

# interfaces
.implements Lcom/android/systemui/dreams/complication/Complication;


# instance fields
.field public mComponentFactory:Lcom/android/systemui/media/dream/dagger/MediaComplicationComponent$Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/dream/dagger/MediaComplicationComponent$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/dream/MediaDreamComplication;->mComponentFactory:Lcom/android/systemui/media/dream/dagger/MediaComplicationComponent$Factory;

    return-void
.end method


# virtual methods
.method public final createView(Lcom/android/systemui/dreams/complication/ComplicationViewModel;)Lcom/android/systemui/dreams/complication/Complication$ViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/dream/MediaDreamComplication;->mComponentFactory:Lcom/android/systemui/media/dream/dagger/MediaComplicationComponent$Factory;

    invoke-interface {p0}, Lcom/android/systemui/media/dream/dagger/MediaComplicationComponent$Factory;->create()Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$MediaComplicationComponentImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$MediaComplicationComponentImpl;->getViewHolder()Lcom/android/systemui/media/dream/MediaViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public final getRequiredTypeAvailability()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method
