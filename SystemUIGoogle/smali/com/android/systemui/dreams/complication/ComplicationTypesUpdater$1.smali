.class public final Lcom/android/systemui/dreams/complication/ComplicationTypesUpdater$1;
.super Landroid/database/ContentObserver;
.source "ComplicationTypesUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/dreams/complication/ComplicationTypesUpdater;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/complication/ComplicationTypesUpdater;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/complication/ComplicationTypesUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dreams/complication/ComplicationTypesUpdater$1;->this$0:Lcom/android/systemui/dreams/complication/ComplicationTypesUpdater;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/dreams/complication/ComplicationTypesUpdater$1;->this$0:Lcom/android/systemui/dreams/complication/ComplicationTypesUpdater;

    iget-object p1, p1, Lcom/android/systemui/dreams/complication/ComplicationTypesUpdater;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda5;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
