.class public final Lcom/google/android/systemui/communal/dreams/SetupDreamComplication;
.super Ljava/lang/Object;
.source "SetupDreamComplication.java"

# interfaces
.implements Lcom/android/systemui/dreams/complication/Complication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/communal/dreams/SetupDreamComplication$SetupDreamViewHolder;
    }
.end annotation


# instance fields
.field public final mComponentFactory:Lcom/google/android/systemui/communal/dreams/dagger/SetupDreamComponent$Factory;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/communal/dreams/dagger/SetupDreamComponent$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/communal/dreams/SetupDreamComplication;->mComponentFactory:Lcom/google/android/systemui/communal/dreams/dagger/SetupDreamComponent$Factory;

    return-void
.end method


# virtual methods
.method public final createView(Lcom/android/systemui/dreams/complication/ComplicationViewModel;)Lcom/android/systemui/dreams/complication/Complication$ViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/communal/dreams/SetupDreamComplication;->mComponentFactory:Lcom/google/android/systemui/communal/dreams/dagger/SetupDreamComponent$Factory;

    invoke-interface {p0, p1}, Lcom/google/android/systemui/communal/dreams/dagger/SetupDreamComponent$Factory;->create(Lcom/android/systemui/dreams/complication/ComplicationViewModel;)Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$SetupDreamComponentImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$SetupDreamComponentImpl;->getViewHolder()Lcom/google/android/systemui/communal/dreams/SetupDreamComplication$SetupDreamViewHolder;

    move-result-object p0

    return-object p0
.end method
