.class public final synthetic Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/hardware/broadcastradio/V2_0/ProgramFilter;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/broadcastradio/V2_0/ProgramFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda11;->f$0:Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda11;->f$0:Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    check-cast p1, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/hal2/Convert;->$r8$lambda$Kq5ISKTfWPKegE_SsSFu2AJN9sk(Landroid/hardware/broadcastradio/V2_0/ProgramFilter;Landroid/hardware/radio/ProgramSelector$Identifier;)V

    return-void
.end method
