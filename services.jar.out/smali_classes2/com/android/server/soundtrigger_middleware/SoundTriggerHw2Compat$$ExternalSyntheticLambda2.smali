.class public final synthetic Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder$DeathRecipient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda2;->f$0:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method


# virtual methods
.method public final serviceDied(J)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat$$ExternalSyntheticLambda2;->f$0:Landroid/os/IBinder$DeathRecipient;

    invoke-static {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->$r8$lambda$GiWbjVDEP-qQIC2AixehoJHqp-Q(Landroid/os/IBinder$DeathRecipient;J)V

    return-void
.end method
