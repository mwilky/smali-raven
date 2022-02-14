.class public final synthetic Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:[Landroid/window/ITaskFragmentOrganizer;


# direct methods
.method public synthetic constructor <init>([Landroid/window/ITaskFragmentOrganizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda1;->f$0:[Landroid/window/ITaskFragmentOrganizer;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda1;->f$0:[Landroid/window/ITaskFragmentOrganizer;

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-static {v0, p1}, Lcom/android/server/wm/AppTransitionController;->lambda$findTaskFragmentOrganizerForAllWindows$0([Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
