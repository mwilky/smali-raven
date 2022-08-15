.class public final synthetic Lcom/android/server/power/InattentiveSleepWarningController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/InattentiveSleepWarningController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/InattentiveSleepWarningController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/InattentiveSleepWarningController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/InattentiveSleepWarningController;

    iput-boolean p2, p0, Lcom/android/server/power/InattentiveSleepWarningController$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/InattentiveSleepWarningController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/InattentiveSleepWarningController;

    iget-boolean p0, p0, Lcom/android/server/power/InattentiveSleepWarningController$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/server/power/InattentiveSleepWarningController;->$r8$lambda$MgsCyrP4jeDbkqDflWs-QQ3Ghgw(Lcom/android/server/power/InattentiveSleepWarningController;Z)V

    return-void
.end method
