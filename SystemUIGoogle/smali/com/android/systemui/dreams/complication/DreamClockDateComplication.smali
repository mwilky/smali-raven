.class public final Lcom/android/systemui/dreams/complication/DreamClockDateComplication;
.super Ljava/lang/Object;
.source "DreamClockDateComplication.java"

# interfaces
.implements Lcom/android/systemui/dreams/complication/Complication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/dreams/complication/DreamClockDateComplication$DreamClockDateViewHolder;,
        Lcom/android/systemui/dreams/complication/DreamClockDateComplication$Registrant;
    }
.end annotation


# instance fields
.field public final mDreamClockDateViewHolderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dreams/complication/DreamClockDateComplication$DreamClockDateViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dreams/complication/DreamClockDateComplication$DreamClockDateViewHolder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/complication/DreamClockDateComplication;->mDreamClockDateViewHolderProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final createView(Lcom/android/systemui/dreams/complication/ComplicationViewModel;)Lcom/android/systemui/dreams/complication/Complication$ViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/DreamClockDateComplication;->mDreamClockDateViewHolderProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dreams/complication/Complication$ViewHolder;

    return-object p0
.end method

.method public final getRequiredTypeAvailability()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
