.class public final synthetic Lcom/android/systemui/dreams/complication/ComplicationHostViewController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/dreams/complication/ComplicationHostViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/complication/ComplicationHostViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/dreams/complication/ComplicationHostViewController;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/dreams/complication/ComplicationHostViewController;

    check-cast p1, Lcom/android/systemui/dreams/complication/ComplicationViewModel;

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController;->mComplications:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/android/systemui/dreams/complication/ComplicationViewModel;->mId:Lcom/android/systemui/dreams/complication/ComplicationId;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
