.class public final synthetic Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda2;->f$0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda2;->f$0:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;->$r8$lambda$v_R6BnaUVOKoBATmLce1e86X9wU(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;)V

    return-void
.end method
