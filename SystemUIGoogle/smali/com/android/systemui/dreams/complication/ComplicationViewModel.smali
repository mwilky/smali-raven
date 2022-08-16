.class public final Lcom/android/systemui/dreams/complication/ComplicationViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "ComplicationViewModel.java"


# instance fields
.field public final mComplication:Lcom/android/systemui/dreams/complication/Complication;

.field public final mHost:Lcom/android/systemui/dreams/complication/Complication$Host;

.field public final mId:Lcom/android/systemui/dreams/complication/ComplicationId;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/complication/Complication;Lcom/android/systemui/dreams/complication/ComplicationId;Lcom/android/systemui/dreams/complication/Complication$Host;)V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/complication/ComplicationViewModel;->mComplication:Lcom/android/systemui/dreams/complication/Complication;

    iput-object p2, p0, Lcom/android/systemui/dreams/complication/ComplicationViewModel;->mId:Lcom/android/systemui/dreams/complication/ComplicationId;

    iput-object p3, p0, Lcom/android/systemui/dreams/complication/ComplicationViewModel;->mHost:Lcom/android/systemui/dreams/complication/Complication$Host;

    return-void
.end method
