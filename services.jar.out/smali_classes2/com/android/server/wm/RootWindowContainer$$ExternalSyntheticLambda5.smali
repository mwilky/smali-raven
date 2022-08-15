.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method public synthetic constructor <init>(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;->f$0:Landroid/service/voice/IVoiceInteractionSession;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda5;->f$0:Landroid/service/voice/IVoiceInteractionSession;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->$r8$lambda$ZOg5-AYOXr3mRdM1O0kUTsphK6M(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/server/wm/Task;)V

    return-void
.end method
