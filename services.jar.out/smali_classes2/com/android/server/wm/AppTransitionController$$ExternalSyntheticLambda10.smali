.class public final synthetic Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:[Landroid/window/ITaskFragmentOrganizer;


# direct methods
.method public synthetic constructor <init>([Landroid/window/ITaskFragmentOrganizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda10;->f$0:[Landroid/window/ITaskFragmentOrganizer;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda10;->f$0:[Landroid/window/ITaskFragmentOrganizer;

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-static {p0, p1}, Lcom/android/server/wm/AppTransitionController;->$r8$lambda$5tos31X2YKuzamqqcPd9wobK-64([Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)Z

    move-result p0

    return p0
.end method
