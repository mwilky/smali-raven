.class public final synthetic Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewController;

    return-void
.end method


# virtual methods
.method public final onSmartspaceTargetsUpdated(Ljava/util/List;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/dreams/complication/DreamWeatherComplication$DreamWeatherViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda9;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
