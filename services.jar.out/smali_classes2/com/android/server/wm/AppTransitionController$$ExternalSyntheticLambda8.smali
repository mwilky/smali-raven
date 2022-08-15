.class public final synthetic Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/Task;

    invoke-static {p0}, Lcom/android/server/wm/AppTransitionController;->$r8$lambda$_95gHoWp4fivrJRh9ljsXFryhYo(Lcom/android/server/wm/Task;)V

    return-void
.end method
