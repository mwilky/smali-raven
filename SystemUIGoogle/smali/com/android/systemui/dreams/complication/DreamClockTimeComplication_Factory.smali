.class public final Lcom/android/systemui/dreams/complication/DreamClockTimeComplication_Factory;
.super Ljava/lang/Object;
.source "DreamClockTimeComplication_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/dreams/complication/DreamClockTimeComplication;",
        ">;"
    }
.end annotation


# instance fields
.field public final dreamClockTimeViewHolderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dreams/complication/DreamClockTimeComplication$DreamClockTimeViewHolder;",
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
            "Lcom/android/systemui/dreams/complication/DreamClockTimeComplication$DreamClockTimeViewHolder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/complication/DreamClockTimeComplication_Factory;->dreamClockTimeViewHolderProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/DreamClockTimeComplication_Factory;->dreamClockTimeViewHolderProvider:Ljavax/inject/Provider;

    new-instance v0, Lcom/android/systemui/dreams/complication/DreamClockTimeComplication;

    invoke-direct {v0, p0}, Lcom/android/systemui/dreams/complication/DreamClockTimeComplication;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method
