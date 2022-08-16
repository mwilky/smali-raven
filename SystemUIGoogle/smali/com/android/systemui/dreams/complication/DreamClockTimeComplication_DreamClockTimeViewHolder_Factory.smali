.class public final Lcom/android/systemui/dreams/complication/DreamClockTimeComplication_DreamClockTimeViewHolder_Factory;
.super Ljava/lang/Object;
.source "DreamClockTimeComplication_DreamClockTimeViewHolder_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/dreams/complication/DreamClockTimeComplication$DreamClockTimeViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final layoutParamsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field public final viewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/dreams/complication/dagger/DreamClockTimeComplicationModule_ProvideLayoutParamsFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/dreams/complication/dagger/DreamClockTimeComplicationModule_ProvideLayoutParamsFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/complication/DreamClockTimeComplication_DreamClockTimeViewHolder_Factory;->viewProvider:Ljavax/inject/Provider;

    iput-object v0, p0, Lcom/android/systemui/dreams/complication/DreamClockTimeComplication_DreamClockTimeViewHolder_Factory;->layoutParamsProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/dreams/complication/DreamClockTimeComplication_DreamClockTimeViewHolder_Factory;->viewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/DreamClockTimeComplication_DreamClockTimeViewHolder_Factory;->layoutParamsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;

    new-instance v1, Lcom/android/systemui/dreams/complication/DreamClockTimeComplication$DreamClockTimeViewHolder;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/dreams/complication/DreamClockTimeComplication$DreamClockTimeViewHolder;-><init>(Landroid/view/View;Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;)V

    return-object v1
.end method
