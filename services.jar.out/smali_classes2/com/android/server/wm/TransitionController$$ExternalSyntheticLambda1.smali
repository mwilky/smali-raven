.class public final synthetic Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Transition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Transition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/Transition;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/Transition;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {p0, p1}, Lcom/android/server/wm/TransitionController;->$r8$lambda$dt7_WyY2R9K_PmgovbX1mlWGjKM(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;)V

    return-void
.end method
