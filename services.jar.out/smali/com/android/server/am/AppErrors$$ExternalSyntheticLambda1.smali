.class public final synthetic Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppErrors;

.field public final synthetic f$1:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppErrors;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/AppErrors;

    iput-object p2, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/am/ProcessRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/AppErrors;

    iget-object v1, p0, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrors;->lambda$scheduleAppCrashLocked$0$AppErrors(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method
