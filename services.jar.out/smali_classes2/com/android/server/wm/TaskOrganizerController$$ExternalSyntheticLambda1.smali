.class public final synthetic Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskOrganizerController;

.field public final synthetic f$1:Landroid/window/ITaskOrganizer;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TaskOrganizerController;

    iput-object p2, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;->f$1:Landroid/window/ITaskOrganizer;

    iput p3, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TaskOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;->f$1:Landroid/window/ITaskOrganizer;

    iget v2, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController$$ExternalSyntheticLambda1;->f$3:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/TaskOrganizerController;->lambda$registerTaskOrganizer$1$TaskOrganizerController(Landroid/window/ITaskOrganizer;ILjava/util/ArrayList;)V

    return-void
.end method
