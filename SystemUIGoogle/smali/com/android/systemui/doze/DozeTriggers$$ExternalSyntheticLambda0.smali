.class public final synthetic Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:F

.field public final synthetic f$5:F

.field public final synthetic f$6:Z

.field public final synthetic f$7:Z

.field public final synthetic f$8:[F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;IZZFFZZ[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iput p2, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$1:I

    iput-boolean p3, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$2:Z

    iput-boolean p4, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$3:Z

    iput p5, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$4:F

    iput p6, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$5:F

    iput-boolean p7, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$6:Z

    iput-boolean p8, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$7:Z

    iput-object p9, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$8:[F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iget v2, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean v3, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$2:Z

    iget-boolean v4, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$3:Z

    iget v5, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$4:F

    iget v6, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$5:F

    iget-boolean v7, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$6:Z

    iget-boolean v8, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$7:Z

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$8:[F

    check-cast p1, Ljava/lang/Boolean;

    const-string v9, "DozeLog"

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, v1, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object p1, Lcom/android/systemui/doze/DozeLogger$logSensorEventDropped$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logSensorEventDropped$2;

    invoke-virtual {p0, v9, v0, p1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object p1

    iput v2, p1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    const-string/jumbo v0, "prox reporting near"

    iput-object v0, p1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    goto :goto_1

    :cond_0
    if-nez v3, :cond_7

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_3

    iget-object p0, v1, Lcom/android/systemui/doze/DozeTriggers;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isOccluded()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v1, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object p1, Lcom/android/systemui/doze/DozeLogger$logSensorEventDropped$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logSensorEventDropped$2;

    invoke-virtual {p0, v9, v0, p1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object p1

    iput v2, p1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    const-string v0, "keyguard occluded"

    iput-object v0, p1, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v2}, Lcom/android/systemui/doze/DozeTriggers;->gentleWakeUp(I)V

    goto :goto_1

    :cond_3
    if-eqz v8, :cond_6

    iget-object p1, v1, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v0, :cond_5

    :cond_4
    new-instance p1, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda7;

    invoke-direct {p1, v1, v5, v6, p0}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/doze/DozeTriggers;FF[F)V

    iput-object p1, v1, Lcom/android/systemui/doze/DozeTriggers;->mAodInterruptRunnable:Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda7;

    :cond_5
    const/16 p0, 0xa

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {v1, p0, p1, v0}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLcom/android/systemui/util/condition/Monitor$$ExternalSyntheticLambda1;)V

    goto :goto_1

    :cond_6
    iget-object p0, v1, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p0, v2}, Lcom/android/systemui/doze/DozeHost;->extendPulse(I)V

    goto :goto_1

    :cond_7
    :goto_0
    const/high16 p0, -0x40800000    # -1.0f

    cmpl-float p1, v5, p0

    if-eqz p1, :cond_8

    cmpl-float p0, v6, p0

    if-eqz p0, :cond_8

    iget-object p0, v1, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p0, v5, v6}, Lcom/android/systemui/doze/DozeHost;->onSlpiTap(FF)V

    :cond_8
    invoke-virtual {v1, v2}, Lcom/android/systemui/doze/DozeTriggers;->gentleWakeUp(I)V

    :goto_1
    return-void
.end method
